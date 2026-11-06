package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1519Cn extends AbstractRunnableC3004oq {
    public static byte[] A01;
    public final /* synthetic */ C13565p A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 73);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{53, 10, 7, 6, 12, 67, 13, 6, 21, 6, 17, 67, 16, 23, 2, 17, 23, 6, 7, 67, 19, 15, 2, 26, 10, 13, 4};
    }

    public C1519Cn(C13565p c13565p) {
        this.A00 = c13565p;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.A0J) {
            this.A00.A0S(A00(0, 27, 42));
        }
    }
}
