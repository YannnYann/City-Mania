package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$$ExternalSyntheticBackport2;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0946 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public int f3580 = -1;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C0946 f3581;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C0626 f3582;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String[] f3583;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0663 f3584;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f3585;

    static {
        StringFog.decrypt("qXw/3g==\n", "yA5YrWFx/J8=\n");
        StringFog.decrypt("MDxD5Q==\n", "UlMnnNEMjQE=\n");
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public C0946(C0663 c0663, String str, JSONObject jSONObject, C0946 c0946) {
        ArrayList arrayList;
        this.f3584 = c0663;
        this.f3585 = AbstractC0668.m1416(str);
        this.f3581 = c0946;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(StringFog.decrypt("b3esvQ==\n", "DgXLzmUfmqA=\n"));
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
        String[] strArr = new String[arrayList.size()];
        this.f3583 = strArr;
        arrayList.toArray(strArr);
        String str2 = c0663.f2709;
        String str3 = c0663.f2710;
        try {
            this.f3582 = AbstractC0636.m1409(str2, str, jSONObject.optString(StringFog.decrypt("pnvxHQ==\n", "xBSVZGbM54w=\n")));
        } catch (C0924 e) {
            new C0881(str2, str3, str, m1556(), StringFog.decrypt("Y4KmZHyYAa1Ug71laZgcqVKYu28unw==\n", "JvDUCw64ccw=\n") + this.f3585 + StringFog.decrypt("Xj+8WS2K6ukcPw==\n", "eR/dLQ3mg4c=\n") + (m1556() + e.f3513) + StringFog.decrypt("tss=\n", "jOvjHIuIApY=\n") + e.getMessage(), e).m1421(str2);
        } catch (Throwable th) {
            String str4 = StringFog.decrypt("hJQzmCWerMqzlSiZMJ6xzrWOLpN3mQ==\n", "weZB91e+3Ks=\n") + this.f3585 + StringFog.decrypt("KQCt\n", "DjqNV0FFRKY=\n") + th.getMessage();
            AbstractC0923.m1543(str2, str4, th, new C0881(str2, str3, str, m1556(), str4));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("J9icXWsd+ilh\n", "Qa3yPh90lUc=\n"));
        sb.append(this.f3585);
        sb.append(StringFog.decrypt("fQ==\n", "VQ3E5JkP8jc=\n"));
        sb.append(DynamicLoaderFactory$$ExternalSyntheticBackport2.m(StringFog.decrypt("HTI=\n", "MRKQCnYKsJE=\n"), this.f3583));
        sb.append(StringFog.decrypt("ynU=\n", "41WRxbIxcr4=\n"));
        C0626 c0626 = this.f3582;
        sb.append(c0626 != null ? c0626.toString() : StringFog.decrypt("9PDR\n", "j9CsbPBuDjM=\n"));
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0180 m1558(C0915 c0915, C0915 c09152, C0048 c0048, List list) {
        HashMap map;
        List listAsList = Arrays.asList(this.f3583);
        if (list.size() != listAsList.size()) {
            AbstractC0923.m1543(c0048.m1060(), this.f3585 + StringFog.decrypt("vd+kZjZ83an4yrF3PWfc7b0=\n", "nbLBEl4TuYk=\n") + listAsList.size() + StringFog.decrypt("EPRx68NEL1ZE5iPuw11qSlX2ZuXATC4Y\n", "MJUDjLYpSjg=\n") + list.size(), null, null);
            map = null;
        } else {
            HashMap map2 = new HashMap();
            for (int i = 0; i < list.size(); i++) {
                map2.put((String) listAsList.get(i), list.get(i));
            }
            map = map2;
        }
        C0915 c09153 = new C0915(map, c09152, this, c0915, c09152 == null);
        C0626 c0626 = this.f3582;
        if (c0626 != null) {
            return c0626.m1418(c09153, c0048);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("i05RDHdgzD64U0gKayeFPatISwxhYII=\n", "zjwjYwVApVA=\n"));
        sb.append(this.f3585);
        new C0480(c0048, c09153, AbstractC0829.m1456("9zuN7xmNEPW0IcXjD9kW77xtjeATnQE=\n", "0AGtgnz5eJo=\n", sb), null).m1421(c0048.m1060());
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m1556() {
        if (this.f3580 == -1) {
            C0946 c0946 = this.f3581;
            if (c0946 == null) {
                this.f3580 = 1;
            } else {
                int iM1556 = c0946.m1556();
                C0626 c0626 = this.f3581.f3582;
                this.f3580 = iM1556 + (c0626 != null ? c0626.mo1048() : 1) + 1;
            }
        }
        return this.f3580;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0180 m1557(C0915 c0915, C0048 c0048, List list) {
        return m1558(c0915, c0915.f3495, c0048, list);
    }
}
