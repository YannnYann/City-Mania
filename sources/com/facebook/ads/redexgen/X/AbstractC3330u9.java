package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.u9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract /* synthetic */ class AbstractC3330u9 {
    public static byte[] A00;
    public static String[] A01 = {"9766QmI7GpgX53tkmMgs3wOhfalm", "jFzMZORvcmcNWTFWI7X1zB6g6", "HaOkDAN9Ib", "TzBdWvKXpojw9qkUfTAfiC3s7GvkX", "4sLwUUcBr8vq2yQ7ppMDNrhtIEp45yU", "CHCVxIC1D6S", "IbsDsuiIpDZ5QuQUlwls8N", "gieggNMTQJptfRnARSxqjUbkYMxH"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 115;
            if (A01[5].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[7] = "PyqOed2wcwdrI4SnXqFGQ6yTxny9";
            strArr[0] = "ayXSggX4OKfseoUHhaELz0kEcXXh";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{10, 11, 18, 15, 19, 15, 26, 11, 24};
    }

    static {
        A02();
    }

    public static /* synthetic */ String A01(CharSequence charSequence, CharSequence[] charSequenceArr) {
        if (charSequence == null) {
            throw new NullPointerException(A00(0, 9, 51));
        }
        StringBuilder sb = new StringBuilder();
        if (charSequenceArr.length > 0) {
            sb.append(charSequenceArr[0]);
            for (int i = 1; i < charSequenceArr.length; i++) {
                sb.append(charSequence);
                sb.append(charSequenceArr[i]);
            }
        }
        return sb.toString();
    }
}
