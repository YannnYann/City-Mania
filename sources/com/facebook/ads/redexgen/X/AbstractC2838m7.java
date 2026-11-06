package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.m7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2838m7 {
    public static byte[] A00;
    public static String[] A01 = {"y8PCDKtn8ucpWGHfqNdB7sz1AvxWDZl3", "5Uq5Tef01e5KR7nT6LwcHl3Vg4tg40ar", "x9FTdDf00FrCnddkCjcdWeA", "gJiYN9ifTBNONuuvPUf8ziVgoR00vK3d", "v3Miu0NURb4uLk241XhX4ihrJ8pIqCRx", "uSiAXhU6isZ", "cMhUI2Br8Brps1bGyIGx9oWkH3OZduaS", "WInOHqHvpegDLpa6TzR108vL1QbKC1c7"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 31;
            if (A01[0].charAt(17) == 'S') {
                throw new RuntimeException();
            }
            A01[0] = "5vWxIODTobtAshUzPXWGHOLgD2JZewLd";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{105, 105, 100, 120, 116, 117, 125, 114, 124, 100, 111, 104, 100, 118, 104, 46, 46, 35, 47, 57, 46, 42, 53, 63, 57, 35, 57, 36, 40, 46, 61, 47, 38, 38, 43, 39, 49, 38, 34, 61, 55, 49, 43, 39, 48, 63, 43, 34, 49, 38, 39, 61, 59, 58};
    }

    static {
        A04();
    }

    public static String A01(C1642Hh c1642Hh) {
        return AbstractC2982oU.A00(c1642Hh).getString(A00(0, 15, 36), null);
    }

    public static String A02(C1642Hh c1642Hh) {
        return AbstractC2982oU.A00(c1642Hh).getString(A00(15, 17, 99), null);
    }

    public static String A03(C1642Hh c1642Hh) {
        return AbstractC2982oU.A00(c1642Hh).getString(A00(32, 22, 107), null);
    }

    public static void A05(C1642Hh c1642Hh) {
        AbstractC2982oU.A00(c1642Hh).edit().remove(A00(32, 22, 107)).apply();
    }

    public static void A06(C1642Hh c1642Hh, String str, String str2) {
        AbstractC2982oU.A00(c1642Hh).edit().putString(A00(32, 22, 107), str).putString(A00(15, 17, 99), str2).putString(A00(0, 15, 36), C3101qS.A07(C3101qS.A00())).apply();
    }
}
