package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class M9 implements InterfaceC2735kO {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C14107r A01;
    public final /* synthetic */ C14107r A02;
    public final /* synthetic */ C2831lz A03;

    public M9(C14107r c14107r, int i, C2831lz c2831lz, C14107r c14107r2) {
        this.A01 = c14107r;
        this.A00 = i;
        this.A03 = c2831lz;
        this.A02 = c14107r2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2735kO
    public final void ADt() {
        this.A01.A0C(this.A00, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2735kO
    public final void ADu() {
        this.A01.A00.AFQ(this.A02, C2947nt.A00(AdErrorType.NO_FILL));
    }
}
