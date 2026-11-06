package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SG implements InterfaceC1861Qk {
    public static byte[] A01;
    public final /* synthetic */ C3Z A00;

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
        A01 = new byte[]{71, 115, 98, 111, 105, 38, 117, 111, 104, 109, 38, 99, 116, 116, 105, 116, 41, 1, 0, 13, 5, 39, 11, 0, 1, 7, 37, 17, 0, 13, 11, 54, 1, 10, 0, 1, 22, 1, 22, 110, 111, 82, 109, 100, 100, 113, 108, 109, 84, 98, 104, 102, 118, 115};
    }

    public SG(C3Z c3z) {
        this.A00 = c3z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AE2(Exception exc) {
        MV.A08(A00(16, 23, 83), A00(0, 16, 49), exc);
        this.A00.A0F.A0D(exc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AE3(C1857Qg c1857Qg) {
        this.A00.A0F.A0B(c1857Qg);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AE4(C1857Qg c1857Qg) {
        this.A00.A0F.A0C(c1857Qg);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AG7() {
        C3Z.A05(this.A00);
        if (0 != 0) {
            C3Z.A05(this.A00);
            throw new NullPointerException(A00(46, 8, 52));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AG8() {
        C3Z.A05(this.A00);
        if (0 != 0) {
            C3Z.A05(this.A00);
            throw new NullPointerException(A00(39, 7, 54));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AGS(long j) {
        this.A00.A0F.A03(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AGT() {
        this.A00.A26();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AH5(boolean z) {
        this.A00.A0F.A0I(z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1861Qk
    public final void AHS(int i, long j, long j2) {
        this.A00.A0F.A01(i, j, j2);
    }
}
