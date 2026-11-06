package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C5 implements InterfaceC2644iv {
    public final int A00;
    public final List<C2647iy> A01;

    public C5(List<C2647iy> list, int i) {
        this.A01 = list;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644iv
    public final List<C2647iy> A7q() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644iv
    public final int A8p() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644iv
    public final int A97() {
        return 1;
    }
}
