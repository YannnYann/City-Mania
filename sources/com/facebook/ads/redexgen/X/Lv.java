package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class Lv {
    public static byte[] A00;
    public static final byte[] A01;
    public static final String[] A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-115, -124, -113, -111, -73, -32, -109, -101, 22, 43, 24, -26, -29, -38, -27, -25, 13, -38, -27, -25, 13, -38, -27, -25, 13, 21, 35, 16, -34, -37, -46, 32, -46, 17, -37, -46, 5, -37, -46, 16, -46, 17};
    }

    static {
        A05();
        A01 = new byte[]{0, 0, 0, 1};
        A02 = new String[]{A02(0, 0, 67), A02(5, 1, 97), A02(6, 1, 19), A02(7, 1, 26)};
    }

    public static Pair<Integer, Integer> A00(byte[] bArr) {
        C1769Mk c1769Mk = new C1769Mk(bArr);
        c1769Mk.A0f(9);
        int sampleRate = c1769Mk.A0I();
        c1769Mk.A0f(20);
        return Pair.create(Integer.valueOf(c1769Mk.A0L()), Integer.valueOf(sampleRate));
    }

    public static String A01(int i, int i2, int i3) {
        return String.format(A02(8, 17, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String A03(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        StringBuilder sb = new StringBuilder(N1.A0n(A02(25, 17, 111), A02[i], Integer.valueOf(i2), Integer.valueOf(i3), Character.valueOf(z ? 'H' : 'L'), Integer.valueOf(i4)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i5 = 0; i5 < length; i5++) {
            sb.append(String.format(A02(0, 5, 33), Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    public static List<byte[]> A04(boolean z) {
        byte[] bArr = new byte[1];
        if (z) {
            bArr[0] = 1;
        } else {
            bArr[0] = 0;
        }
        return Collections.singletonList(bArr);
    }

    public static boolean A06(List<byte[]> initializationData) {
        return initializationData.size() == 1 && initializationData.get(0).length == 1 && initializationData.get(0)[0] == 1;
    }

    public static byte[] A07(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[A01.length + i2];
        byte[] bArr3 = A01;
        byte[] nalUnit = A01;
        System.arraycopy(bArr3, 0, bArr2, 0, nalUnit.length);
        byte[] nalUnit2 = A01;
        System.arraycopy(bArr, i, bArr2, nalUnit2.length, i2);
        return bArr2;
    }
}
