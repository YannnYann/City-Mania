package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ek, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1568Ek extends AbstractRunnableC3004oq {
    public final /* synthetic */ AbstractC3337uG A00;

    public C1568Ek(AbstractC3337uG abstractC3337uG) {
        this.A00 = abstractC3337uG;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.isPressed()) {
            this.A00.setPressed(true);
            this.A00.postOnAnimationDelayed(this.A00.A09, 250L);
        } else {
            this.A00.postDelayed(this, this.A00.A07);
        }
    }
}
