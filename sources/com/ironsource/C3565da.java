package com.ironsource;

import com.ironsource.C3855t8;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3565da {
    static String a = "ManRewInst_";

    public static String a(JSONObject jSONObject) {
        if (!jSONObject.optBoolean("rewarded")) {
            return jSONObject.optString("name");
        }
        return a + jSONObject.optString("name");
    }

    public static String b() {
        return UUID.randomUUID().toString();
    }

    public static String a() {
        return String.valueOf(System.currentTimeMillis());
    }

    public static String a(R9 r9) {
        if (r9.i()) {
            return C3855t8.e.Banner.toString();
        }
        if (r9.n()) {
            return C3855t8.e.RewardedVideo.toString();
        }
        return C3855t8.e.Interstitial.toString();
    }
}
