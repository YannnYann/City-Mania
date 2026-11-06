package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z7 {
    public static byte[] A09;
    public static String[] A0A = {"zOmLVw1wOYNuCJ1TjwgbMqsIM5Xd7opF", "DAw4BH5fWJuC1obpY7F4FxSeogTwBsQZ", "aXYxY1", "iTPUJszOkDlZsEWmywTZiXhhhCUznJst", "Q6aDniWoDlm9yDNpt2RsHRUKhb3wqfmT", "PKWa1tqjowvfh4JX3", "gayczC2P77oJFgKeJRxvyPW3YGaeKHSf", "4UIRzKxl0gqc5LO5mrecLRijl69UlOly"};
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final String A07;
    public final List<byte[]> A08;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Z7 A00(C1769Mk c1769Mk) throws L9 {
        try {
            c1769Mk.A0g(21);
            int iA0I = c1769Mk.A0I() & 3;
            int iA0I2 = c1769Mk.A0I();
            int i = 0;
            int iA09 = c1769Mk.A09();
            for (int i2 = 0; i2 < iA0I2; i2++) {
                c1769Mk.A0g(1);
                int iA0M = c1769Mk.A0M();
                for (int i3 = 0; i3 < iA0M; i3++) {
                    int iA0M2 = c1769Mk.A0M();
                    i += iA0M2 + 4;
                    c1769Mk.A0g(iA0M2);
                }
            }
            c1769Mk.A0f(iA09);
            byte[] bArr = new byte[i];
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            float f = 1.0f;
            String strA03 = null;
            for (int i10 = 0; i10 < iA0I2; i10++) {
                int iA0I3 = c1769Mk.A0I() & 63;
                int iA0M3 = c1769Mk.A0M();
                for (int i11 = 0; i11 < iA0M3; i11++) {
                    int iA0M4 = c1769Mk.A0M();
                    System.arraycopy(ZE.A03, 0, bArr, i4, ZE.A03.length);
                    int length = i4 + ZE.A03.length;
                    System.arraycopy(c1769Mk.A0l(), c1769Mk.A09(), bArr, length, iA0M4);
                    if (iA0I3 == 33 && i11 == 0) {
                        ZB zbA05 = ZE.A05(bArr, length, length + iA0M4);
                        i5 = zbA05.A0A;
                        i6 = zbA05.A08;
                        i7 = zbA05.A02;
                        i8 = zbA05.A01;
                        i9 = zbA05.A03;
                        f = zbA05.A00;
                        strA03 = Lv.A03(zbA05.A07, zbA05.A0B, zbA05.A06, zbA05.A05, zbA05.A0C, zbA05.A04);
                    }
                    i4 = length + iA0M4;
                    c1769Mk.A0g(iA0M4);
                }
            }
            return new Z7(i == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iA0I + 1, i5, i6, f, strA03, i7, i8, i9);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw L9.A01(A01(0, 25, 39), e);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0A;
            if (strArr[1].charAt(30) == strArr[0].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[6] = "OWGNzODCc3sXotxEe2bKsTodwr07GUPT";
            strArr2[7] = "ajyXzdpkreABZpkMDEnWCkAnbIcU3asn";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
            i4++;
        }
    }

    public static void A02() {
        A09 = new byte[]{-124, -79, -79, -82, -79, 95, -81, -96, -79, -78, -88, -83, -90, 95, -121, -124, -107, -126, 95, -94, -82, -83, -91, -88, -90};
    }

    static {
        A02();
    }

    public Z7(List<byte[]> initializationData, int i, int i2, int i3, float f, String str, int i4, int i5, int i6) {
        this.A08 = initializationData;
        this.A05 = i;
        this.A06 = i2;
        this.A04 = i3;
        this.A00 = f;
        this.A07 = str;
        this.A02 = i4;
        this.A01 = i5;
        this.A03 = i6;
    }
}
