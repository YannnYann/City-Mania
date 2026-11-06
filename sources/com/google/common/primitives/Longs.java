package com.google.common.primitives;

import com.google.common.base.Preconditions;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class Longs {
    public static int hashCode(long value) {
        return (int) (value ^ (value >>> 32));
    }

    public static long max(long... array) {
        Preconditions.checkArgument(array.length > 0);
        long j = array[0];
        for (int i = 1; i < array.length; i++) {
            long j2 = array[i];
            if (j2 > j) {
                j = j2;
            }
        }
        return j;
    }

    public static final class AsciiDigits {
        public static final byte[] asciiDigits;

        static {
            byte[] bArr = new byte[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i < 10; i++) {
                bArr[i + 48] = (byte) i;
            }
            for (int i2 = 0; i2 < 26; i2++) {
                byte b = (byte) (i2 + 10);
                bArr[i2 + 65] = b;
                bArr[i2 + 97] = b;
            }
            asciiDigits = bArr;
        }

        public static int digit(char c) {
            if (c < 128) {
                return asciiDigits[c];
            }
            return -1;
        }
    }

    public static Long tryParse(String string, int radix) {
        if (((String) Preconditions.checkNotNull(string)).isEmpty()) {
            return null;
        }
        if (radix < 2 || radix > 36) {
            throw new IllegalArgumentException("radix must be between MIN_RADIX and MAX_RADIX but was " + radix);
        }
        int i = string.charAt(0) == '-' ? 1 : 0;
        if (i == string.length()) {
            return null;
        }
        int i2 = i + 1;
        int iDigit = AsciiDigits.digit(string.charAt(i));
        if (iDigit < 0 || iDigit >= radix) {
            return null;
        }
        long j = -iDigit;
        long j2 = radix;
        long j3 = Long.MIN_VALUE / j2;
        while (i2 < string.length()) {
            int i3 = i2 + 1;
            int iDigit2 = AsciiDigits.digit(string.charAt(i2));
            if (iDigit2 < 0 || iDigit2 >= radix || j < j3) {
                return null;
            }
            long j4 = j * j2;
            long j5 = iDigit2;
            if (j4 < j5 - Long.MIN_VALUE) {
                return null;
            }
            j = j4 - j5;
            i2 = i3;
        }
        if (i != 0) {
            return Long.valueOf(j);
        }
        if (j == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j);
    }
}
