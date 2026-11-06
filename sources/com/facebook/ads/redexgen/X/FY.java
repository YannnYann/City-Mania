package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FY implements InterfaceC3343uM {
    public final /* synthetic */ FS A00;

    public FY(FS fs) {
        this.A00 = fs;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3343uM
    public final void ADp() {
        if (this.A00.A0X()) {
            this.A00.A0N();
            this.A00.A0g.setToolbarActionMessage("");
            this.A00.A0g.setToolbarActionMode(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3343uM
    public final void AFq() {
        this.A00.A0K = false;
        this.A00.A0U.A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3343uM
    public final void AFr() {
        this.A00.A0K = true;
        this.A00.A0U.A06();
    }
}
