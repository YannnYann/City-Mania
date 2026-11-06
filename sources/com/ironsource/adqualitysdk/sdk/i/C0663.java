package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴻ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0663 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final HashMap f2703;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final HashMap f2704;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ArrayList f2705;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final ArrayList f2706;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean f2707;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f2708;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2709;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2710;

    static {
        StringFog.decrypt("7Ot7u3hRRbXj7WapdFg=\n", "oIIIzx0/IMc=\n");
        StringFog.decrypt("PucwAI8=\n", "TZJAZf3eCK4=\n");
        StringFog.decrypt("Zu6Puz2yVJA=\n", "B4z8z0/TN+Q=\n");
        StringFog.decrypt("OSFDAyXQOA==\n", "VEQuYUCiSwg=\n");
        StringFog.decrypt("RORq3Gk=\n", "N4EeqRn/kEk=\n");
        StringFog.decrypt("BKBAN7O2\n", "YdYlWcfFf9s=\n");
        StringFog.decrypt("7qQptnk6Iw==\n", "g8Fd3hZeUKI=\n");
    }

    public C0663(String str, String str2, JSONObject jSONObject) {
        ArrayList arrayList;
        ArrayList arrayList2;
        HashMap linkedHashMap;
        this.f2710 = AbstractC0668.m1416(str2);
        this.f2709 = AbstractC0668.m1416(str);
        this.f2708 = AbstractC0668.m1416(jSONObject.optString(StringFog.decrypt("4zo/Y4k=\n", "kE9PBvvr470=\n")));
        this.f2707 = jSONObject.optBoolean(StringFog.decrypt("ZGbNjF1bt9c=\n", "BQS++C861KM=\n"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(StringFog.decrypt("eREhQno5Rw==\n", "FHRMIB9LNLI=\n"));
        HashMap linkedHashMap2 = null;
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
        this.f2706 = arrayList == null ? new ArrayList() : arrayList;
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(StringFog.decrypt("k3I0lNo=\n", "4BdA4aqDJNU=\n"));
        if (jSONArrayOptJSONArray2 != null) {
            arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                arrayList2.add(new C0652(jSONArrayOptJSONArray2.optJSONObject(i2)));
            }
        } else {
            arrayList2 = null;
        }
        this.f2705 = arrayList2 == null ? new ArrayList() : arrayList2;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("5NPukM3P\n", "gaWL/rm89t8=\n"));
        if (jSONObjectOptJSONObject != null) {
            linkedHashMap = new LinkedHashMap();
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                linkedHashMap.put(next, new C0987(jSONObjectOptJSONObject.optJSONObject(next)));
            }
        } else {
            linkedHashMap = null;
        }
        this.f2704 = linkedHashMap == null ? new HashMap() : linkedHashMap;
        C0946[] c0946Arr = {null};
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(StringFog.decrypt("DBrBm3qU0w==\n", "YX+18xXwoK8=\n"));
        if (jSONObjectOptJSONObject2 != null) {
            linkedHashMap2 = new LinkedHashMap();
            Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                C0946 c0946 = new C0946(this, next2, jSONObjectOptJSONObject2.optJSONObject(next2), c0946Arr[0]);
                c0946Arr[0] = c0946;
                linkedHashMap2.put(next2, c0946);
            }
        }
        this.f2703 = linkedHashMap2 == null ? new HashMap() : linkedHashMap2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList(this.f2703.values());
        Collections.sort(arrayList, new C0699());
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append(((C0946) it.next()).toString());
            sb.append("\n\n");
        }
        return sb.toString();
    }
}
