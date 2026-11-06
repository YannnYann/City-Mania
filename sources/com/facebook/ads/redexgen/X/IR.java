package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IR extends AbstractRunnableC2991od {
    public final /* synthetic */ IM A00;
    public final /* synthetic */ C2947nt A01;

    public IR(IM im, C2947nt c2947nt) {
        this.A00 = im;
        this.A01 = c2947nt;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2991od
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onError(this.A00.A01.A07(), AbstractC3039pS.A00(this.A01));
        }
    }
}
