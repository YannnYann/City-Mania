package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OU implements InterfaceC2191bV {
    public static final OU A01 = new OU();
    public final List<C1936Th> A00;

    public OU() {
        this.A00 = Collections.emptyList();
    }

    public OU(C1936Th c1936Th) {
        this.A00 = Collections.singletonList(c1936Th);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final List<C1936Th> A88(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final long A8e(int i) {
        AbstractC1747Ln.A07(i == 0);
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A8f() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A9D(long j) {
        return j < 0 ? 0 : -1;
    }
}
