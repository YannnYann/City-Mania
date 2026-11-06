package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ci, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1514Ci implements InterfaceC3094qL {
    public final /* synthetic */ C13565p A00;

    public C1514Ci(C13565p c13565p) {
        this.A00 = c13565p;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3094qL
    public final void AAP() {
        if (this.A00.A02 instanceof C13726f) {
            ((C13726f) this.A00.A02).A1q();
            C2917nO.A02(EnumC2916nN.A0o, null, ((D8) this.A00).A03.A37(), ((D8) this.A00).A05.A0A());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3094qL
    public final void ALH() {
        if (this.A00.A02 instanceof C13726f) {
            ((C13726f) this.A00.A02).A1u(this.A00.A0Q);
            C2917nO.A02(EnumC2916nN.A0o, null, ((D8) this.A00).A03.A37(), ((D8) this.A00).A05.A0A());
        }
        this.A00.A0v();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3094qL
    public final void ALX() {
        this.A00.A0n();
        if (this.A00.A02 instanceof C13726f) {
            ((C13726f) this.A00.A02).getAdDetailsView().setVisibility(8);
        }
    }
}
