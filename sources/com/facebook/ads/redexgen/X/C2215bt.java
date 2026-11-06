package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2215bt {
    public static byte[] A05;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{19, 39, 14, 19, 12, 0, 21, 91, 55, 60, 54, 41, 46, 59, 40, 46, 48, 55, 58, 47, 38, 42, 59, 38, 42};
    }

    public C2215bt(int i, int i2, int i3, int i4, int i5) {
        this.A02 = i;
        this.A00 = i2;
        this.A03 = i3;
        this.A04 = i4;
        this.A01 = i5;
    }

    public static C2215bt A00(String str) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        String strA01 = A01(1, 7, 105);
        AbstractC1747Ln.A07(str.startsWith(strA01));
        int startTimeIndex = strA01.length();
        String[] keys = TextUtils.split(str.substring(startTimeIndex), A01(0, 1, 55));
        int i5 = 0;
        while (true) {
            int startTimeIndex2 = keys.length;
            int textIndex = -1;
            if (i5 < startTimeIndex2) {
                String strA012 = XC.A01(keys[i5].trim());
                int startTimeIndex3 = strA012.hashCode();
                switch (startTimeIndex3) {
                    case 100571:
                        if (strA012.equals(A01(8, 3, 90))) {
                            textIndex = 1;
                        }
                        break;
                    case 3556653:
                        if (strA012.equals(A01(21, 4, 86))) {
                            textIndex = 3;
                        }
                        break;
                    case 109757538:
                        if (strA012.equals(A01(11, 5, 82))) {
                            textIndex = 0;
                        }
                        break;
                    case 109780401:
                        if (strA012.equals(A01(16, 5, 75))) {
                            textIndex = 2;
                        }
                        break;
                }
                switch (textIndex) {
                    case 0:
                        i = i5;
                        break;
                    case 1:
                        i2 = i5;
                        break;
                    case 2:
                        i3 = i5;
                        break;
                    case 3:
                        i4 = i5;
                        break;
                }
                i5++;
            } else {
                if (i != -1 && i2 != -1 && i4 != -1) {
                    return new C2215bt(i, i2, i3, i4, keys.length);
                }
                return null;
            }
        }
    }
}
