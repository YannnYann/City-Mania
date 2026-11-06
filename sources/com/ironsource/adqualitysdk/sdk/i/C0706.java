package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0706 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2893;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2894;

    public C0706(String str, String str2) {
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException(StringFog.decrypt("ltCTd9eBHBys+7Z3zJEdG+X6tyOBhgtPp/i5Oco=\n", "xZTYV6Hkbm8=\n"));
        }
        if (str2 == null || str2.trim().isEmpty()) {
            throw new IllegalArgumentException(StringFog.decrypt("rg3EJGG6QIKODtwkRYsTns8T23AInAXKjRHVakM=\n", "7320BCj+YOo=\n"));
        }
        this.f2894 = str;
        this.f2893 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0706)) {
            return false;
        }
        C0706 c0706 = (C0706) obj;
        c0706.getClass();
        return this.f2894.equals(c0706.f2894) && this.f2893.equals(c0706.f2893);
    }

    public final int hashCode() {
        Long l = 300000L;
        return l.hashCode() + ((((((this.f2893.hashCode() + (this.f2894.hashCode() * 31)) * 31) + 2) * 31) + 2) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("T1UcGNAGW/llVQ0uzQ1x8XtLDAnJNXLqb1kQA59E\n", "HDB/baJjF5g=\n"));
        sb.append(this.f2894);
        sb.append('\'');
        sb.append(StringFog.decrypt("U+dUXJHEfFAetF0Rxg==\n", "f8c1LOGNGBg=\n"));
        sb.append(this.f2893);
        sb.append('\'');
        sb.append(StringFog.decrypt("6ynGRz5KgbO1ZIs=\n", "xwm2K18+59w=\n"));
        sb.append(2);
        sb.append(StringFog.decrypt("yA88SvBokRmXXDZK80yaDIES\n", "5C9fJZ0Y43w=\n"));
        sb.append(2);
        return AbstractC0202.m1159("cD6W2uZU10U5bY/a83DtQzlptsij\n", "XB77u54Avig=\n", sb, "300000}");
    }
}
