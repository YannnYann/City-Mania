package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ys, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2065Ys {
    public static byte[] A03;
    public static String[] A04 = {"7VvaHwX3tfphwfCLWQfrQKIRAGdyloOa", "8J30auRI6e038TEwYpLi3vH7bvlxUiQ6", "hSwdMRFRGycphylBAB70n5Da", "mznulLX5Ll5NodqEsyQUwgMWUzAXgmUY", "cmJhU1MVkapOcnBOb7oIhNV01KwpAY2D", "s5j3KKDYzXZlMJmqYI2ZAxCcnpSFLDi0", "BZcBgqNXmD5jA968wQAMFNVVLX5zvNJl", "HgNUdEvTYIarvHFndhWfWmSF8F1sTAhB"};
    public final int A00;
    public final int A01;
    public final String A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 12);
            if (A04[7].charAt(21) != 'm') {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[5] = "dFWB2soWDPbDDNVpSYw8EbvcmaZh5iMl";
            strArr[0] = "6qvQDYI8gJoFkmQKclqU8TmUGkIK5sJJ";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-75, 107, 109, -95, -74, -93, 115, -126, -108, -122, -125, -76, -79, -62, 125};
    }

    static {
        A02();
    }

    public C2065Ys(int i, int i2, String str) {
        this.A01 = i;
        this.A00 = i2;
        this.A02 = str;
    }

    public static C2065Ys A00(C1769Mk c1769Mk) {
        String strA01;
        c1769Mk.A0g(2);
        int profileData = c1769Mk.A0I();
        int i = profileData >> 1;
        int iA0I = ((profileData & 1) << 5) | ((c1769Mk.A0I() >> 3) & 31);
        if (i == 4 || i == 5 || i == 7) {
            strA01 = A01(7, 4, 18);
        } else if (i == 8) {
            strA01 = A01(11, 4, 64);
        } else if (i == 9) {
            strA01 = A01(3, 4, 52);
        } else {
            return null;
        }
        StringBuilder sbAppend = new StringBuilder().append(strA01);
        String strA012 = A01(1, 2, 49);
        StringBuilder sbAppend2 = sbAppend.append(strA012).append(i);
        if (iA0I >= 10) {
            strA012 = A01(0, 1, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        }
        return new C2065Ys(i, iA0I, sbAppend2.append(strA012).append(iA0I).toString());
    }
}
