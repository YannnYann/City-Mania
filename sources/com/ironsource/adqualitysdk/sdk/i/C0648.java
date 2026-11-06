package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0648 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2676;

    public C0648(String str) {
        this.f2676 = AbstractC0668.m1416(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        String str = this.f2676;
        String str2 = ((C0648) obj).f2676;
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        String str = this.f2676;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return this.f2676;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        AbstractC0208 abstractC0208 = c0048.f651;
        String str = this.f2676;
        return new C0180(abstractC0208.m1186(str.substring(0, str.length() - StringFog.decrypt("AFoBSPGo\n", "LjltKYLbg1A=\n").length()), true));
    }
}
