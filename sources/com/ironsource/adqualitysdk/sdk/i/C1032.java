package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1032 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f3905 = StringFog.decrypt("0wAbkUgV7Ez3Og+aWAn/TukADJFJ\n", "h2l29DthjSE=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final int f3906;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public long f3907;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public long f3908;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public long f3909;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public long f3910;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Boolean f3911 = null;

    public C1032(int i) {
        this.f3906 = i;
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        C0148 c0148 = new C0148(this);
        C0893 c0893 = (C0893) abstractC0885M1491;
        Handler handler = c0893.f3421;
        if (handler != null) {
            handler.post(new C0902(c0893, c0148));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1605(JSONObject jSONObject) {
        boolean z;
        long jOptLong;
        try {
            if (jSONObject.optInt(StringFog.decrypt("CaUI\n", "esxsfwMyG6o=\n"), 1) == this.f3906 || Math.abs((this.f3909 - this.f3910) - (jSONObject.optLong(StringFog.decrypt("f0/D\n", "GzuwGEEUrl0=\n")) - jSONObject.optLong(StringFog.decrypt("9wM=\n", "gnes0CQi6/g=\n")))) <= 10) {
                long jOptLong2 = jSONObject.optLong(StringFog.decrypt("LFM=\n", "WSfgT2QFni4=\n")) + this.f3908;
                jSONObject.put(StringFog.decrypt("xZVH\n", "sOEonM4IVnc=\n"), this.f3908);
                z = true;
                jOptLong = jOptLong2;
            } else {
                jOptLong = jSONObject.optLong(StringFog.decrypt("wbup\n", "pc/ajNblieU=\n")) + this.f3907;
                jSONObject.put(StringFog.decrypt("oX+/\n", "1QzQEQIJjqg=\n"), this.f3907);
                z = false;
            }
            jSONObject.put(AbstractC0047.f625, jOptLong);
            if (!this.f3911.booleanValue()) {
                jSONObject.put(StringFog.decrypt("Dex4\n", "eZ8LWbs09uA=\n"), false);
            }
            m1606(jSONObject, z);
            m1607(jSONObject, z);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1608(JSONObject jSONObject) {
        if (!jSONObject.has(StringFog.decrypt("nCB+\n", "6VQROkfirok=\n")) && !jSONObject.has(StringFog.decrypt("PBgc\n", "SGtztpq9Viw=\n")) && this.f3911 != null) {
            try {
                m1605(jSONObject);
                return true;
            } catch (Exception e) {
                AbstractC1003.m1592(f3905, StringFog.decrypt("Rev5Ent9KBVu+uMPZjMyFmn37F1sKz4CdA==\n", "AJmLfQldW2w=\n"), (Throwable) e, false);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1607(org.json.JSONObject r5, boolean r6) {
        /*
            r4 = this;
            java.lang.String r0 = "xEF5dfi4qVDA\n"
            java.lang.String r1 = "qCAKAazX3DM=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)     // Catch: org.json.JSONException -> L50
            org.json.JSONObject r5 = r5.optJSONObject(r0)     // Catch: org.json.JSONException -> L50
            if (r5 == 0) goto L50
            r0 = 0
            if (r6 == 0) goto L2a
            java.lang.String r6 = "JA==\n"
            java.lang.String r2 = "UaKr8SU8Hko=\n"
            java.lang.String r6 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r6, r2)     // Catch: org.json.JSONException -> L50
            long r2 = r5.optLong(r6)     // Catch: org.json.JSONException -> L50
            int r6 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r6 <= 0) goto L42
            long r0 = r4.f3908     // Catch: org.json.JSONException -> L50
            long r2 = r2 + r0
            java.lang.Long r6 = java.lang.Long.valueOf(r2)     // Catch: org.json.JSONException -> L50
            goto L43
        L2a:
            java.lang.String r6 = "3A==\n"
            java.lang.String r2 = "qLiZZce/ujQ=\n"
            java.lang.String r6 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r6, r2)     // Catch: org.json.JSONException -> L50
            long r2 = r5.optLong(r6)     // Catch: org.json.JSONException -> L50
            int r6 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r6 <= 0) goto L42
            long r0 = r4.f3907     // Catch: org.json.JSONException -> L50
            long r2 = r2 + r0
            java.lang.Long r6 = java.lang.Long.valueOf(r2)     // Catch: org.json.JSONException -> L50
            goto L43
        L42:
            r6 = 0
        L43:
            if (r6 == 0) goto L50
            java.lang.String r0 = "mA==\n"
            java.lang.String r1 = "7KmudrAQaXs=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)     // Catch: org.json.JSONException -> L50
            r5.put(r0, r6)     // Catch: org.json.JSONException -> L50
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C1032.m1607(org.json.JSONObject, boolean):void");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1606(JSONObject jSONObject, boolean z) {
        long jOptLong;
        long j;
        if (jSONObject.has(StringFog.decrypt("XPO+\n", "L4fNu1SRJxc=\n"))) {
            if (z) {
                jOptLong = jSONObject.optLong(StringFog.decrypt("9OfX\n", "h5Kjmc2ExE0=\n"));
                j = this.f3908;
            } else {
                jOptLong = jSONObject.optLong(StringFog.decrypt("DEFH\n", "fzU0Y+MrGgM=\n"));
                j = this.f3907;
            }
            try {
                jSONObject.put(StringFog.decrypt("7u8t\n", "nZtemgYM+xY=\n"), jOptLong + j);
            } catch (JSONException unused) {
            }
        }
    }
}
