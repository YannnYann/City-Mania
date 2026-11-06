package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DC implements InterfaceC3054ph {
    public static String[] A05 = {"4fLWU9tbi95pCx3nPro7KHerG3MiEBjR", "73X4LJOS", "jDwv2", "V2jw96nkvx9K5GuWHdkzHABCNJ", "gmvDihmXFBWG84ggvmbjQS00S5CIE8uV", "EQQ9K2HOcRV0ikONePlXOLiNTOnUyKS6", "N0memcNAl18Rs2NftyKCGmLRqegm8Fay", "b7G4TYxTV15RcZP6x1WsV6RG4voJK8bx"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractRunnableC3004oq A01;
    public final /* synthetic */ InterfaceC3212sF A02;
    public final /* synthetic */ D8 A03;
    public final /* synthetic */ C1466Am A04;

    public DC(D8 d8, int i, C1466Am c1466Am, InterfaceC3212sF interfaceC3212sF, AbstractRunnableC3004oq abstractRunnableC3004oq) {
        this.A03 = d8;
        this.A00 = i;
        this.A04 = c1466Am;
        this.A02 = interfaceC3212sF;
        this.A01 = abstractRunnableC3004oq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() throws Throwable {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        this.A03.A09.setProgress(100.0f * (1.0f - (f / this.A00)));
        if (this.A04 != null) {
            C1466Am c1466Am = this.A04;
            float percentage = this.A00;
            c1466Am.A09((int) ((percentage - f) * 1000.0f));
        }
        InterfaceC3212sF interfaceC3212sF = this.A02;
        String[] strArr = A05;
        if (strArr[1].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A05[3] = "SkwjCSp5c0up35l3DC8U7AZP";
        if (interfaceC3212sF != null) {
            this.A02.AHH((int) (this.A00 - f));
        }
    }
}
