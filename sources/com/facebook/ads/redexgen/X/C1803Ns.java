package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ns, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1803Ns extends IllegalStateException {
    public static byte[] A02;
    public final int A00;
    public final int A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{72, 84, 72, 86, 44, 27, 8, 8, 11, 28, 78, 26, 1, 1, 78, 29, 3, 15, 2, 2, 78, 70};
    }

    public C1803Ns(int i, int i2) {
        super(A00(4, 18, 37) + i + A00(0, 3, 35) + i2 + A00(3, 1, 52));
        this.A00 = i;
        this.A01 = i2;
    }
}
