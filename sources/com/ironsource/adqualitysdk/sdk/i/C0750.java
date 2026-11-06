package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0750 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f3067;

    public C0750(AbstractC0963 abstractC0963) {
        this.f3067 = abstractC0963;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0963 abstractC0963 = this.f3067;
        AbstractC0963 abstractC09632 = ((C0750) obj).f3067;
        return abstractC0963 != null ? abstractC0963.equals(abstractC09632) : abstractC09632 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        int iHashCode = C0750.class.hashCode() * 31;
        AbstractC0963 abstractC0963 = this.f3067;
        return iHashCode + (abstractC0963 != null ? abstractC0963.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("4g==\n", "w/ESGDWpRFE=\n") + this.f3067;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        return new C0180(Boolean.valueOf(!this.f3067.m1577(c0915, c0048).m1144()));
    }
}
