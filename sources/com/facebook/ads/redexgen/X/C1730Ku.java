package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ku, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1730Ku {
    public static boolean A00;
    public static String A01;
    public static byte[] A02;
    public static final HashSet<String> A03;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{108, 96, -119, -111, -111, -119, 80, -121, -102, -111, 80, -123, -111, -108, -121};
    }

    static {
        A02();
        A00 = true;
        A03 = new HashSet<>();
        A01 = A01(2, 13, 0);
    }

    public static synchronized String A00() {
        return A01;
    }

    public static synchronized void A03(String str) {
        if (A03.add(str)) {
            A01 += A01(0, 2, 30) + str;
        }
    }
}
