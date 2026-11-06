package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DP implements InterfaceC3419va {
    public static byte[] A01;
    public final /* synthetic */ AnonymousClass65 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{34, 36, 50, 37, 8, 57, 54, 33, 62, 48, 54, 35, 62, 56, 57, 8, 62, 54, 53};
    }

    public DP(AnonymousClass65 anonymousClass65) {
        this.A00 = anonymousClass65;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AEL() {
        this.A00.A0e.A00(this.A00.A0h);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AEM() {
        this.A00.A0e.A01(this.A00.A0h);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AG5() {
        this.A00.A0S = false;
        if (this.A00.A0F != null) {
            this.A00.A0F.setProgress(100);
        }
        AbstractC3111qc.A0P(this.A00.A0F, 8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AGE(String str) {
        this.A00.A0S = true;
        AbstractC3111qc.A0P(this.A00.A0F, 0);
        if (this.A00.A0E != null) {
            this.A00.A0E.setUrl(str);
        }
        if (!this.A00.A0Q && this.A00.A02 > 1) {
            this.A00.A0Q = true;
            this.A00.A0l(A00(0, 19, 96));
        }
        AnonymousClass65.A05(this.A00);
    }
}
