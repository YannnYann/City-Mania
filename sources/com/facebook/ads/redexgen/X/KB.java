package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KB extends AbstractRunnableC3004oq {
    public final /* synthetic */ C14057m A00;
    public final /* synthetic */ C2467fz A01;
    public final /* synthetic */ C13937a A02;

    public KB(C13937a c13937a, C2467fz c2467fz, C14057m c14057m) {
        this.A02 = c13937a;
        this.A01 = c2467fz;
        this.A00 = c14057m;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A02.A0S(this.A01);
        this.A02.A0P(this.A00);
        this.A02.A00 = null;
        AdErrorType adErrorType = AdErrorType.RV_AD_TIMEOUT;
        this.A02.A0B.A0F().A6F(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        if (this.A02.A07 != null) {
            this.A02.A07.A0G(new C2947nt(adErrorType, ""));
        }
    }
}
