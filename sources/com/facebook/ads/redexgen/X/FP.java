package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FP implements InterfaceC3054ph {
    public static byte[] A01;
    public final /* synthetic */ FM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 27);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-84, -64, -65, -70, -82, -73, -76, -82, -74};
    }

    public FP(FM fm) {
        this.A00 = fm;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        if (!this.A00.A0G && !this.A00.A0E) {
            this.A00.A0i(false, A00(0, 9, 48));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
    }
}
