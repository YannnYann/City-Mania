package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GK extends AbstractRunnableC3004oq {
    public final /* synthetic */ long A00;
    public final /* synthetic */ C2970oH A01;
    public final /* synthetic */ C2973oK A02;
    public final /* synthetic */ String A03;

    public GK(C2973oK c2973oK, String str, long j, C2970oH c2970oH) {
        this.A02 = c2973oK;
        this.A03 = str;
        this.A00 = j;
        this.A01 = c2970oH;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A02.A0N(this.A03, this.A00, this.A01);
    }
}
