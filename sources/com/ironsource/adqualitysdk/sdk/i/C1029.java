package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1029 extends AbstractC0618 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3866 = StringFog.decrypt("5hm5\n", "g23NW1BQbxU=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3865 = StringFog.decrypt("SuBnYQ==\n", "L5QTErtyvxc=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f3864 = StringFog.decrypt("6D6x01eQ\n", "nEzQuiPjUeA=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m1602() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optString(f3866);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m1603() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optJSONObject(f3864);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONArray m1604() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optJSONArray(f3865);
    }
}
