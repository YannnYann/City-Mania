package com.facebook.ads.redexgen.X;

import android.text.SpannableStringBuilder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2232cA {
    public static byte[] A00;
    public static String[] A01 = {"Okqv6edinGosqwiTCfVs5i9M4fHgh6xq", "2coCig2EMHuJfyloBMevEgmKzZo11IjV", "rWe0XORH1IJaV", "CQdKn5atywFLktVwSw", "cnxOUeDTZRofLDgXiL8T5QUahwVDnW9r", "Wc3PkUG7q", "wjaXM5MFs2EkQt", "75mD8qoXLu9ES4osh"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2230c8 A00(C2230c8 c2230c8, Map<String, C2237cF> map) {
        while (c2230c8 != null) {
            C2237cF c2237cFA02 = A02(c2230c8.A04, c2230c8.A0H(), map);
            if (c2237cFA02 != null && c2237cFA02.A09() == 1) {
                return c2230c8;
            }
            c2230c8 = c2230c8.A03;
        }
        return null;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{72, 120, 127, 81, 79, 69, 101, 79, 69, 58, 2, 0, 25, 25, 0, 7, 14, 73, 27, 28, 11, 16, 61, 12, 17, 29, 73, 7, 6, 13, 12, 73, 30, 0, 29, 1, 6, 28, 29, 73, 12, 17, 8, 10, 29, 5, 16, 73, 6, 7, 12, 73, 29, 12, 17, 29, 73, 10, 1, 0, 5, 13, 71, 98, 66, 91, 90, 100, 83, 88, 82, 83, 68, 99, 66, 95, 90, 40, 83, 122, 47, 11, 67, 49, 127, 126, 46, 88};
    }

    static {
        A05();
    }

    public static C2230c8 A01(C2230c8 c2230c8, Map<String, C2237cF> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c2230c8);
        while (!arrayDeque.isEmpty()) {
            C2230c8 c2230c82 = (C2230c8) arrayDeque.pop();
            C2237cF c2237cFA02 = A02(c2230c82.A04, c2230c82.A0H(), map);
            if (c2237cFA02 != null && c2237cFA02.A09() == 3) {
                return c2230c82;
            }
            for (int i = c2230c82.A0C() - 1; i >= 0; i--) {
                arrayDeque.push(c2230c82.A0D(i));
                if (A01[1].charAt(25) != 'Z') {
                    throw new RuntimeException();
                }
                A01[1] = "oUkj0cLWt95NaAiE8zQz0XIeFZLZPawv";
            }
        }
        return null;
    }

    public static C2237cF A02(C2237cF c2237cF, String[] strArr, Map<String, C2237cF> map) {
        int i = 0;
        if (c2237cF == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                C2237cF c2237cF2 = new C2237cF();
                int length = strArr.length;
                while (i < length) {
                    c2237cF2.A0O(map.get(strArr[i]));
                    i++;
                }
                return c2237cF2;
            }
        } else {
            if (strArr != null) {
                int length2 = strArr.length;
                String[] strArr2 = A01;
                if (strArr2[4].charAt(5) != strArr2[0].charAt(5)) {
                    throw new RuntimeException();
                }
                A01[5] = "4YMNwpxyde5XBlHHujAjw4k74P";
                if (length2 == 1) {
                    return c2237cF.A0O(map.get(strArr[0]));
                }
            }
            if (strArr != null && strArr.length > 1) {
                int length3 = strArr.length;
                while (i < length3) {
                    C2237cF c2237cF3 = map.get(strArr[i]);
                    if (A01[5].length() != 13) {
                        String[] strArr3 = A01;
                        strArr3[4] = "VhALseOgtR9NpKL9OILQfSa1j4ck4peO";
                        strArr3[0] = "9qPeIeKoCdpJMZvtIza7OrA3T7xUyVxS";
                        c2237cF.A0O(c2237cF3);
                        i++;
                    } else {
                        A01[5] = "VIw";
                        c2237cF.A0O(c2237cF3);
                        i += 0;
                    }
                }
                return c2237cF;
            }
        }
        return c2237cF;
    }

    public static String A04(String str) {
        String strA03 = A03(1, 2, 85);
        String strA032 = A03(0, 1, 98);
        String strReplaceAll = str.replaceAll(strA03, strA032);
        String out = A03(4, 5, 79);
        String strReplaceAll2 = strReplaceAll.replaceAll(out, strA032);
        String strA033 = A03(3, 1, 81);
        String strReplaceAll3 = strReplaceAll2.replaceAll(strA032, strA033);
        String out2 = A03(77, 11, 83);
        return strReplaceAll3.replaceAll(out2, strA033);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A06(android.text.Spannable r9, int r10, int r11, com.facebook.ads.redexgen.X.C2237cF r12, com.facebook.ads.redexgen.X.C2230c8 r13, java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.C2237cF> r14, int r15) {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2232cA.A06(android.text.Spannable, int, int, com.facebook.ads.redexgen.X.cF, com.facebook.ads.redexgen.X.c8, java.util.Map, int):void");
    }

    public static void A07(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }
}
