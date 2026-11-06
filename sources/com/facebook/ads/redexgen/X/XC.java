package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class XC {
    public static int A00(char c) {
        return (char) ((c | ' ') - 97);
    }

    public static String A01(String string) {
        int length = string.length();
        int i = 0;
        while (i < length) {
            if (A02(string.charAt(i))) {
                char[] chars = string.toCharArray();
                while (i < length) {
                    char c = chars[i];
                    if (A02(c)) {
                        int length2 = c ^ ' ';
                        chars[i] = (char) length2;
                    }
                    i++;
                }
                return String.valueOf(chars);
            }
            i++;
        }
        return string;
    }

    public static boolean A02(char c) {
        return c >= 'A' && c <= 'Z';
    }

    public static boolean A03(CharSequence s1, CharSequence s2) {
        int length = s1.length();
        if (s1 == s2) {
            return true;
        }
        int length2 = s2.length();
        if (length != length2) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = s1.charAt(i);
            char cCharAt2 = s2.charAt(i);
            if (cCharAt != cCharAt2) {
                int iA00 = A00(cCharAt);
                if (iA00 < 26) {
                    int length3 = A00(cCharAt2);
                    if (iA00 == length3) {
                    }
                }
                return false;
            }
        }
        return true;
    }
}
