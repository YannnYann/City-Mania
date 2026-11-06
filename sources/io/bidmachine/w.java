package io.bidmachine;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class w {
    public static final Map a = new ConcurrentHashMap();

    public static void a(Context context) {
        String[] list;
        if (a.isEmpty()) {
            try {
                AssetManager assets = context.getAssets();
                if (assets != null && (list = assets.list("bm_networks")) != null) {
                    for (String str : list) {
                        b(assets, str);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static Map b(Context context) {
        Map map = a;
        if (!map.isEmpty()) {
            return map;
        }
        a(context);
        return map;
    }

    public static String c(AssetManager assetManager, String str) {
        try {
            return Utils.streamToString(assetManager.open("bm_networks/" + str));
        } catch (Throwable th) {
            Logger.w(th);
            return null;
        }
    }

    public static x b(AssetManager assetManager, String str) {
        x xVarA = a(assetManager, str);
        if (xVarA != null) {
            a.put(xVarA.c(), xVarA);
        }
        return xVarA;
    }

    public static x a(Context context, String str) {
        Map map = a;
        if (map.containsKey(str)) {
            return (x) map.get(str);
        }
        try {
            AssetManager assets = context.getAssets();
            if (assets == null) {
                return null;
            }
            return b(assets, str + ".bmnetwork");
        } catch (Exception unused) {
            return null;
        }
    }

    public static x a(AssetManager assetManager, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String strC = c(assetManager, str);
            if (TextUtils.isEmpty(strC)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strC);
            String strOptString = jSONObject.optString("name");
            String strOptString2 = jSONObject.optString("version");
            String strOptString3 = jSONObject.optString("classpath");
            String strOptString4 = jSONObject.optString("sdk_version");
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3) && !TextUtils.isEmpty(strOptString4)) {
                return new x(strOptString, strOptString2, strOptString3, strOptString4);
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
