package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1880Rd implements InterfaceC2011Wl {
    public long A00;
    public long A01;
    public C1880Rd A02;
    public C2010Wk A03;

    public C1880Rd(long j, int i) {
        A02(j, i);
    }

    public final int A00(long j) {
        return ((int) (j - this.A01)) + this.A03.A00;
    }

    public final C1880Rd A01() {
        this.A03 = null;
        C1880Rd c1880Rd = this.A02;
        this.A02 = null;
        return c1880Rd;
    }

    public final void A02(long j, int i) {
        AbstractC1747Ln.A08(this.A03 == null);
        this.A01 = j;
        this.A00 = ((long) i) + j;
    }

    public final void A03(C2010Wk c2010Wk, C1880Rd c1880Rd) {
        this.A03 = c2010Wk;
        this.A02 = c1880Rd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2011Wl
    public final C2010Wk A7U() {
        return (C2010Wk) AbstractC1747Ln.A01(this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2011Wl
    public final C1880Rd ADT() {
        if (this.A02 == null || this.A02.A03 == null) {
            return null;
        }
        return this.A02;
    }
}
