package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0657 extends AbstractC0963 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC0963 f2696;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963 f2697;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f2698;

    public C0657(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632, AbstractC0963 abstractC09633) {
        this.f2698 = abstractC0963;
        this.f2697 = abstractC09632;
        this.f2696 = abstractC09633;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0657 c0657 = (C0657) obj;
        AbstractC0963 abstractC0963 = this.f2698;
        if (abstractC0963 == null ? c0657.f2698 != null : !abstractC0963.equals(c0657.f2698)) {
            return false;
        }
        AbstractC0963 abstractC09632 = this.f2697;
        if (abstractC09632 == null ? c0657.f2697 != null : !abstractC09632.equals(c0657.f2697)) {
            return false;
        }
        AbstractC0963 abstractC09633 = this.f2696;
        AbstractC0963 abstractC09634 = c0657.f2696;
        return abstractC09633 != null ? abstractC09633.equals(abstractC09634) : abstractC09634 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f2698;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        AbstractC0963 abstractC09632 = this.f2697;
        int iHashCode2 = (iHashCode + (abstractC09632 != null ? abstractC09632.hashCode() : 0)) * 31;
        AbstractC0963 abstractC09633 = this.f2696;
        return iHashCode2 + (abstractC09633 != null ? abstractC09633.hashCode() : 0);
    }

    public final String toString() {
        return this.f2698 + StringFog.decrypt("pyWF\n", "hxql63kyQRU=\n") + this.f2697 + StringFog.decrypt("QKd/\n", "YJ1fHZwAxrc=\n") + this.f2696;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        return this.f2698.m1577(c0915, c0048).m1144() ? this.f2697.m1577(c0915, c0048) : this.f2696.m1577(c0915, c0048);
    }
}
