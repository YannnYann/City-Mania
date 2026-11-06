package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC2013Wn {
    public static byte[] A00;
    public static String[] A01 = {"XGW4HhyFX8orrxnbDzWvDvwklBbzPf8b", "dXWM1N1SNJ2DgBF2aHNNDPzP0Ky0TA0B", "g3hH72U14lcYXFrIJyuvwuQVTxcULMhJ", "ivC5N95w0bjRv0tpaGCz4IXZdRohRvzA", "FIimEYpiN3S417Cm4dySf7ezAocU4ph0", "pdverDB0kapyzWg", "9IcjPHQ", "aMBHwpY"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <T> InterfaceC2019Wt<T> A00(InterfaceC2019Wt<? super T> first, InterfaceC2019Wt<? super T> second) {
        return new A5(A04((InterfaceC2019Wt) AbstractC2020Wu.A04(first), (InterfaceC2019Wt) AbstractC2020Wu.A04(second)));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{28, 62, 41, 40, 37, 47, 45, 56, 41, 63, 98};
    }

    static {
        A05();
    }

    public static String A02(String methodName, Iterable<?> components) {
        StringBuilder sbAppend = new StringBuilder(A01(0, 11, 98)).append(methodName).append('(');
        boolean z = true;
        for (Object obj : components) {
            String[] strArr = A01;
            if (strArr[3].charAt(16) != strArr[1].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "Fgz5XwI3mxYX5MaQaBxoAlS5oGdULyzG";
            strArr2[1] = "c6ohRiAHCGzhaMLAa5rrssUSn3MeHuvo";
            if (!z) {
                sbAppend.append(',');
            }
            sbAppend.append(obj);
            String[] strArr3 = A01;
            if (strArr3[2].charAt(26) != strArr3[4].charAt(26)) {
                String[] strArr4 = A01;
                strArr4[5] = "tUhlrSKFHrZjhFh";
                strArr4[7] = "ufIOxEK";
                z = false;
            } else {
                A01[0] = "OvExshVH4SJpg9Dk0rzCo3Rky6NnLXpj";
                z = false;
            }
        }
        StringBuilder builder = sbAppend.append(')');
        return builder.toString();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<? super T> */
    public static <T> List<InterfaceC2019Wt<? super T>> A04(InterfaceC2019Wt<? super T> first, InterfaceC2019Wt<? super T> second) {
        return Arrays.asList(first, second);
    }
}
