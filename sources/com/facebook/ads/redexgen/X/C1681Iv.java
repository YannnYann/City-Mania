package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Iv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1681Iv implements InterfaceC2605iG {
    public final /* synthetic */ C7O A00;

    public C1681Iv(C7O c7o) {
        this.A00 = c7o;
    }

    private final void A00(C2606iH c2606iH) {
        switch (c2606iH.A00) {
            case 1:
                this.A00.A06.A2i(this.A00, c2606iH.A02, c2606iH.A01);
                break;
            case 2:
                this.A00.A06.A2j(this.A00, c2606iH.A02, c2606iH.A01);
                break;
            case 4:
                this.A00.A06.A2l(this.A00, c2606iH.A02, c2606iH.A01, c2606iH.A03);
                break;
            case 8:
                this.A00.A06.A2k(this.A00, c2606iH.A02, c2606iH.A01, 1);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final AbstractC2663jE A79(int i) {
        AbstractC2663jE abstractC2663jEA1J = this.A00.A1J(i, true);
        if (abstractC2663jEA1J == null || this.A00.A01.A0K(abstractC2663jEA1J.A0H)) {
            return null;
        }
        return abstractC2663jEA1J;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void ADE(int i, int i2, Object obj) {
        this.A00.A1j(i, i2, obj);
        this.A00.A0H = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void ADc(int i, int i2) {
        this.A00.A1g(i, i2);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void ADd(int i, int i2) {
        this.A00.A1h(i, i2);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void ADe(int i, int i2) {
        this.A00.A1k(i, i2, true);
        this.A00.A0G = true;
        this.A00.A0s.A00 += i2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void ADf(int i, int i2) {
        this.A00.A1k(i, i2, false);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void AEg(C2606iH c2606iH) {
        A00(c2606iH);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2605iG
    public final void AEi(C2606iH c2606iH) {
        A00(c2606iH);
    }
}
