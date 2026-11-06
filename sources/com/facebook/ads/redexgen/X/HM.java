package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class HM implements InterfaceC2783lD {
    public final C2780lA A00;

    public HM(C2780lA c2780lA) {
        this.A00 = c2780lA;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
    public final Map<String, String> A69() {
        return C2842mB.A01(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
    public final Map<String, String> A7W() {
        return C2821lp.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
    public final String A8x() {
        return C2821lp.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
    public final String A8z() {
        return AbstractC2748kb.A00().A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
    public final boolean ABC() {
        return C3026pE.A00().A03();
    }
}
