package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0525 {

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f2368;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f2369;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f2370;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f2371;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f2372;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public LinkedHashMap f2373;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public C0915 f2374;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public C3486h0 f2375;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public String f2376;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String f2377;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final String f2378;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f2379;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f2380;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f2381;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0915 f2382;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject f2383;

    static {
        StringFog.decrypt("9+whQtexcnnGwCBC1Lth\n", "tINPLLLSBhY=\n");
        StringFog.decrypt("nKnnVQ==\n", "8siKMGIonCg=\n");
        StringFog.decrypt("alwTgqxnavBvWAU=\n", "DjVg8sAGE74=\n");
        StringFog.decrypt("B5cMsApbfA==\n", "cfJ+w2M0Ep0=\n");
        StringFog.decrypt("zN0+MDRW\n", "obRQY1A9dMc=\n");
        StringFog.decrypt("82nolIVB\n", "ngiQx+Eqfa0=\n");
        f2372 = StringFog.decrypt("/HZ8O8yONbbhZkEK0bw7vOFh\n", "jxIXb6PPUtM=\n");
        f2371 = StringFog.decrypt("mHV/FB1HCjic\n", "7xAdQnQifXI=\n");
        f2370 = StringFog.decrypt("hWjYxVVH\n", "5ge2tiE0HzU=\n");
        StringFog.decrypt("BQE4QfJS2CcMHiNQ\n", "Ym1XI5M+m0g=\n");
        f2369 = StringFog.decrypt("0Q8823d7+g==\n", "vGpRuRIJibI=\n");
        f2368 = StringFog.decrypt("L/UtEQlpGjEw\n", "Q5xeZWwHf0M=\n");
        StringFog.decrypt("SZ4p49kTM/w=\n", "KPpvirx/V48=\n");
    }

    public C0525(String str, C0915 c0915) {
        this.f2383 = new JSONObject();
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f2383 = jSONObject;
            this.f2382 = c0915;
            this.f2381 = jSONObject.optString(StringFog.decrypt("N/vAvg==\n", "WZqt26Z9l80=\n"));
            this.f2380 = jSONObject.optString(StringFog.decrypt("YYL75k7M0YZkhu0=\n", "BeuIliKtqMg=\n"));
            this.f2379 = jSONObject.optString(StringFog.decrypt("8cO3z2VbkA==\n", "h6bFvAw0/uo=\n"));
            this.f2378 = jSONObject.optString(StringFog.decrypt("JRCWv4Os\n", "SHn47OfHsdY=\n"));
            this.f2377 = jSONObject.optString(StringFog.decrypt("K1oKMlKw\n", "RjtyYTbb8iY=\n"));
            if (jSONObject.has(StringFog.decrypt("ca0Jqcd8D5d4shK4\n", "FsFmy6YQTPg=\n"))) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("8DvS2GapIsr5JMnJ\n", "l1e9ugfFYaU=\n"));
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    this.f2382.m1541(next, jSONObjectOptJSONObject.opt(next));
                }
            }
        } catch (Throwable th) {
            AbstractC0923.m1543(this.f2381, StringFog.decrypt("S2wSXdd90LVrfxRbyzqTpGFwDlfGKdy1Ln0PXMM01A==\n", "Dh5gMqVds8c=\n"), th, null);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final LinkedHashMap m1297() {
        LinkedHashMap linkedHashMap;
        String str = f2368;
        if (this.f2373 == null) {
            JSONObject jSONObjectOptJSONObject = this.f2383.optJSONObject(str);
            if (jSONObjectOptJSONObject != null) {
                linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, new C0663(this.f2381, next, jSONObjectOptJSONObject.optJSONObject(next)));
                }
            } else {
                linkedHashMap = null;
            }
            this.f2373 = linkedHashMap;
        }
        return this.f2373;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0915 m1298() {
        ArrayList arrayList;
        if (this.f2374 == null) {
            C0915 c0915 = new C0915(AbstractC0962.m1570(this.f2383.optJSONObject(f2370), new C0530(this)), this.f2382, true);
            this.f2374 = c0915;
            JSONArray jSONArrayOptJSONArray = this.f2383.optJSONArray(f2369);
            if (jSONArrayOptJSONArray != null) {
                arrayList = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    String strM1416 = AbstractC0668.m1416(jSONArrayOptJSONArray.optString(i));
                    if (strM1416 != null) {
                        arrayList.add(strM1416);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    c0915.f3497.put((String) it.next(), null);
                }
            }
        }
        return this.f2374;
    }
}
