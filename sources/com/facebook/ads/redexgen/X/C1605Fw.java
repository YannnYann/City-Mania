package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1605Fw implements InterfaceC2689je {
    public final /* synthetic */ C1602Ft A00;

    public C1605Fw(C1602Ft c1602Ft) {
        this.A00 = c1602Ft;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2689je
    public final boolean AAw() {
        if (this.A00.A0G.canGoBack()) {
            this.A00.A0G.goBack();
            return true;
        }
        return false;
    }
}
