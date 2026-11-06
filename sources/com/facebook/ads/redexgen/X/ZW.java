package com.facebook.ads.redexgen.X;

import android.util.Base64;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.vorbis.VorbisComment;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ZW {
    public static byte[] A00;
    public static String[] A01 = {"CSNRKhbmsgdfQ7aSJvnwDgN2Z87LRzVR", "BGNWBKlJ4HuPsa2ZnSdmD0oh8EkwiDh8", "FsRU8HkAwVe7RCT94HEIDLk9huzVf", "JIDKT0Kle88LNybwjYJRV6JmiLTQ5sE4", "sKHcwWBr5rfr2dbZoykAG6aQt2aDb", "M", "i3aCrCY4btc3l2ekWM3kOdcVo1EcH", "WHExPvKTx7PFNdezHTj3QzMQhOYw1aTj"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static ZV A06(C1769Mk c1769Mk) throws L9 {
        A0C(1, c1769Mk, false);
        int iA0F = c1769Mk.A0F();
        int iA0I = c1769Mk.A0I();
        int iA0F2 = c1769Mk.A0F();
        int iA0E = c1769Mk.A0E();
        if (iA0E <= 0) {
            iA0E = -1;
        }
        int iA0E2 = c1769Mk.A0E();
        if (iA0E2 <= 0) {
            iA0E2 = -1;
            if (A01[5].length() == 16) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[1] = "ePPv72s43IVhlXZ7r99oDj0FnR0cec3p";
            strArr[0] = "TAVSpPlR4HHANZfnut3JDDWfCxBKXdg5";
        }
        int iA0E3 = c1769Mk.A0E();
        if (iA0E3 <= 0) {
            iA0E3 = -1;
        }
        int iA0I2 = c1769Mk.A0I();
        return new ZV(iA0F, iA0I, iA0F2, iA0E, iA0E2, iA0E3, (int) Math.pow(2.0d, iA0I2 & 15), (int) Math.pow(2.0d, (iA0I2 & 240) >> 4), (c1769Mk.A0I() & 1) > 0, Arrays.copyOf(c1769Mk.A0l(), c1769Mk.A0A()));
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{11, 113, 86, 94, 91, 82, 83, 23, 67, 88, 23, 71, 86, 69, 68, 82, 23, 97, 88, 69, 85, 94, 68, 23, 84, 88, 90, 90, 82, 89, 67, 13, 23, 85, 114, 122, 127, 118, 119, 51, 103, 124, 51, 99, 114, 97, 96, 118, 51, 101, 124, 97, 113, 122, 96, 51, 99, 122, 112, 103, 102, 97, 118, 8, 0, 17, 4, 1, 4, 17, 4, 26, 7, 9, 10, 6, 14, 26, 21, 12, 6, 17, 16, 23, 0, 34, 27, 6, 22, 29, 7, 33, 0, 29, 24, 103, 122, 114, 103, 97, 118, 103, 102, 34, 97, 106, 99, 112, 99, 97, 118, 103, 112, 113, 34, 37, 116, 109, 112, 96, 107, 113, 37, 33, 60, 52, 33, 39, 48, 33, 32, 100, 39, 43, 32, 33, 100, 38, 43, 43, 47, 100, 48, 43, 100, 55, 48, 37, 54, 48, 100, 51, 45, 48, 44, 100, 31, 116, 60, 113, 114, 104, 100, 116, 60, 112, 119, 104, 100, 116, 60, 112, 118, 25, 100, 37, 48, 100, 62, 35, 43, 62, 56, 47, 62, 63, 123, 51, 62, 58, 63, 62, 41, 123, 47, 34, 43, 62, 123, 86, 92, 95, 95, 66, 16, 68, 73, 64, 85, 16, 87, 66, 85, 81, 68, 85, 66, 16, 68, 88, 81, 94, 16, 1, 16, 94, 95, 68, 16, 84, 85, 83, 95, 84, 81, 82, 92, 85, 10, 16, 117, 97, 114, 126, 122, 125, 116, 51, 113, 122, 103, 51, 114, 117, 103, 118, 97, 51, 126, 124, 119, 118, 96, 51, 125, 124, 103, 51, 96, 118, 103, 51, 114, 96, 51, 118, 107, 99, 118, 112, 103, 118, 119, 49, 37, 54, 58, 62, 57, 48, 119, 53, 62, 35, 119, 50, 47, 39, 50, 52, 35, 50, 51, 119, 35, 56, 119, 53, 50, 119, 36, 50, 35, 93, 94, 94, 90, 68, 65, 17, 69, 72, 65, 84, 17, 86, 67, 84, 80, 69, 84, 67, 17, 69, 89, 80, 95, 17, 3, 17, 95, 94, 69, 17, 85, 84, 82, 94, 85, 80, 83, 93, 84, 11, 17, 82, 94, 79, 79, 86, 81, 88, 31, 75, 70, 79, 90, 31, 80, 75, 87, 90, 77, 31, 75, 87, 94, 81, 31, 15, 31, 81, 80, 75, 31, 76, 74, 79, 79, 80, 77, 75, 90, 91, 5, 31, 106, 118, 123, 121, 127, 114, 117, 118, 126, 127, 104, 58, 117, 124, 58, 110, 115, 119, 127, 58, 126, 117, 119, 123, 115, 116, 58, 110, 104, 123, 116, 105, 124, 117, 104, 119, 105, 58, 116, 117, 110, 58, 96, 127, 104, 117, 127, 126, 58, 117, 111, 110, 2, 21, 3, 25, 20, 5, 21, 36, 9, 0, 21, 80, 23, 2, 21, 17, 4, 21, 2, 80, 4, 24, 17, 30, 80, 66, 80, 25, 3, 80, 30, 31, 4, 80, 20, 21, 19, 31, 20, 17, 18, 28, 21, 6, 29, 82, 0, 23, 1, 23, 0, 4, 23, 22, 82, 16, 27, 6, 1, 82, 31, 7, 1, 6, 82, 16, 23, 82, 8, 23, 0, 29, 82, 19, 20, 6, 23, 0, 82, 31, 19, 2, 2, 27, 28, 21, 82, 17, 29, 7, 2, 30, 27, 28, 21, 82, 1, 6, 23, 2, 1, 65, 90, 90, 21, 70, 93, 90, 71, 65, 21, 93, 80, 84, 81, 80, 71, 15, 21};
    }

    static {
        A08();
    }

    public static int A00(int i) {
        int val = 0;
        while (i > 0) {
            val++;
            i >>>= 1;
        }
        return val;
    }

    public static long A01(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    public static Metadata A02(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] strArrA1P = N1.A1P(str, A07(0, 1, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
            int length = strArrA1P.length;
            String strA07 = A07(85, 10, 54);
            if (length != 2) {
                MV.A07(strA07, A07(1, 32, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE) + str);
            } else if (strArrA1P[0].equals(A07(63, 22, 7))) {
                try {
                    arrayList.add(PictureFrame.A00(new C1769Mk(Base64.decode(strArrA1P[1], 0))));
                } catch (RuntimeException e) {
                    int i2 = A01[4].length();
                    if (i2 != 29) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[7] = "iTort3w6F8uQNOr7xrlLxkVs8SYtT5Z1";
                    strArr[3] = "SSTu6mrb48DcNiSCKnJ8tB3UoGhdW8fv";
                    MV.A0A(strA07, A07(33, 30, 81), e);
                }
            } else {
                arrayList.add(new VorbisComment(strArrA1P[0], strArrA1P[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    /* JADX WARN: Incorrect condition in loop: B:18:0x0050 */
    /* JADX WARN: Incorrect condition in loop: B:8:0x0026 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.ZS A03(com.facebook.ads.redexgen.X.ZR r15) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZW.A03(com.facebook.ads.redexgen.X.ZR):com.facebook.ads.redexgen.X.ZS");
    }

    public static ZT A04(C1769Mk c1769Mk) throws L9 {
        return A05(c1769Mk, true, true);
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x0025 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.ZT A05(com.facebook.ads.redexgen.X.C1769Mk r9, boolean r10, boolean r11) throws com.facebook.ads.redexgen.X.L9 {
        /*
            if (r10 == 0) goto L7
            r1 = 3
            r0 = 0
            A0C(r1, r9, r0)
        L7:
            r3 = 7
            long r1 = r9.A0O()
            int r0 = (int) r1
            int r3 = r3 + 4
            java.lang.String r6 = r9.A0W(r0)
            int r0 = r6.length()
            int r3 = r3 + r0
            long r1 = r9.A0O()
            int r0 = (int) r1
            java.lang.String[] r5 = new java.lang.String[r0]
            int r7 = r3 + 4
            r8 = 0
        L22:
            long r3 = (long) r8
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L3e
            long r3 = r9.A0O()
            int r0 = (int) r3
            int r7 = r7 + 4
            java.lang.String r0 = r9.A0W(r0)
            r5[r8] = r0
            r0 = r5[r8]
            int r0 = r0.length()
            int r7 = r7 + r0
            int r8 = r8 + 1
            goto L22
        L3e:
            if (r11 == 0) goto L48
            int r0 = r9.A0I()
            r0 = r0 & 1
            if (r0 == 0) goto L50
        L48:
            int r1 = r7 + 1
            com.facebook.ads.redexgen.X.ZT r0 = new com.facebook.ads.redexgen.X.ZT
            r0.<init>(r6, r5, r1)
            return r0
        L50:
            r2 = 283(0x11b, float:3.97E-43)
            r1 = 30
            r0 = 21
            java.lang.String r1 = A07(r2, r1, r0)
            r0 = 0
            com.facebook.ads.redexgen.X.L9 r0 = com.facebook.ads.redexgen.X.L9.A01(r1, r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZW.A05(com.facebook.ads.redexgen.X.Mk, boolean, boolean):com.facebook.ads.redexgen.X.ZT");
    }

    public static void A09(int i, ZR zr) throws L9 {
        int j;
        int iA02 = zr.A02(6) + 1;
        for (int i2 = 0; i2 < iA02; i2++) {
            int iA022 = zr.A02(16);
            if (iA022 != 0) {
                MV.A05(A07(85, 10, 54), A07(355, 41, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) + iA022);
            } else {
                if (zr.A04()) {
                    j = zr.A02(4) + 1;
                } else {
                    j = 1;
                }
                if (zr.A04()) {
                    int iA023 = zr.A02(8) + 1;
                    for (int i3 = 0; i3 < iA023; i3++) {
                        int mappingsCount = i - 1;
                        zr.A03(A00(mappingsCount));
                        int mappingsCount2 = i - 1;
                        zr.A03(A00(mappingsCount2));
                    }
                }
                int mappingsCount3 = zr.A02(2);
                if (mappingsCount3 == 0) {
                    if (j > 1) {
                        for (int mappingsCount4 = 0; mappingsCount4 < i; mappingsCount4++) {
                            zr.A03(4);
                        }
                    }
                    for (int i4 = 0; i4 < j; i4++) {
                        zr.A03(8);
                        zr.A03(8);
                        zr.A03(8);
                        String[] strArr = A01;
                        String str = strArr[1];
                        String str2 = strArr[0];
                        int iCharAt = str.charAt(20);
                        int mappingsCount5 = str2.charAt(20);
                        if (iCharAt != mappingsCount5) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A01;
                        strArr2[1] = "p1VKg473YIoEl67qOqhRDsbexTPOBoSx";
                        strArr2[0] = "wLMZnqvdTHQilTz4OPQyD0YtUnpClS8H";
                    }
                } else {
                    throw L9.A01(A07(491, 58, 48), null);
                }
            }
        }
    }

    public static void A0A(ZR zr) throws L9 {
        int iA02 = zr.A02(6) + 1;
        for (int floorNumberOfBooks = 0; floorNumberOfBooks < iA02; floorNumberOfBooks++) {
            int iA022 = zr.A02(16);
            switch (iA022) {
                case 0:
                    zr.A03(8);
                    zr.A03(16);
                    zr.A03(16);
                    zr.A03(6);
                    zr.A03(8);
                    int floorCount = zr.A02(4);
                    int floorCount2 = floorCount + 1;
                    for (int i = 0; i < floorCount2; i++) {
                        zr.A03(8);
                    }
                    break;
                case 1:
                    String[] strArr = A01;
                    String str = strArr[7];
                    String str2 = strArr[3];
                    int floorCount3 = str.charAt(12);
                    if (floorCount3 != str2.charAt(12)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A01;
                    strArr2[7] = "R9QSrAUJj5wzNqYOn0guqAltbWTaHU34";
                    strArr2[3] = "mkcGS6UH8ZuiN3MgqrVe1LrFKb74rQlB";
                    int floorCount4 = zr.A02(5);
                    int i2 = -1;
                    int[] iArr = new int[floorCount4];
                    for (int i3 = 0; i3 < floorCount4; i3++) {
                        iArr[i3] = zr.A02(4);
                        if (iArr[i3] > i2) {
                            i2 = iArr[i3];
                        }
                    }
                    int[] classDimensions = new int[i2 + 1];
                    for (int j = 0; j < classDimensions.length; j++) {
                        classDimensions[j] = zr.A02(3) + 1;
                        int iA023 = zr.A02(2);
                        if (iA023 > 0) {
                            zr.A03(8);
                        }
                        for (int i4 = 0; i4 < (1 << iA023); i4++) {
                            zr.A03(8);
                        }
                    }
                    zr.A03(2);
                    int iA024 = zr.A02(4);
                    int maximumClass = 0;
                    int i5 = 0;
                    for (int count = 0; count < floorCount4; count++) {
                        maximumClass += classDimensions[iArr[count]];
                        while (i5 < maximumClass) {
                            zr.A03(iA024);
                            i5++;
                        }
                    }
                    break;
                    break;
                default:
                    throw L9.A01(A07(199, 41, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE) + iA022, null);
            }
        }
    }

    public static void A0B(ZR zr) throws L9 {
        int iA02 = zr.A02(6) + 1;
        for (int i = 0; i < iA02; i++) {
            int residueCount = zr.A02(16);
            if (residueCount <= 2) {
                zr.A03(24);
                zr.A03(24);
                zr.A03(24);
                int iA022 = zr.A02(6) + 1;
                int residueCount2 = A01[5].length();
                if (residueCount2 == 16) {
                    throw new RuntimeException();
                }
                A01[4] = "4LakvCkGGTsKaO9zNFmvNb4OHtg8M";
                zr.A03(8);
                int[] iArr = new int[iA022];
                for (int i2 = 0; i2 < iA022; i2++) {
                    int classifications = 0;
                    int residueType = zr.A02(3);
                    if (zr.A04()) {
                        classifications = zr.A02(5);
                    }
                    int i3 = classifications * 8;
                    iArr[i2] = i3 + residueType;
                }
                for (int classifications2 = 0; classifications2 < iA022; classifications2++) {
                    for (int residueType2 = 0; residueType2 < 8; residueType2++) {
                        int i4 = iArr[classifications2];
                        if ((i4 & (1 << residueType2)) != 0) {
                            zr.A03(8);
                        }
                    }
                }
            } else {
                throw L9.A01(A07(448, 43, 50), null);
            }
        }
    }

    public static boolean A0C(int i, C1769Mk c1769Mk, boolean z) throws L9 {
        if (c1769Mk.A07() < 7) {
            if (z) {
                return false;
            }
            throw L9.A01(A07(549, 18, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE) + c1769Mk.A07(), null);
        }
        if (c1769Mk.A0I() != i) {
            if (z) {
                return false;
            }
            throw L9.A01(A07(178, 21, 25) + Integer.toHexString(i), null);
        }
        if (c1769Mk.A0I() == 118 && c1769Mk.A0I() == 111 && c1769Mk.A0I() == 114 && c1769Mk.A0I() == 98 && c1769Mk.A0I() == 105) {
            int iA0I = c1769Mk.A0I();
            String[] strArr = A01;
            if (strArr[2].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A01[4] = "Td5hkq7Sy845zGsmk1htgwwInW642";
            if (iA0I == 115) {
                if (A01[4].length() != 29) {
                    throw new RuntimeException();
                }
                A01[5] = "qjbyChnn8";
                return true;
            }
        }
        if (z) {
            return false;
        }
        throw L9.A01(A07(95, 28, 64), null);
    }

    public static ZU[] A0D(C1769Mk c1769Mk, int i) throws L9 {
        A0C(5, c1769Mk, false);
        int iA0I = c1769Mk.A0I() + 1;
        ZR zr = new ZR(c1769Mk.A0l());
        int numberOfBooks = c1769Mk.A09();
        zr.A03(numberOfBooks * 8);
        for (int numberOfBooks2 = 0; numberOfBooks2 < iA0I; numberOfBooks2++) {
            A03(zr);
        }
        int numberOfBooks3 = zr.A02(6);
        int timeCount = numberOfBooks3 + 1;
        for (int i2 = 0; i2 < timeCount; i2++) {
            int numberOfBooks4 = zr.A02(16);
            if (numberOfBooks4 != 0) {
                throw L9.A01(A07(396, 52, 88), null);
            }
        }
        A0A(zr);
        A0B(zr);
        A09(i, zr);
        ZU[] zuArrA0E = A0E(zr);
        if (zr.A04()) {
            return zuArrA0E;
        }
        throw L9.A01(A07(240, 43, 81), null);
    }

    public static ZU[] A0E(ZR zr) {
        int iA02 = zr.A02(6) + 1;
        ZU[] zuArr = new ZU[iA02];
        for (int windowType = 0; windowType < iA02; windowType++) {
            boolean zA04 = zr.A04();
            int iA022 = zr.A02(16);
            int i = zr.A02(16);
            zuArr[windowType] = new ZU(zA04, iA022, i, zr.A02(8));
        }
        return zuArr;
    }
}
