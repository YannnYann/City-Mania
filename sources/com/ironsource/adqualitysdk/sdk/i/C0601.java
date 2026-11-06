package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0601 extends AbstractC0618 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2564 = StringFog.decrypt("sxiY\n", "wGzrJO7sexY=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2563 = StringFog.decrypt("3L4=\n", "qM0kjcxeJqU=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2562 = StringFog.decrypt("t78=\n", "wssr4ZE/2z0=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2561 = StringFog.decrypt("HQ0l5w==\n", "cGBEkWE/myo=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final int f2567 = (int) TimeUnit.SECONDS.toMillis(120);

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f2566 = StringFog.decrypt("eioYARbyQA==\n", "Clh3dXmcM1o=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f2565 = StringFog.decrypt("FaDxfuKFIEsD\n", "cMyUHZb3TyU=\n");

    public C0601(C0975 c0975) {
        this.f2611 = c0975;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final String m1361() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("v54r\n", "yuxHbcURJi0=\n"));
        return jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString(StringFog.decrypt("rg==\n", "y7aZ4lL4jfI=\n"), this.f2565) : this.f2565;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final long m1362() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optLong(f2562, 0L);
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final long m1363() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optLong(f2563, 0L);
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final int m1364() {
        JSONObject jSONObject;
        if (((C0893) AbstractC0885.m1491()).f3410) {
            synchronized (this) {
                jSONObject = this.f2612;
            }
            if (jSONObject.optBoolean(StringFog.decrypt("M2fjzg==\n", "Vw6CqWtqtjQ=\n"), false)) {
                return m1368();
            }
        }
        return m1380().optInt(StringFog.decrypt("0XVI\n", "vAM7p2UY5ts=\n"), 9850);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final int m1365() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optInt(StringFog.decrypt("rhQ9\n", "w3FN+mLkpbA=\n"), 40);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashMap m1366() {
        JSONObject jSONObject;
        HashMap map = new HashMap();
        synchronized (this) {
            jSONObject = this.f2612;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("8aK1ug==\n", "l9bczqW554A=\n"));
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                int iOptInt = jSONObjectOptJSONObject.optInt(next, -1);
                if (iOptInt >= 0) {
                    map.put(next, Integer.valueOf(iOptInt));
                }
            }
        }
        return map;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List m1367() {
        JSONObject jSONObject;
        C0975 c0975 = this.f2611;
        JSONObject jSONObject2 = c0975.f3676;
        String str = c0975.f3677;
        List arrayList = new ArrayList();
        String str2 = AbstractC0962.f3633;
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            arrayList = AbstractC0962.m1571(jSONArrayOptJSONArray);
        }
        synchronized (this) {
            jSONObject = this.f2612;
        }
        String strDecrypt = StringFog.decrypt("lFiu\n", "8SzWNyhbHxA=\n");
        List arrayList2 = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(strDecrypt);
        if (jSONArrayOptJSONArray2 != null) {
            arrayList2 = AbstractC0962.m1571(jSONArrayOptJSONArray2);
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m1368() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optInt(StringFog.decrypt("BbwKek+TJA==\n", "YdVrHSLlV2w=\n"), 1000000);
    }
}
