package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DI extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ C13655y A00;
    public final /* synthetic */ C5V A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{38, 17, 2, 2, 1, 22, 13, 10, 3, 68, 13, 10, 0, 1, 2, 13, 10, 13, 16, 1, 8, 29};
    }

    public DI(C13655y c13655y, C5V c5v) {
        this.A00 = c13655y;
        this.A01 = c5v;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A00.A0r.getState() == EnumC2234cC.A02 && this.A00.A0r.getCurrentPositionInMillis() == A00()) {
            this.A00.A13(A00(0, 22, 40));
        }
    }
}
