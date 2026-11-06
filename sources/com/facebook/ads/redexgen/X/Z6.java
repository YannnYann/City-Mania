package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z6 {
    public static byte[] A02;
    public static String[] A03 = {"5C5MgsIa9PpNkbmDIOckXdgN8bNWJu40", "UoSf8BkyJ0is9eJHeJEEd25Yl88Narbs", "cndQmvJK2lbpUHLfTcCybvfaX46x7zx3", "sYzIfM2eIqwRkrW1UDPLJXBmSSC7kLky", "igX8V", "Hcb8m", "5WRfL2xfAQB1OLK5rOEaW3DejC4H2cv3", "zXEKiGH5LBoh71LUM1AArx8kb80jLzb7"};
    public static final Pattern A04;
    public int A00 = -1;
    public int A01 = -1;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A03;
            if (strArr[2].charAt(14) != strArr[7].charAt(14)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "kHcW9";
            strArr2[4] = "jyKl2";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
            i4++;
        }
    }

    public static void A01() {
        A02 = new byte[]{96, 30, 101, 14, 19, 7, 95, 19, 88, 127, 19, 120, 99, 69, 6, 67, 30, 22, 101, 14, 19, 7, 95, 19, 88, 127, 19, 120, 99, 69, 6, 67, 23, 30, 22, 101, 14, 19, 7, 95, 19, 88, 127, 19, 120, 99, 69, 6, 67, 23, 34, 46, 44, 111, 32, 49, 49, 45, 36, 111, 40, 21, 52, 47, 36, 50, 3, 62, 31, 4, 57, 39, 58, 40};
    }

    static {
        A01();
        A04 = Pattern.compile(A00(0, 50, 61));
    }

    private boolean A02(String str) {
        Matcher matcher = A04.matcher(str);
        if (matcher.find()) {
            try {
                int i = Integer.parseInt((String) N1.A0f(matcher.group(1)), 16);
                int i2 = Integer.parseInt((String) N1.A0f(matcher.group(2)), 16);
                if (i > 0 || i2 > 0) {
                    this.A00 = i;
                    this.A01 = i2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public final boolean A03() {
        return (this.A00 == -1 || this.A01 == -1) ? false : true;
    }

    public final boolean A04(int i) {
        int encoderDelay = i >> 12;
        int i2 = i & 4095;
        if (encoderDelay <= 0 && i2 <= 0) {
            String[] strArr = A03;
            String str = strArr[6];
            String str2 = strArr[0];
            int encoderPadding = str.charAt(17);
            if (encoderPadding != str2.charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "Zznty";
            strArr2[4] = "hZ8yw";
            return false;
        }
        this.A00 = encoderDelay;
        String[] strArr3 = A03;
        String str3 = strArr3[6];
        String str4 = strArr3[0];
        int encoderPadding2 = str3.charAt(17);
        if (encoderPadding2 != str4.charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr4 = A03;
        strArr4[2] = "UO2hDT3GmEt5f6LVg4xc25G07U0Y3fAG";
        strArr4[7] = "BFJ1sfZUnD4e94LvLJfDF6QEMH59jnIu";
        this.A01 = i2;
        return true;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A05(com.facebook.ads.androidx.media3.common.Metadata r10) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.Z6.A05(com.facebook.ads.androidx.media3.common.Metadata):boolean");
    }
}
