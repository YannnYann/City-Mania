package io.bidmachine.internal;

import io.bidmachine.util.version.Version;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class T {
    public static final a a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final JSONArray a(List versionMilestoneList) {
        Intrinsics.checkNotNullParameter(versionMilestoneList, "versionMilestoneList");
        JSONArray jSONArray = new JSONArray();
        Iterator it = versionMilestoneList.iterator();
        while (it.hasNext()) {
            jSONArray.put(a((S) it.next()));
        }
        return jSONArray;
    }

    public final JSONObject a(S versionMilestone) throws JSONException {
        Intrinsics.checkNotNullParameter(versionMilestone, "versionMilestone");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ver", versionMilestone.f().toString());
        jSONObject.put("scn", versionMilestone.e());
        jSONObject.put("fst", versionMilestone.b());
        jSONObject.put("lst", versionMilestone.d());
        jSONObject.put("csd", versionMilestone.a());
        jSONObject.put("lsd", versionMilestone.c());
        return jSONObject;
    }

    public final List a(JSONArray jsonArray) {
        S sA;
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jsonArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jsonArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && (sA = a(jSONObjectOptJSONObject)) != null) {
                arrayList.add(sA);
            }
        }
        return CollectionsKt___CollectionsKt.toList(arrayList);
    }

    public final S a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        try {
            Version version = Version.Companion.parseVersion(jsonObject.getString("ver"));
            if (version != null) {
                return new S(version, jsonObject.getInt("scn"), jsonObject.getLong("fst"), jsonObject.getLong("lst"), jsonObject.getLong("csd"), jsonObject.getLong("lsd"));
            }
            throw new IllegalArgumentException("Required value was null.");
        } catch (Throwable unused) {
            return null;
        }
    }
}
