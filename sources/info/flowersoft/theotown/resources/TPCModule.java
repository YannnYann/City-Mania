package info.flowersoft.theotown.resources;

import com.badlogic.gdx.utils.Base64Coder;
import com.ironsource.R6;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class TPCModule {
    public static TPCModule instance;
    public Set<String> trustedKeys;
    public Set<String> trustedUsers;

    public int getUserTrustLevel(long j) {
        if (j <= 0) {
            return 0;
        }
        if (this.trustedUsers == null) {
            this.trustedUsers = readKeys("tpus");
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
            byteArrayOutputStream.write(48);
            byteArrayOutputStream.write(58);
            byteArrayOutputStream.write(Hashing.sha(("7w3egQelzCHqyDO9sWbxEE6EKLgUXBnH:user:" + j).getBytes()));
            if (this.trustedUsers.contains(new String(Base64Coder.encode(byteArrayOutputStream.toByteArray())))) {
                return (j == 15 || j == 1880 || j == 1855) ? 2 : 1;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public boolean isTrusted(String str) {
        if (str != null && !str.isEmpty()) {
            if (this.trustedKeys == null) {
                this.trustedKeys = readKeys("trusted keys");
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byteArrayOutputStream.write(Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
                byteArrayOutputStream.write(50);
                byteArrayOutputStream.write(58);
                byteArrayOutputStream.write(Hashing.sha(("F8CE16993D646545CE673FC51A2DC:" + str).getBytes()));
                if (this.trustedKeys.contains(new String(Base64Coder.encode(byteArrayOutputStream.toByteArray())))) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static TPCModule getInstance() {
        if (instance == null) {
            instance = new TPCModule();
        }
        return instance;
    }

    public final synchronized Set<String> readKeys(String str) {
        HashSet hashSet;
        hashSet = new HashSet();
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject(R6.L);
        if (jSONObjectOptJSONObject != null) {
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(str);
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optString(i);
                if (strOptString != null && !strOptString.equals("null")) {
                    hashSet.add(strOptString);
                }
            }
        }
        return hashSet;
    }

    public int getCurrentUserTrustLevel() {
        User user = Backend.getInstance().getUser();
        if (user.isValid()) {
            return getInstance().getUserTrustLevel(user.getForumId());
        }
        return 0;
    }
}
