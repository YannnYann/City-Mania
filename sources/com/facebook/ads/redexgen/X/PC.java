package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PC implements InterfaceC2143aj {
    public int A00;
    public int A01;
    public final int A02;
    public final int A03;
    public final C1769Mk A04;

    public PC(PE pe) {
        this.A04 = pe.A00;
        this.A04.A0f(12);
        this.A02 = this.A04.A0L() & 255;
        this.A03 = this.A04.A0L();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2143aj
    public final int A8l() {
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2143aj
    public final int A9Y() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2143aj
    public final int AIf() {
        if (this.A02 == 8) {
            return this.A04.A0I();
        }
        if (this.A02 == 16) {
            return this.A04.A0M();
        }
        int i = this.A01;
        this.A01 = i + 1;
        if (i % 2 == 0) {
            this.A00 = this.A04.A0I();
            return (this.A00 & 240) >> 4;
        }
        return this.A00 & 15;
    }
}
