package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J2 implements InterfaceC2670jL {
    public final /* synthetic */ C7O A00;

    public J2(C7O c7o) {
        this.A00 = c7o;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2670jL
    public final void AIM(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        this.A00.A1s(abstractC2663jE, c2640ir, c2640ir2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2670jL
    public final void AIO(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        this.A00.A0r.A0d(abstractC2663jE);
        this.A00.A1t(abstractC2663jE, c2640ir, c2640ir2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2670jL
    public final void AIQ(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        abstractC2663jE.A0k(false);
        if (this.A00.A0C) {
            if (this.A00.A05.A0R(abstractC2663jE, abstractC2663jE, c2640ir, c2640ir2)) {
                this.A00.A1Q();
            }
        } else {
            if (!this.A00.A05.A0Q(abstractC2663jE, c2640ir, c2640ir2)) {
                return;
            }
            this.A00.A1Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2670jL
    public final void ALt(AbstractC2663jE abstractC2663jE) {
        this.A00.A06.A2S(abstractC2663jE.A0H, this.A00.A0r);
    }
}
