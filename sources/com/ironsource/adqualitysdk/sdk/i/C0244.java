package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ҁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0244 extends AbstractC0993 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0679 f1557;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC0679 f1558;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963 f1559;

    public C0244(AbstractC0963 abstractC0963, AbstractC0679 abstractC0679, AbstractC0679 abstractC06792, byte b) {
        super(b);
        this.f1559 = abstractC0963;
        this.f1558 = abstractC0679;
        this.f1557 = abstractC06792;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0244 c0244 = (C0244) obj;
        AbstractC0963 abstractC0963 = this.f1559;
        if (abstractC0963 == null ? c0244.f1559 != null : !abstractC0963.equals(c0244.f1559)) {
            return false;
        }
        AbstractC0679 abstractC0679 = this.f1558;
        if (abstractC0679 == null ? c0244.f1558 != null : !abstractC0679.equals(c0244.f1558)) {
            return false;
        }
        AbstractC0679 abstractC06792 = this.f1557;
        AbstractC0679 abstractC06793 = c0244.f1557;
        return abstractC06792 != null ? abstractC06792.equals(abstractC06793) : abstractC06793 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f1559;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        AbstractC0679 abstractC0679 = this.f1558;
        int iHashCode2 = (iHashCode + (abstractC0679 != null ? abstractC0679.hashCode() : 0)) * 31;
        AbstractC0679 abstractC06792 = this.f1557;
        return iHashCode2 + (abstractC06792 != null ? abstractC06792.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("PFdxEA==\n", "VTFRON8vZF4=\n"));
        sb.append(this.f1559);
        sb.append(StringFog.decrypt("Al0=\n", "K314zdK0xBc=\n"));
        sb.append(this.f1558);
        if (this.f1557 != null) {
            if (this.f1558 instanceof C0626) {
                sb.append(" ");
            } else {
                sb.append("\n");
                byte b = this.f3786;
                for (int i = 0; i < b; i++) {
                    sb.append("  ");
                }
            }
            sb.append(StringFog.decrypt("7EKlH/A=\n", "iS7WetDixZA=\n"));
            sb.append(this.f1557);
        }
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1031(C0915 c0915, C0048 c0048) {
        if (this.f1559.m1577(c0915, c0048).m1144()) {
            return this.f1558.m1418(c0915, c0048);
        }
        if (this.f1557 == null) {
            return new C0180(Boolean.FALSE);
        }
        c0915.f3490.add(this);
        return this.f1557.m1418(c0915, c0048);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1048() {
        int iMo1048 = this.f1558.mo1048();
        AbstractC0679 abstractC0679 = this.f1557;
        if (abstractC0679 == null) {
            return iMo1048;
        }
        int iMo10482 = abstractC0679.mo1048() + iMo1048;
        return this.f1558 instanceof C0626 ? iMo10482 - 1 : iMo10482;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1049(C0915 c0915) {
        if (!c0915.f3490.contains(this)) {
            return 0;
        }
        int iMo1048 = this.f1558.mo1048();
        return this.f1558 instanceof C0626 ? iMo1048 - 1 : iMo1048;
    }
}
