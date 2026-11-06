package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1530Cy implements InterfaceC2689je {
    public final /* synthetic */ C13635w A00;

    public C1530Cy(C13635w c13635w) {
        this.A00 = c13635w;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2689je
    public final boolean AAw() {
        if (!this.A00.A0A.get()) {
            return true;
        }
        if (((D8) this.A00).A03.A3J() && ((D8) this.A00).A09.getToolbarActionMode() == 8) {
            return true;
        }
        return this.A00.A0t();
    }
}
