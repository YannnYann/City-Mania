package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.দ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0386 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963 f2013;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C3506s f2014;

    public C0386(C3506s c3506s, AbstractC0963 abstractC0963) {
        this.f2014 = c3506s;
        this.f2013 = abstractC0963;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0386 c0386 = (C0386) obj;
        C3506s c3506s = this.f2014;
        if (c3506s == null ? c0386.f2014 != null : !c3506s.equals(c0386.f2014)) {
            return false;
        }
        AbstractC0963 abstractC0963 = this.f2013;
        AbstractC0963 abstractC09632 = c0386.f2013;
        return abstractC0963 != null ? abstractC0963.equals(abstractC09632) : abstractC09632 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        C3506s c3506s = this.f2014;
        int iHashCode = (c3506s != null ? c3506s.hashCode() : 0) * 31;
        AbstractC0963 abstractC0963 = this.f2013;
        return iHashCode + (abstractC0963 != null ? abstractC0963.hashCode() : 0);
    }

    public final String toString() {
        return this.f2014 + StringFog.decrypt("OYED\n", "GbwjZCV5Jc4=\n") + this.f2013;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0180 c0180M1577 = this.f2013.m1577(c0915, c0048);
        c0915.m1541(this.f2014.f379, c0180M1577.f1192);
        return c0180M1577;
    }
}
