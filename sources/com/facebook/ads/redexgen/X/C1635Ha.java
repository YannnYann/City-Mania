package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ha, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1635Ha extends AbstractRunnableC3004oq {
    public final /* synthetic */ C1642Hh A00;

    public C1635Ha(C1642Hh c1642Hh) {
        this.A00 = c1642Hh;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() throws Throwable {
        for (C2806la c2806la : C2805lZ.A02()) {
            C2805lZ.A0A(this.A00, c2806la.A02(), c2806la.A00(), c2806la.A01(), false);
        }
        C2805lZ.A02().clear();
    }
}
