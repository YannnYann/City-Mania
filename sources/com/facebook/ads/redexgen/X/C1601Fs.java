package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1601Fs extends AbstractC2650j1 {
    public final /* synthetic */ C13093u A00;

    public C1601Fs(C13093u c13093u) {
        this.A00 = c13093u;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2650j1
    public final void A0P(C7O c7o, int i) {
        InterfaceC3151rG interfaceC3151rG;
        super.A0P(c7o, i);
        J7 linearLayoutManager = this.A00.getLayoutManager();
        int scrollPosition = linearLayoutManager.A38();
        AbstractC2633ik adapter = this.A00.getAdapter();
        if (scrollPosition < 0 || adapter == null || scrollPosition >= adapter.A0B() || !(c7o.A1H(scrollPosition) instanceof InterfaceC3151rG) || (interfaceC3151rG = (InterfaceC3151rG) c7o.A1H(scrollPosition)) == null) {
            return;
        }
        interfaceC3151rG.AKX();
    }
}
