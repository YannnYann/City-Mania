package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0963 {
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1576(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (!z) {
                sb.append(StringFog.decrypt("PIE=\n", "EKGcnbaG5RQ=\n"));
            }
            if (obj instanceof String) {
                sb.append(StringFog.decrypt("LQ==\n", "D4n7jtZC8Ys=\n"));
                sb.append(obj);
                sb.append(StringFog.decrypt("eg==\n", "WP5g/MeXxuU=\n"));
            } else {
                sb.append(obj);
            }
            i++;
            z = false;
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0180 m1577(C0915 c0915, C0048 c0048) {
        C0180 c0180Mo1030 = mo1030(c0915, c0048);
        if (c0180Mo1030 != null) {
            Object obj = c0180Mo1030.f1192;
            if (obj instanceof AbstractC0963) {
                return ((AbstractC0963) obj).m1577(c0915, c0048);
            }
        }
        return c0180Mo1030;
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract C0180 mo1030(C0915 c0915, C0048 c0048);
}
