package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ME extends AbstractRunnableC3004oq {
    public final /* synthetic */ C2400eu A00;

    public ME(C2400eu c2400eu) {
        this.A00 = c2400eu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A00.A07();
        this.A00.A02.A06();
        this.A00.A05.countDown();
    }
}
