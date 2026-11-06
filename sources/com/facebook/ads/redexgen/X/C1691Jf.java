package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1691Jf extends AbstractRunnableC3004oq {
    public final /* synthetic */ HandlerC2486gI A00;

    public C1691Jf(HandlerC2486gI handlerC2486gI) {
        this.A00 = handlerC2486gI;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A00.A09.AJZ(this.A00.A00);
        if (AbstractC2891my.A0I(this.A00.A0A)) {
            this.A00.A0J();
        }
        boolean retryScheduled = this.A00.A0I(AbstractC2891my.A0C(this.A00.A0A));
        if (retryScheduled) {
            return;
        }
        boolean retryScheduled2 = AbstractC2891my.A0E(this.A00.A0A);
        if (retryScheduled2) {
            return;
        }
        AbstractC2838m7.A05(this.A00.A0A);
    }
}
