package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1584Fa extends AbstractC2225c3 {
    public final /* synthetic */ C3166rV A00;

    public C1584Fa(C3166rV c3166rV) {
        this.A00 = c3166rV;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        if (this.A00.A08 == null || this.A00.A08.A0H()) {
            this.A00.A0A.A0V();
            if (!this.A00.A06.A07()) {
                this.A00.A06.A05();
            }
            InterfaceC3165rU listener = (InterfaceC3165rU) this.A00.A0C.get();
            if (listener != null) {
                listener.AFD();
            }
            this.A00.A0A.A0V();
            return;
        }
        this.A00.A0A.A0T();
    }
}
