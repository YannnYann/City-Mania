package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0160 extends AbstractC0679 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C3506s f1157;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0626 f1158;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0626 f1159;

    public C0160(C0626 c0626, C0626 c06262, C3506s c3506s) {
        this.f1159 = c0626;
        this.f1158 = c06262;
        this.f1157 = c3506s;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0160 c0160 = (C0160) obj;
        C0626 c0626 = this.f1159;
        if (c0626 == null ? c0160.f1159 != null : !c0626.equals(c0160.f1159)) {
            return false;
        }
        C0626 c06262 = this.f1158;
        if (c06262 == null ? c0160.f1158 != null : !c06262.equals(c0160.f1158)) {
            return false;
        }
        C3506s c3506s = this.f1157;
        C3506s c3506s2 = c0160.f1157;
        return c3506s != null ? c3506s.equals(c3506s2) : c3506s2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        C0626 c0626 = this.f1159;
        int iHashCode = (c0626 != null ? Arrays.hashCode(c0626.f2644) : 0) * 31;
        C0626 c06262 = this.f1158;
        int iHashCode2 = (iHashCode + (c06262 != null ? Arrays.hashCode(c06262.f2644) : 0)) * 31;
        C3506s c3506s = this.f1157;
        return iHashCode2 + (c3506s != null ? c3506s.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("pzbQtw==\n", "00Spl6i07Ms=\n") + this.f1159 + StringFog.decrypt("7DfVsH8KcC4=\n", "zFS0xBxiUAY=\n") + this.f1157 + StringFog.decrypt("a2Q=\n", "QkSD+hx8Iks=\n") + this.f1158;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1031(C0915 c0915, C0048 c0048) {
        try {
            C0626 c0626 = this.f1159;
            if (c0626 != null) {
                return c0626.m1418(new C0915(new HashMap(), c0915, false), c0048);
            }
        } catch (Throwable th) {
            if (this.f1158 != null) {
                c0915.f3490.add(this);
                HashMap map = new HashMap();
                C3506s c3506s = this.f1157;
                if (c3506s != null) {
                    map.put(AbstractC0668.m1416(c3506s.f379), th);
                }
                return this.f1158.m1418(new C0915(map, c0915, false), c0048);
            }
        }
        return new C0180(null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1048() {
        return (this.f1158.mo1048() + this.f1159.mo1048()) - 1;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1049(C0915 c0915) {
        if (c0915.f3490.contains(this)) {
            return this.f1159.mo1048() - 1;
        }
        return 0;
    }
}
