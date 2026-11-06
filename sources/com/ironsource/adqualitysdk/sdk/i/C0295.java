package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ע, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0295 extends AbstractC0679 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0679 f1663;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC0963 f1664;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963 f1665;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f1666;

    public C0295(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632, AbstractC0963 abstractC09633, AbstractC0679 abstractC0679) {
        this.f1666 = abstractC0963;
        this.f1665 = abstractC09632;
        this.f1664 = abstractC09633;
        this.f1663 = abstractC0679;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0295 c0295 = (C0295) obj;
        AbstractC0963 abstractC0963 = this.f1666;
        if (abstractC0963 == null ? c0295.f1666 != null : !abstractC0963.equals(c0295.f1666)) {
            return false;
        }
        AbstractC0963 abstractC09632 = this.f1665;
        if (abstractC09632 == null ? c0295.f1665 != null : !abstractC09632.equals(c0295.f1665)) {
            return false;
        }
        AbstractC0963 abstractC09633 = this.f1664;
        if (abstractC09633 == null ? c0295.f1664 != null : !abstractC09633.equals(c0295.f1664)) {
            return false;
        }
        AbstractC0679 abstractC0679 = this.f1663;
        AbstractC0679 abstractC06792 = c0295.f1663;
        return abstractC0679 != null ? abstractC0679.equals(abstractC06792) : abstractC06792 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f1666;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        AbstractC0963 abstractC09632 = this.f1665;
        int iHashCode2 = (iHashCode + (abstractC09632 != null ? abstractC09632.hashCode() : 0)) * 31;
        AbstractC0963 abstractC09633 = this.f1664;
        int iHashCode3 = (iHashCode2 + (abstractC09633 != null ? abstractC09633.hashCode() : 0)) * 31;
        AbstractC0679 abstractC0679 = this.f1663;
        return iHashCode3 + (abstractC0679 != null ? abstractC0679.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("L0ILovs=\n", "SS15gtP5cyA=\n"));
        AbstractC0963 abstractC0963 = this.f1666;
        if (abstractC0963 != null) {
            sb.append(abstractC0963);
        }
        sb.append(StringFog.decrypt("UKo=\n", "a4pmlpE8rCg=\n"));
        sb.append(this.f1665);
        sb.append(StringFog.decrypt("WAc=\n", "Yydrw1uBWIA=\n"));
        AbstractC0963 abstractC09632 = this.f1664;
        if (abstractC09632 != null) {
            sb.append(abstractC09632);
        }
        sb.append(StringFog.decrypt("YlI=\n", "S3LjQlE29UE=\n"));
        sb.append(this.f1663);
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1049(C0915 c0915) {
        return 0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1031(C0915 c0915, C0048 c0048) {
        AbstractC0963 abstractC0963 = this.f1666;
        if (abstractC0963 != null) {
            abstractC0963.m1577(c0915, c0048);
        }
        while (this.f1665.m1577(c0915, c0048).m1144()) {
            C0180 c0180M1418 = this.f1663.m1418(c0915, c0048);
            if (c0180M1418.f1190) {
                break;
            }
            if (c0180M1418.f1191) {
                return c0180M1418;
            }
            AbstractC0963 abstractC09632 = this.f1664;
            if (abstractC09632 != null) {
                abstractC09632.m1577(c0915, c0048);
            }
        }
        return new C0180(null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1048() {
        return this.f1663.mo1048();
    }
}
