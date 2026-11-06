package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2969oG {
    public static boolean A00;
    public static byte[] A01;
    public static String[] A02 = {"WcKxqk7L6BbuUQ1o7qmtmX6WSmYBceUW", "BgR1wHMut0LLHWxcn1vNnqjOmnDpA7yk", "nofrFHfyJT7pmG0QketyEOeNZ4PDBNqx", "tJ6rTzDc1vJYhzSuFM6hiX1fKi0tAXSV", "zeDIr51bIn8XcOdXOM6dVjfvh9EOKJZZ", "x4ZdmXYSSnH60B6WOaypztUTceO04NF4", "XXJyOaEVU", "eLFDRkAKNxNhqN4Dib4JBju5Hz9f2MYZ"};
    public static final Map<String, Long> A03;
    public static final Map<String, Long> A04;
    public static final Map<String, String> A05;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-35, 43, -14, -35, 43, -14, -35, 28, -14, -35, 28, -14, -35, 28, -27, -24, -27, -24, 22, -23, -21, 21, -20, 10, 0, 5, -2, -73, 3, -8, 10, 11, -73, -8, -5, -73, 9, -4, 10, 7, 6, 5, 10, -4, 5, 3, 18, -22, -1, 17, 18, -16, 3, 17, 14, 13, 12, 17, 3};
    }

    static {
        A04();
        A04 = new ConcurrentHashMap();
        A03 = new ConcurrentHashMap();
        A05 = new ConcurrentHashMap();
        A00 = false;
    }

    public static long A00(String str, EnumC2950nx enumC2950nx) {
        if (A04.containsKey(str)) {
            return A04.get(str).longValue();
        }
        switch (enumC2950nx) {
            case A0D:
            case A0E:
            case A0F:
            case A0C:
                return 15000L;
            default:
                return -1000L;
        }
    }

    public static String A02(C2970oH c2970oH) {
        AbstractC2958o5.A05(A01(44, 15, 94), A01(22, 22, 87), A01(14, 8, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        return A05.get(A03(c2970oH));
    }

    public static String A03(C2970oH c2970oH) {
        return String.format(Locale.US, A01(0, 14, 120), c2970oH.A09(), c2970oH.A07(), Integer.valueOf(c2970oH.A08() == null ? 0 : c2970oH.A08().A00()), Integer.valueOf(c2970oH.A08() == null ? 0 : c2970oH.A08().A01()), Integer.valueOf(c2970oH.A04()));
    }

    public static void A05(long j, C2970oH c2970oH) {
        A04.put(A03(c2970oH), Long.valueOf(j));
    }

    public static void A06(C2970oH c2970oH) {
        A03.put(A03(c2970oH), Long.valueOf(System.currentTimeMillis()));
    }

    public static void A07(String str, C2970oH c2970oH) {
        A05.put(A03(c2970oH), str);
    }

    public static boolean A08(C2970oH c2970oH) {
        if (A00) {
            return false;
        }
        String strA03 = A03(c2970oH);
        if (!A03.containsKey(strA03)) {
            return false;
        }
        Long l = A03.get(strA03);
        if (A02[3].charAt(17) != 'M') {
            throw new RuntimeException();
        }
        A02[6] = "HNdF4hlEpt9Mz";
        return System.currentTimeMillis() - l.longValue() < A00(strA03, c2970oH.A07());
    }
}
