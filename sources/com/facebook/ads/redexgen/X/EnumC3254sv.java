package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum EnumC3254sv {
    A03,
    A02,
    A07,
    A06,
    A04,
    A05;

    public static byte[] A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-56, -47, -57, -30, -58, -60, -43, -57, -39, -36, -27, -26, -25, -14, -42, -44, -27, -41, 18, 10, 9, 14, 26, 18, 36, 23, 10, 8, 25, 6, 19, 12, 17, 10, -62, -75, -56, -67, -54, -71, 12, 14, 1, 27, 14, 1, 19, -3, 14, 0, 27, 15, -1, 14, 1, 1, 10, -70, -83, -65, -87, -70, -84, -57, -69, -67, -85, -85, -83, -69, -69, -57, -69, -85, -70, -83, -83, -74};
    }

    static {
        A01();
    }
}
