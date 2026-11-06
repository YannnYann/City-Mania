package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0619 implements Comparable {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C1000 f2613;

    public C0619(C1000 c1000) {
        this.f2613 = c1000;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        JSONObject jSONObject;
        C0619 c0619 = (C0619) obj;
        synchronized (this) {
            jSONObject = this.f2613.f3802;
        }
        long jOptLong = jSONObject.optLong(StringFog.decrypt("XsQ=\n", "Krfrj6TdCOk=\n"));
        long jM1385 = c0619.m1385();
        if (jOptLong < jM1385) {
            return -1;
        }
        if (jOptLong != jM1385) {
            return 1;
        }
        long jM1383 = m1383();
        long jM13832 = c0619.m1383();
        if (jM1383 < jM13832) {
            return -1;
        }
        return jM1383 == jM13832 ? 0 : 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0619.class != obj.getClass()) {
            return false;
        }
        return this.f2613.f3801.equals(((C0619) obj).f2613.f3801);
    }

    public final int hashCode() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613.f3802;
        }
        if (jSONObject != null) {
            return m1384().hashCode();
        }
        return 0;
    }

    public final String toString() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613.f3802;
        }
        return jSONObject.toString();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m1382() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613.f3802;
        }
        return jSONObject.optString(StringFog.decrypt("AzaU\n", "dl/wVuWuhU4=\n"), null);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final long m1383() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613.f3802;
        }
        return jSONObject.optInt(StringFog.decrypt("ytg=\n", "r7Z3Gcoljqs=\n"));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized JSONObject m1384() {
        return this.f2613.f3802;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1386(int i, HashMap map) {
        JSONObject jSONObject = this.f2613.f3802;
        if (jSONObject != null) {
            AbstractC0962.m1574(jSONObject, i, map);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final long m1385() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613.f3802;
        }
        return jSONObject.optLong(StringFog.decrypt("XsQ=\n", "Krfrj6TdCOk=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1387(String str) {
        JSONObject jSONObject;
        try {
            synchronized (this) {
                jSONObject = this.f2613.f3802;
            }
            jSONObject.put(StringFog.decrypt("9jAd\n", "g1l5Vi32QJU=\n"), str);
        } catch (JSONException unused) {
        }
    }
}
