package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IJ extends AbstractRunnableC3004oq {
    public final /* synthetic */ II A00;
    public final /* synthetic */ C6T A01;

    public IJ(II ii, C6T c6t) {
        this.A00 = ii;
        this.A01 = c6t;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A01.setAdViewabilityChecker(this.A00.A02.A1G());
        this.A00.A02.A1o(true, true);
    }
}
