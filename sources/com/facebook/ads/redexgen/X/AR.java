package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AR implements InterfaceC2074Zb {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2074Zb
    public final long A6L() {
        return System.nanoTime();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2074Zb
    public final void ALM(Object obj, long j) throws InterruptedException {
        obj.wait(j);
    }
}
