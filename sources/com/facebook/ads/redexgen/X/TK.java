package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class TK extends Exception {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{40, 15, 7, 2, 11, 10, 78, 26, 1, 78, 31, 27, 11, 28, 23, 78, 27, 0, 10, 11, 28, 2, 23, 7, 0, 9, 78, 3, 11, 10, 7, 15, 78, 13, 1, 10, 11, 13, 29};
    }

    public TK(Throwable th) {
        super(A00(0, 39, 95), th);
    }
}
