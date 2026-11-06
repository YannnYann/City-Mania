package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɜ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0104 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C3506s f912;

    public C0104(C3506s c3506s) {
        this.f912 = c3506s;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C3506s c3506s = this.f912;
        C3506s c3506s2 = ((C0104) obj).f912;
        return c3506s != null ? c3506s.equals(c3506s2) : c3506s2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        int iHashCode = C0104.class.hashCode() * 31;
        C3506s c3506s = this.f912;
        return iHashCode + (c3506s != null ? c3506s.hashCode() : 0);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0180 c0180M1577 = this.f912.m1577(c0915, c0048);
        c0915.m1541(this.f912.f379, Integer.valueOf(c0180M1577.m1143().intValue() - 1));
        return c0180M1577;
    }
}
