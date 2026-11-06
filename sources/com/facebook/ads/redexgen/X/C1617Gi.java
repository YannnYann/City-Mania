package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1617Gi implements InterfaceC3302th {
    public final /* synthetic */ C1614Gf A00;

    public C1617Gi(C1614Gf c1614Gf) {
        this.A00 = c1614Gf;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3302th
    public final void AFA(C3301tg c3301tg) {
        this.A00.A0G.set(c3301tg.A00() != null);
        if (this.A00.A0H.get() && this.A00.A05 != null) {
            this.A00.A05.AGG(c3301tg.A00() != null);
        }
    }
}
