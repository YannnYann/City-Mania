package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: loaded from: classes3.dex */
public final class y0 extends AbstractC0679 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0679 f399;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f400;

    public y0(AbstractC0963 abstractC0963, AbstractC0679 abstractC0679) {
        this.f400 = abstractC0963;
        this.f399 = abstractC0679;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        AbstractC0963 abstractC0963 = this.f400;
        if (abstractC0963 == null ? y0Var.f400 != null : !abstractC0963.equals(y0Var.f400)) {
            return false;
        }
        AbstractC0679 abstractC0679 = this.f399;
        AbstractC0679 abstractC06792 = y0Var.f399;
        return abstractC0679 != null ? abstractC0679.equals(abstractC06792) : abstractC06792 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f400;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        AbstractC0679 abstractC0679 = this.f399;
        return iHashCode + (abstractC0679 != null ? abstractC0679.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("rEScihHZsg==\n", "2yz15nT5mjE=\n") + this.f400 + StringFog.decrypt("0XE=\n", "+FEvYubmVlg=\n") + this.f399;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int mo1049(C0915 c0915) {
        return 0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1031(C0915 c0915, C0048 c0048) {
        while (this.f400.m1577(c0915, c0048).m1144()) {
            C0180 c0180M1418 = this.f399.m1418(c0915, c0048);
            if (c0180M1418.f1190) {
                break;
            }
            if (c0180M1418.f1191) {
                return c0180M1418;
            }
        }
        return new C0180(null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int mo1048() {
        return this.f399.mo1048();
    }
}
