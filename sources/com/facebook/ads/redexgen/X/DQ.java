package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DQ extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ AnonymousClass65 A00;
    public final /* synthetic */ C5V A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 82);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{2, 53, 38, 38, 37, 50, 41, 46, 39, 96, 41, 46, 36, 37, 38, 41, 46, 41, 52, 37, 44, 57};
    }

    public DQ(AnonymousClass65 anonymousClass65, C5V c5v) {
        this.A00 = anonymousClass65;
        this.A01 = c5v;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A00.A0h.getState() == EnumC2234cC.A02 && this.A00.A0h.getCurrentPositionInMillis() == A00()) {
            this.A00.A0f.AHa(A00(0, 22, 18));
        }
    }
}
