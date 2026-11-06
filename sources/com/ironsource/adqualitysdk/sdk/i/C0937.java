package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺗ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0937 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C3486h0 f3538;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ArrayList f3539 = new ArrayList();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Context f3540;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0208 f3541;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0691 f3542;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0964 f3543;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0525 f3544;

    public C0937(Context context, C0525 c0525, C0964 c0964, C0691 c0691, AbstractC0208 abstractC0208) {
        this.f3544 = c0525;
        this.f3543 = c0964;
        this.f3542 = c0691;
        this.f3541 = abstractC0208;
        this.f3540 = context.getApplicationContext();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m1550() {
        for (C0048 c0048 : this.f3539) {
            C0825 c0825 = c0048.f645;
            c0825.getClass();
            AbstractC0272.m1210(new C0848(c0825));
            C0825 c08252 = c0048.f645;
            c08252.getClass();
            AbstractC0272.m1210(new C0826(c08252));
            C0825 c08253 = c0048.f645;
            c08253.getClass();
            AbstractC0272.m1210(new C0836(c08253));
            if (c0048.f649 != null) {
                AbstractC1013 abstractC1013M1594 = AbstractC1013.m1594();
                C0481 c0481 = c0048.f649;
                synchronized (abstractC1013M1594) {
                    abstractC1013M1594.f3815.remove(c0481);
                }
                c0048.f649 = null;
            }
            C0514 c0514 = c0048.f648;
            if (c0514 != null) {
                c0514.m1295();
                c0048.f648 = null;
            }
            c0048.f650 = null;
        }
        AbstractC0272.m1210(new C0969(this));
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized boolean m1551() {
        return this.f3541.mo1075();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m1552() {
        LinkedHashMap linkedHashMap;
        String strM1185 = this.f3541.m1185();
        String str = null;
        if (TextUtils.isEmpty(strM1185) || StringFog.decrypt("Wq+tYxNlAQ==\n", "H+HsIV8gRdA=\n").equals(strM1185) || StringFog.decrypt("JfjbswiBM5w=\n", "YbGI8krNdtg=\n").equals(strM1185)) {
            return null;
        }
        C0525 c0525 = this.f3544;
        String strM11852 = this.f3541.m1185();
        if (c0525.f2376 == null) {
            JSONObject jSONObjectOptJSONObject = c0525.f2383.optJSONObject(C0525.f2372);
            if (jSONObjectOptJSONObject != null) {
                linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, jSONObjectOptJSONObject.optString(next, null));
                }
            } else {
                linkedHashMap = null;
            }
            if (linkedHashMap != null) {
                ArrayList<String> arrayList = new ArrayList(linkedHashMap.keySet());
                Collections.sort(arrayList, new C0527());
                for (String str2 : arrayList) {
                    if (AbstractC0611.m1374(strM11852, str2) >= 0) {
                        str = (String) linkedHashMap.get(str2);
                    }
                }
                c0525.f2376 = str;
            }
        }
        return c0525.f2376;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized ArrayList m1553() {
        if (this.f3539 != null) {
            return new ArrayList(this.f3539);
        }
        return new ArrayList();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0708 m1554(C0663 c0663) {
        if (c0663 != null) {
            return new C0708(c0663, m1554((C0663) this.f3544.m1297().get(c0663.f2708)));
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1555() {
        if (this.f3541.mo1075()) {
            for (C0048 c0048 : m1553()) {
                this.f3544.m1298().f3496.m1541(c0048.f654.f2897.f2710, c0048);
            }
        }
    }
}
