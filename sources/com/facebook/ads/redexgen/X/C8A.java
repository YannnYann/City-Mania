package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8A, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class C8A extends T1 implements InterfaceC2191bV {
    public long A00;
    public InterfaceC2191bV A01;

    @Override // com.facebook.ads.redexgen.X.T1
    public abstract void A0B();

    @Override // com.facebook.ads.redexgen.X.AbstractC1794Nj
    public final void A0A() {
        super.A0A();
        this.A01 = null;
    }

    public final void A0C(long j, InterfaceC2191bV interfaceC2191bV, long j2) {
        super.A01 = j;
        this.A01 = interfaceC2191bV;
        if (j2 == Long.MAX_VALUE) {
            j2 = super.A01;
        }
        this.A00 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final List<C1936Th> A88(long j) {
        return ((InterfaceC2191bV) AbstractC1747Ln.A01(this.A01)).A88(j - this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final long A8e(int i) {
        return ((InterfaceC2191bV) AbstractC1747Ln.A01(this.A01)).A8e(i) + this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A8f() {
        return ((InterfaceC2191bV) AbstractC1747Ln.A01(this.A01)).A8f();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A9D(long j) {
        return ((InterfaceC2191bV) AbstractC1747Ln.A01(this.A01)).A9D(j - this.A00);
    }
}
