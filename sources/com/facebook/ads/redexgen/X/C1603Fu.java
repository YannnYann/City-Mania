package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1603Fu implements InterfaceC3284tP {
    public final /* synthetic */ C1602Ft A00;

    public C1603Fu(C1602Ft c1602Ft) {
        this.A00 = c1602Ft;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGC(String str) {
        this.A00.A0E.setProgress(100);
        this.A00.A07 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGE(String str) {
        this.A00.A07 = true;
        this.A00.A0H.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGf(int i) {
        if (this.A00.A07) {
            this.A00.A0E.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGi(String str) {
        this.A00.A0H.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGl() {
        this.A00.A0D.AEH(14);
    }
}
