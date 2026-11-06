package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IN extends AbstractRunnableC2991od {
    public final /* synthetic */ IM A00;

    public IN(IM im) {
        this.A00 = im;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2991od
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onLoggingImpression(this.A00.A01.A07());
        }
    }
}
