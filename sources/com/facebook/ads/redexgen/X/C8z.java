package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8z, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C8z implements InterfaceC1734La {
    public final C8w A00;
    public final SF A01;
    public final LZ[] A02;

    public C8z(LZ... lzArr) {
        this(lzArr, new C8w(), new SF());
    }

    public C8z(LZ[] lzArr, C8w c8w, SF sf) {
        this.A02 = new LZ[lzArr.length + 2];
        System.arraycopy(lzArr, 0, this.A02, 0, lzArr.length);
        this.A00 = c8w;
        this.A01 = sf;
        this.A02[lzArr.length] = c8w;
        this.A02[lzArr.length + 1] = sf;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1734La
    public final UW A4g(UW uw) {
        this.A01.A02(uw.A01);
        this.A01.A01(uw.A00);
        return uw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1734La
    public final boolean A4h(boolean z) {
        this.A00.A0D(z);
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1734La
    public final LZ[] A7Z() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1734La
    public final long A96(long j) {
        return this.A01.A00(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1734La
    public final long A9l() {
        return this.A00.A0C();
    }
}
