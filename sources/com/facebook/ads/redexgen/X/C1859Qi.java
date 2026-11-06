package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1859Qi extends Exception {
    public static byte[] A03;
    public static String[] A04 = {"vRe6fiZS0RxUfa", "Y9NyCcaPiLfSx202ix56", "5dgi3FY0pKi5WUVAp8toYu7LChGwTIVw", "tFDx84bJTnph9pp1FpFKHXG1ZsUu", "WBJpB195bhVerm", "6VtKlL6FVQrBQ7og9ReYilr1LHRL", "tJVQdfGQc04A9hPPtjK4zuv1vKfhvDKu", "orkzauAEDb4FhdM36SjggODARdIqIiTX"};
    public final int A00;
    public final VC A01;
    public final boolean A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        String[] strArr = A04;
        if (strArr[3].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[3] = "3UEaw10qnAN9Bb8Jv8f6U7418FGY";
        strArr2[5] = "ELjH8boEPtaACOqG42UrIzDs5Hyo";
        A03 = new byte[]{1, 68, 76, 22, 1, 7, 11, 18, 1, 22, 5, 6, 8, 1, 77, 66, 71, 75, 5, 30, 6, 36, 13, 42, 30, 15, 2, 4, 63, 25, 10, 8, 0, 42, 7, 7, 4, 8, 10, 31, 14, 15, 86, 34, 46, 7, 51, 34, 47, 41, 18, 52, 39, 37, 45, 102, 47, 40, 47, 50, 102, 32, 39, 47, 42, 35, 34, 102, 80, 124, 125, 117, 122, 116, 59};
    }

    static {
        A01();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @MetaExoPlayerCustomization
    public C1859Qi(int i, int i2, int i3, int i4, VC vc, boolean z, Exception exc, int i5) {
        StringBuilder sbAppend = new StringBuilder().append(A00(45, 23, 14)).append(i);
        String strA00 = A00(0, 1, 105);
        StringBuilder sbAppend2 = sbAppend.append(strA00).append(A00(68, 7, 91)).append(i2);
        String strA002 = A00(43, 2, 70);
        super(sbAppend2.append(strA002).append(i3).append(strA002).append(i4).append(A00(15, 28, 35)).append(i5).append(strA00).append(vc).append(z ? A00(1, 14, 44) : A00(0, 0, 60)).toString(), exc);
        this.A00 = i;
        this.A02 = z;
        this.A01 = vc;
    }
}
