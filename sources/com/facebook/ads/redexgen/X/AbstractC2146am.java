package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MdtaMetadataEntry;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.am, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public abstract class AbstractC2146am {
    public static byte[] A00;
    public static String[] A01 = {"WouLADTbRBl5g5wHsyKoW814q8FsVw3u", "GMk", "C3NujB9Ldz00Bwj3cyq4S4IS2oxu64Ei", "WVtuG4yx95rlTOcNAZ52XHOp2OeNsFdy", "Lrxo22", "Yg6ao1hv68HXCXuOa76ikt7PfuXXmQjb", "ZO030w", "7Xo05YW8vTwyfPygL6chko6rbGomDMfX"};
    public static final byte[] A02;

    @MetaExoPlayerCustomization
    public static final int[] A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x016d A[PHI: r0 r1
      0x016d: PHI (r0v44 int) = (r0v20 int), (r0v46 int) binds: [B:67:0x01be, B:45:0x016b] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r1v18 boolean) = (r1v7 boolean), (r1v20 boolean) binds: [B:67:0x01be, B:45:0x016b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.androidx.media3.common.ColorInfo A0B(com.facebook.ads.redexgen.X.C1769Mk r10) {
        /*
            Method dump skipped, instruction units count: 559
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0B(com.facebook.ads.redexgen.X.Mk):com.facebook.ads.androidx.media3.common.ColorInfo");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Metadata A0F(PF pf) {
        PE peA03 = pf.A03(1751411826);
        PE peA032 = pf.A03(1801812339);
        PE peA033 = pf.A03(1768715124);
        if (peA03 == null || peA032 == null || peA033 == null || A03(peA03.A00) != 1835299937) {
            return null;
        }
        C1769Mk c1769Mk = peA032.A00;
        c1769Mk.A0f(12);
        int iA0C = c1769Mk.A0C();
        String[] strArr = new String[iA0C];
        for (int i = 0; i < iA0C; i++) {
            int iA0C2 = c1769Mk.A0C();
            c1769Mk.A0g(4);
            strArr[i] = c1769Mk.A0W(iA0C2 - 8);
        }
        C1769Mk c1769Mk2 = peA033.A00;
        c1769Mk2.A0f(8);
        ArrayList arrayList = new ArrayList();
        while (true) {
            int iA07 = c1769Mk2.A07();
            String[] strArr2 = A01;
            if (strArr2[3].charAt(0) != strArr2[0].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr3 = A01;
            strArr3[3] = "W6whw8KCI5GVkcQmUBH1LClL3nJKWtM6";
            strArr3[0] = "Wth3VAdKagh3f4d85VOett7mvpgjX203";
            if (iA07 <= 8) {
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new Metadata(arrayList);
            }
            int iA09 = c1769Mk2.A09();
            int iA0C3 = c1769Mk2.A0C();
            int iA0C4 = c1769Mk2.A0C() - 1;
            if (iA0C4 < 0 || iA0C4 >= strArr.length) {
                MV.A07(A0M(178, 11, 23), A0M(359, 41, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) + iA0C4);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryA09 = AbstractC2157ax.A09(c1769Mk2, iA09 + iA0C3, strArr[iA0C4]);
                if (mdtaMetadataEntryA09 != null) {
                    arrayList.add(mdtaMetadataEntryA09);
                }
            }
            c1769Mk2.A0f(iA09 + iA0C3);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization
    public static C2170bA A0J(PF pf, PE pe, long j, DrmInitData drmInitData, boolean z, boolean z2) throws L9 {
        Pair<long[], long[]> pairA09;
        long j2 = j;
        PF pf2 = (PF) AbstractC1747Ln.A01(pf.A02(1835297121));
        int iA01 = A01(A03(((PE) AbstractC1747Ln.A01(pf2.A03(1751411826))).A00));
        if (iA01 == -1) {
            return null;
        }
        C2145al c2145alA0I = A0I(((PE) AbstractC1747Ln.A01(pf.A03(1953196132))).A00);
        if (j2 == -9223372036854775807L) {
            j2 = c2145alA0I.A02;
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "xTME0L";
            strArr[6] = "2a08Z0";
        }
        long jA05 = A05(pe.A00);
        long jA0U = j2 == -9223372036854775807L ? -9223372036854775807L : N1.A0U(j2, 1000000L, jA05);
        PF pf3 = (PF) AbstractC1747Ln.A01(((PF) AbstractC1747Ln.A01(pf2.A02(1835626086))).A02(1937007212));
        Pair<Long, String> pairA06 = A06(((PE) AbstractC1747Ln.A01(pf2.A03(1835296868))).A00);
        PE peA03 = pf3.A03(1937011556);
        if (peA03 == null) {
            throw L9.A01(A0M(288, 63, 2), null);
        }
        C2144ak c2144akA0H = A0H(peA03.A00, c2145alA0I.A00, c2145alA0I.A01, (String) pairA06.second, drmInitData, z2);
        long[] jArr = null;
        long[] jArr2 = null;
        if (!z) {
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            A01[7] = "1jkQAV9F2Faz7Lw0QBj6kQN0MLyuueWG";
            PF pfA02 = pf.A02(1701082227);
            if (pfA02 != null && (pairA09 = A09(pfA02)) != null) {
                jArr = (long[]) pairA09.first;
                jArr2 = (long[]) pairA09.second;
            }
        }
        if (c2144akA0H.A02 == null) {
            return null;
        }
        return new C2170bA(c2145alA0I.A00, iA01, ((Long) pairA06.first).longValue(), jA05, jA0U, c2144akA0H.A02, c2144akA0H.A01, c2144akA0H.A03, c2144akA0H.A00, jArr, jArr2);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2171bB A0K(C1769Mk c1769Mk, int i, int i2, String str) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            c1769Mk.A0f(i3);
            int iA0C = c1769Mk.A0C();
            if (c1769Mk.A0C() == 1952804451) {
                int iA03 = AbstractC2140ag.A03(c1769Mk.A0C());
                c1769Mk.A0g(1);
                int i4 = 0;
                int i5 = 0;
                if (iA03 == 0) {
                    c1769Mk.A0g(1);
                } else {
                    int iA0I = c1769Mk.A0I();
                    i4 = (iA0I & 240) >> 4;
                    i5 = iA0I & 15;
                }
                int iA0I2 = c1769Mk.A0I();
                String[] strArr = A01;
                if (strArr[2].charAt(17) == strArr[5].charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[3] = "WR5yQE07EPwXeStrRv7wUYRzVgUyk0tI";
                strArr2[0] = "WlSh861620yb3Z9O8L0R1EJEh8XVCL9Y";
                boolean z = iA0I2 == 1;
                int iA0I3 = c1769Mk.A0I();
                byte[] bArr = new byte[16];
                c1769Mk.A0k(bArr, 0, bArr.length);
                byte[] bArr2 = null;
                if (z && iA0I3 == 0) {
                    int iA0I4 = c1769Mk.A0I();
                    bArr2 = new byte[iA0I4];
                    c1769Mk.A0k(bArr2, 0, iA0I4);
                }
                return new C2171bB(z, str, iA0I3, bArr, i4, i5, bArr2);
            }
            i3 += iA0C;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02cf, code lost:
    
        if (r27 <= 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02d5, code lost:
    
        if (r11.A0L() == 0) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02d7, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x02d8, code lost:
    
        if (r9 != 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02da, code lost:
    
        if (r12 != 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02dc, code lost:
    
        if (r5 != 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02de, code lost:
    
        if (r13 != 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02e0, code lost:
    
        if (r10 != 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02e2, code lost:
    
        if (r14 != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02e4, code lost:
    
        r0 = r34;
        r6 = new java.lang.StringBuilder().append(A0M(207, 32, 99)).append(r0.A00).append(A0M(144, 34, 52)).append(r9).append(A0M(14, 35, 18)).append(r12).append(A0M(85, 26, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE)).append(r5).append(A0M(111, 33, 70)).append(r13).append(A0M(49, 36, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR_VALUE)).append(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0359, code lost:
    
        if (r14 != false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x035b, code lost:
    
        r3 = A0M(0, 14, 58);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0364, code lost:
    
        com.facebook.ads.redexgen.X.MV.A07(r15, r6.append(r3).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x036f, code lost:
    
        r25 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x039c, code lost:
    
        r3 = A0M(0, 0, 21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03a5, code lost:
    
        r0 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x03a8, code lost:
    
        r11.A0C();
        r27 = r27 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02c8, code lost:
    
        r1 = r1 + ((long) r26);
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02cd, code lost:
    
        if (r11 == null) goto L104;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d6  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2173bD A0L(com.facebook.ads.redexgen.X.C2170bA r34, com.facebook.ads.redexgen.X.PF r35, com.facebook.ads.redexgen.X.Z6 r36) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 1680
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0L(com.facebook.ads.redexgen.X.bA, com.facebook.ads.redexgen.X.PF, com.facebook.ads.redexgen.X.Z6):com.facebook.ads.redexgen.X.bD");
    }

    public static String A0M(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 82);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0P() {
        A00 = new byte[]{68, 72, 11, 28, 28, 27, 72, 1, 6, 30, 9, 4, 1, 12, 108, 96, 50, 37, 45, 33, 41, 46, 41, 46, 39, 19, 33, 45, 48, 44, 37, 51, 1, 52, 20, 41, 45, 37, 51, 52, 33, 45, 48, 4, 37, 44, 52, 33, 96, 7, 11, 89, 78, 70, 74, 66, 69, 66, 69, 76, 120, 74, 70, 91, 71, 78, 88, 106, 95, 127, 66, 70, 78, 88, 95, 74, 70, 91, 100, 77, 77, 88, 78, 95, 11, 3, 15, 93, 74, 66, 78, 70, 65, 70, 65, 72, 124, 78, 66, 95, 67, 74, 92, 102, 65, 108, 71, 90, 65, 68, 15, 56, 52, 102, 113, 121, 117, 125, 122, 125, 122, 115, 64, 125, 121, 113, 103, 96, 117, 121, 100, 80, 113, 120, 96, 117, 87, 124, 117, 122, 115, 113, 103, 52, 92, 70, 20, 3, 11, 7, 15, 8, 15, 8, 1, 53, 31, 8, 5, 14, 20, 9, 8, 15, 28, 7, 18, 15, 9, 8, 53, 7, 11, 22, 10, 3, 21, 70, 4, 49, 42, 40, 21, 36, 55, 54, 32, 55, 54, 24, 37, 62, 56, 46, 46, 52, 43, 56, 125, 50, 63, 40, 2, 46, 52, 39, 56, 120, 95, 82, 94, 95, 66, 88, 66, 69, 84, 95, 69, 17, 66, 69, 83, 93, 17, 83, 94, 73, 17, 87, 94, 67, 17, 69, 67, 80, 82, 90, 17, 92, 123, 99, 116, 121, 124, 113, 53, 102, 116, 120, 101, 121, 112, 53, 103, 116, 97, 112, 53, 115, 122, 103, 53, 81, 122, 121, 119, 108, 53, 65, 103, 96, 112, 93, 81, 53, 88, 89, 69, 53, 102, 97, 103, 112, 116, 120, 47, 53, 29, 49, 60, 54, 63, 34, 61, 53, 52, 112, 35, 49, 61, 32, 60, 53, 112, 36, 49, 50, 60, 53, 112, 120, 35, 36, 50, 60, 121, 112, 61, 57, 35, 35, 57, 62, 55, 112, 35, 49, 61, 32, 60, 53, 112, 52, 53, 35, 51, 34, 57, 32, 36, 57, 63, 62, 112, 120, 35, 36, 35, 52, 121, 95, 96, 101, 99, 88, 117, 113, 116, 124, 68, 70, 95, 95, 74, 75, 15, 66, 74, 91, 78, 75, 78, 91, 78, 15, 88, 70, 91, 71, 15, 90, 65, 68, 65, 64, 88, 65, 15, 68, 74, 86, 15, 70, 65, 75, 74, 87, 21, 15, 31, 57, 42, 40, 32, 107, 35, 42, 56, 107, 37, 36, 107, 56, 42, 38, 59, 39, 46, 107, 63, 42, 41, 39, 46, 107, 56, 34, 49, 46, 107, 34, 37, 45, 36, 57, 38, 42, 63, 34, 36, 37, 30, 37, 46, 51, 59, 46, 40, 63, 46, 47, 107, 46, 37, 47, 107, 36, 45, 107, 40, 35, 62, 37, 32, 107, 47, 42, 63, 42, 78, 117, 104, 110, 107, 107, 116, 105, 111, 126, 127, 59, 120, 116, 119, 116, 105, 59, 111, 98, 107, 126, 33, 59, 95, 100, 121, 127, 122, 122, 101, 120, 126, 111, 110, 42, 99, 100, 99, 126, 99, 107, 102, 85, 110, 99, 121, 122, 102, 107, 115, 85, 110, 111, 102, 107, 115, 85, 122, 120, 111, 121, 111, 100, 126, 85, 108, 102, 107, 109, 87, 108, 113, 119, 114, 114, 109, 112, 118, 103, 102, 34, 111, 103, 102, 107, 99, 34, 112, 99, 118, 103, 44, 103, 92, 65, 71, 66, 66, 93, 64, 70, 87, 86, 18, 93, 80, 71, 109, 87, 74, 70, 87, 92, 65, 91, 93, 92, 109, 84, 94, 83, 85, 31, 36, 57, 63, 58, 58, 37, 56, 62, 47, 46, 106, 37, 40, 63, 21, 62, 51, 58, 47, 112, 106, 0, 59, 38, 32, 37, 37, 58, 39, 33, 48, 49, 117, 39, 48, 49, 32, 54, 48, 49, 10, 38, 33, 60, 57, 57, 10, 37, 60, 54, 33, 32, 39, 48, 10, 61, 48, 52, 49, 48, 39, 40, 19, 14, 8, 13, 13, 18, 15, 9, 24, 25, 93, 9, 20, 16, 20, 19, 26, 34, 20, 19, 27, 18, 34, 13, 15, 24, 14, 24, 19, 9, 34, 27, 17, 28, 26, 70, 87, 87, 75, 78, 68, 70, 83, 78, 72, 73, 8, 83, 83, 74, 75, 12, 95, 74, 75, 109, 124, 124, 96, 101, 111, 109, 120, 101, 99, 98, 35, 116, 33, 111, 109, 97, 105, 126, 109, 33, 97, 99, 120, 101, 99, 98, 36, 53, 53, 41, 44, 38, 36, 49, 44, 42, 43, 106, 61, 104, 40, 53, 113, 104, 38, 32, 36, 104, 115, 117, 125, 32, 49, 49, 45, 40, 34, 32, 53, 40, 46, 47, 110, 57, 108, 44, 49, 117, 108, 55, 53, 53, 24, 9, 9, 21, 16, 26, 24, 13, 16, 22, 23, 86, 1, 84, 8, 12, 16, 26, 18, 13, 16, 20, 28, 84, 13, 1, 74, 30, 97, 117, 100, 105, 111, 47, 51, 103, 112, 112, 77, 89, 72, 69, 67, 3, 77, 79, 31, 50, 38, 55, 58, 60, 124, 50, 48, 103, 51, 39, 54, 59, 61, 125, 51, 62, 51, 49, 36, 48, 33, 44, 42, 106, 36, 40, 55, 104, 50, 39, 74, 94, 79, 66, 68, 4, 78, 74, 72, 24, 110, 122, 107, 102, 96, 32, 105, 99, 110, 108, 53, 33, 48, 61, 59, 123, 51, 99, 101, 101, 121, 53, 56, 53, 35, 99, 119, 102, 107, 109, 45, 101, 53, 51, 51, 47, 111, 110, 99, 117, 66, 86, 71, 74, 76, 12, 78, 75, 66, 18, 88, 76, 93, 80, 86, 22, 84, 81, 84, 8, 57, 45, 60, 49, 55, 119, 53, 40, 108, 57, 117, 52, 57, 44, 53, 8, 28, 13, 0, 6, 70, 4, 25, 12, 14, 58, 46, 63, 50, 52, 116, 52, 43, 46, 40, 21, 1, 16, 29, 27, 91, 6, 21, 3, 9, 29, 12, 1, 7, 71, 28, 26, 29, 13, 69, 0, 12, 53, 33, 48, 61, 59, 123, 34, 58, 48, 122, 48, 
        32, 39, 84, 64, 81, 92, 90, 26, 67, 91, 81, 27, 81, 65, 70, 27, 93, 81, 72, 92, 77, 64, 70, 6, 95, 71, 77, 7, 77, 93, 90, 7, 65, 77, 18, 89, 91, 70, 79, 64, 69, 76, 20, 69, 75, 91, 71, 83, 66, 79, 73, 9, 80, 72, 66, 8, 66, 82, 85, 8, 83, 78, 66, 29, 86, 84, 73, 64, 79, 74, 67, 27, 86, 20, 63, 62, 63, 109, 57, 56, 57, 41, 47, 41, 34, 47, 109, 107, 96, 125, 118, 125, 124, 121, 113, 84, 97, 122, 120, 70, 124, 111, 112, 53, 120, 96, 102, 97, 53, 119, 112, 53, 101, 122, 102, 124, 97, 124, 99, 112, 108, 120, 103, 107, 42, 107, 126, 101, 103, 42, 99, 121, 42, 103, 107, 100, 110, 107, 126, 101, 120, 115, 44, 60, 55, 54, 127, 62, 43, 48, 50, 127, 54, 44, 127, 50, 62, 49, 59, 62, 43, 48, 45, 38, 106, 123, 112, 125, 62, 127, 106, 113, 115, 62, 119, 109, 62, 115, 127, 112, 122, 127, 106, 113, 108, 103, 76, 83, 94, 95, 85, 21, 9, 93, 74, 74, 38, 57, 52, 53, 63, 127, 49, 38, 96, 97, 124, 99, 110, 111, 101, 37, 107, 124, 105, 83, 76, 65, 64, 74, 10, 65, 74, 73, 71, 92, 8, 83, 76, 86, 76, 74, 75, 41, 54, 59, 58, 48, 112, 55, 58, 41, 60, 54, 41, 36, 37, 47, 111, 45, 48, 37, 39, 7, 24, 21, 20, 30, 94, 9, 92, 7, 31, 21, 95, 30, 31, 67, 95, 7, 1, 73, 97, 126, 115, 114, 120, 56, 111, 58, 97, 121, 115, 57, 120, 121, 37, 57, 97, 103, 46};
        if (A01[1].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "YHpxcEezyIbk6ar2MuZd0BLdeeshQf0w";
        strArr[5] = "Dv9oA4Exk3sh0R2AQFMUOP841JkccEpr";
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02f3, code lost:
    
        if (r8 != null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02f5, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02f6, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r1, null);
        r8 = A0M(1186, 10, 104);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0306, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x030b, code lost:
    
        if (r4 != 1702061171) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x030d, code lost:
    
        if (r8 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x030f, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0310, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r1, null);
        r17 = A0G(r34, r2);
        r8 = r17.A02;
        r0 = r17.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0320, code lost:
    
        if (r0 == null) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0322, code lost:
    
        r34 = com.facebook.ads.redexgen.X.AbstractC14399l.A04(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0328, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x032a, code lost:
    
        r15 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x033f, code lost:
    
        if (r15[2].charAt(17) == r15[5].charAt(17)) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0341, code lost:
    
        r15 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
        r15[4] = "MYNaPU";
        r15[6] = "liPs3C";
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x034d, code lost:
    
        if (r4 != 1885434736) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x034f, code lost:
    
        r27 = A00(r34, r2);
        r31 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x035a, code lost:
    
        if (r4 != 1937126244) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x035c, code lost:
    
        r30 = A0W(r34, r2, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0365, code lost:
    
        if (r4 != 1936995172) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0367, code lost:
    
        r4 = r34.A0I();
        r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x037c, code lost:
    
        if (r2[4].length() == r2[6].length()) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0383, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0384, code lost:
    
        r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
        r2[4] = "Z3c7vm";
        r2[6] = "kikOnx";
        r34.A0g(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0393, code lost:
    
        if (r4 != 0) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0399, code lost:
    
        switch(r34.A0I()) {
            case 0: goto L134;
            case 1: goto L133;
            case 2: goto L132;
            case 3: goto L131;
            default: goto L218;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x039e, code lost:
    
        r14 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03a1, code lost:
    
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03a4, code lost:
    
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x03a7, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03ad, code lost:
    
        if (r4 != 1668246642) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03b0, code lost:
    
        if (r11 != (-1)) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03b2, code lost:
    
        if (r6 != (-1)) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03b4, code lost:
    
        if (r10 != (-1)) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03b6, code lost:
    
        r3 = r34.A0C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03bd, code lost:
    
        if (r3 == 1852009592) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03c2, code lost:
    
        if (r3 != 1852009571) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03c4, code lost:
    
        r1 = r34.A0M();
        r4 = r34.A0M();
        r6 = 2;
        r34.A0g(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x03d2, code lost:
    
        if (r9 != 19) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03da, code lost:
    
        if ((r34.A0I() & com.vungle.ads.internal.protos.Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 0) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x03dc, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03dd, code lost:
    
        r11 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r1);
        r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03f3, code lost:
    
        if (r2[2].charAt(17) == r2[5].charAt(17)) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03f5, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2146am.A01[7] = "Ehd1WWhYCDskII0cUGaskzUQattaSnoL";
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x03fc, code lost:
    
        if (r3 == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03fe, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x03ff, code lost:
    
        r10 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0405, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0407, code lost:
    
        com.facebook.ads.redexgen.X.MV.A07(A0M(178, 11, 23), A0M(470, 24, 73) + com.facebook.ads.redexgen.X.AbstractC2140ag.A04(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x045e, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0466, code lost:
    
        if (r8 != null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0468, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0469, code lost:
    
        r3 = new com.facebook.ads.redexgen.X.C1714Ke().A0g(r38).A11(r8).A0w(r7).A0r(r29).A0f(r28).A0Y(r27).A0l(r39).A13(r30).A0o(r14).A12(r34).A0u(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x04ab, code lost:
    
        if (r11 != (-1)) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04ad, code lost:
    
        if (r6 != (-1)) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04af, code lost:
    
        if (r10 != (-1)) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04b1, code lost:
    
        if (r5 == null) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04b4, code lost:
    
        r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04c6, code lost:
    
        if (r2[2].charAt(17) == r2[5].charAt(17)) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04c8, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2146am.A01[1] = "8Hi";
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x04cf, code lost:
    
        if (r5 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x04d1, code lost:
    
        r1 = r5.array();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x04d5, code lost:
    
        r3.A0t(new com.facebook.ads.androidx.media3.common.ColorInfo(r11, r6, r10, r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04dd, code lost:
    
        if (r17 == null) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x04df, code lost:
    
        r3.A0a(com.facebook.ads.redexgen.X.AnonymousClass19.A03(r17.A00)).A0j(com.facebook.ads.redexgen.X.AnonymousClass19.A03(r17.A01));
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x04f6, code lost:
    
        r41.A02 = r3.A14();
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x04fe, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x04ff, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2146am.A01[7] = "1CnVD4Uejv1JWCeHpoc0kmVyxbKPovn3";
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0506, code lost:
    
        if (r5 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0509, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x00ef, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013f, code lost:
    
        if (r4 != 1685480259) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0144, code lost:
    
        if (r4 != 1685485123) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0146, code lost:
    
        r0 = com.facebook.ads.redexgen.X.C2065Ys.A00(r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014a, code lost:
    
        if (r0 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x014c, code lost:
    
        r7 = r0.A02;
        r8 = A0M(1215, 18, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0158, code lost:
    
        r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0169, code lost:
    
        if (r2[3].charAt(0) == r2[0].charAt(0)) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0179, code lost:
    
        if (r4 != 1685480259) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x017c, code lost:
    
        r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
        r2[4] = "yoex6v";
        r2[6] = "SFRb36";
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x018d, code lost:
    
        if (r4 != 1987076931) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x018f, code lost:
    
        if (r8 != null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0191, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0192, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x019b, code lost:
    
        if (r33 != 1987063864) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x019d, code lost:
    
        r8 = A0M(1253, 19, 35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a7, code lost:
    
        r34.A0f(r2 + 12);
        r34.A0g(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01b6, code lost:
    
        if ((r34.A0I() & 1) == 0) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01b8, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b9, code lost:
    
        r1 = r34.A0I();
        r0 = r34.A0I();
        r11 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01c5, code lost:
    
        if (r2 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01c7, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01c8, code lost:
    
        r10 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ce, code lost:
    
        r6 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d0, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01d2, code lost:
    
        r8 = A0M(1272, 19, 69);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01dd, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e2, code lost:
    
        if (r4 != 1635135811) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e4, code lost:
    
        if (r8 != null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e6, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e7, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r1, null);
        r8 = A0M(1196, 10, 2);
        r34.A0f(r2 + 8);
        r0 = A0B(r34);
        r11 = r0.A02;
        r6 = r0.A01;
        r10 = r0.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0205, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020a, code lost:
    
        if (r4 != 1668050025) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x020c, code lost:
    
        if (r5 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x020e, code lost:
    
        r5 = A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0212, code lost:
    
        r5.position(21);
        r5.putShort(r34.A0b());
        r5.putShort(r34.A0b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x022a, code lost:
    
        if (r4 != 1835295606) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x022c, code lost:
    
        if (r5 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x022e, code lost:
    
        r5 = A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0232, code lost:
    
        r25 = r34.A0b();
        r24 = r34.A0b();
        r23 = r34.A0b();
        r22 = r34.A0b();
        r21 = r34.A0b();
        r20 = r34.A0b();
        r19 = r34.A0b();
        r18 = r34.A0b();
        r3 = r34.A0Q();
        r1 = r34.A0Q();
        r5.position(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0270, code lost:
    
        if (com.facebook.ads.redexgen.X.AbstractC2146am.A01[7].charAt(20) == 'k') goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0272, code lost:
    
        r5.putShort(r21);
        r5.putShort(r20);
        r5.putShort(r25);
        r5.putShort(r24);
        r5.putShort(r23);
        r5.putShort(r22);
        r5.putShort(r19);
        r5.putShort(r18);
        r5.putShort((short) (r3 / 10000));
        r5.putShort((short) (r1 / 10000));
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02aa, code lost:
    
        r16 = com.facebook.ads.redexgen.X.AbstractC2146am.A01;
        r16[2] = "OIBSeKh0vAOazctQ1gwVNM1Ma4jwlY1K";
        r16[5] = "4qfKNy2j4WK5HQFh3lvPc0nG0u0ezDC6";
        r5.putShort(r21);
        r5.putShort(r20);
        r5.putShort(r25);
        r5.putShort(r24);
        r5.putShort(r23);
        r5.putShort(r22);
        r5.putShort(r19);
        r5.putShort(r18);
        r5.putShort((short) (r3 / 10000));
        r5.putShort((short) (r1 / 10000));
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02f1, code lost:
    
        if (r4 != 1681012275) goto L104;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0R(com.facebook.ads.redexgen.X.C1769Mk r34, int r35, int r36, int r37, int r38, int r39, com.facebook.ads.androidx.media3.common.DrmInitData r40, com.facebook.ads.redexgen.X.C2144ak r41, int r42) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 1304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0R(com.facebook.ads.redexgen.X.Mk, int, int, int, int, int, com.facebook.ads.androidx.media3.common.DrmInitData, com.facebook.ads.redexgen.X.ak, int):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0T(com.facebook.ads.redexgen.X.C1769Mk r20, int r21, int r22, int r23, int r24, java.lang.String r25, boolean r26, com.facebook.ads.androidx.media3.common.DrmInitData r27, com.facebook.ads.redexgen.X.C2144ak r28, int r29) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 1338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0T(com.facebook.ads.redexgen.X.Mk, int, int, int, int, java.lang.String, boolean, com.facebook.ads.androidx.media3.common.DrmInitData, com.facebook.ads.redexgen.X.ak, int):void");
    }

    static {
        A0P();
        A03 = new int[]{-3374493, -128628077, -2011932550, 38936541};
        A02 = N1.A1G(A0M(351, 8, 66));
    }

    public static float A00(C1769Mk c1769Mk, int i) {
        c1769Mk.A0f(i + 8);
        int vSpacing = c1769Mk.A0L();
        int hSpacing = c1769Mk.A0L();
        return vSpacing / hSpacing;
    }

    public static int A01(int i) {
        if (i == 1936684398) {
            String[] strArr = A01;
            if (strArr[2].charAt(17) != strArr[5].charAt(17)) {
                A01[7] = "r6VY3GajZmUVQmoIixELkCPPvL23ZIon";
                return 1;
            }
        } else {
            if (i == 1986618469) {
                return 2;
            }
            if (i == 1952807028) {
                return 3;
            }
            String[] strArr2 = A01;
            if (strArr2[2].charAt(17) != strArr2[5].charAt(17)) {
                String[] strArr3 = A01;
                strArr3[2] = "R5xWUxHrBsQvt6Ep6qgFf8TgnPan7eNn";
                strArr3[5] = "IHPbobl29fB80e33uRQdDHlzAgkzsvNF";
                if (i == 1935832172) {
                    return 3;
                }
                String[] strArr4 = A01;
                if (strArr4[2].charAt(17) != strArr4[5].charAt(17)) {
                    A01[1] = "ERU";
                    if (i == 1937072756) {
                        return 3;
                    }
                } else if (i == 1937072756) {
                    return 3;
                }
                if (i == 1668047728) {
                    return 3;
                }
                if (i == 1835365473) {
                    return 5;
                }
                return -1;
            }
        }
        throw new RuntimeException();
    }

    public static int A02(C1769Mk c1769Mk) {
        int i = c1769Mk.A0I();
        int size = i & Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE;
        for (int i2 = 1; i2 < 4 && (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 128; i2++) {
            i = c1769Mk.A0I();
            int currentByte = i & Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE;
            size = (size << 7) | currentByte;
        }
        return size;
    }

    public static int A03(C1769Mk c1769Mk) {
        c1769Mk.A0f(16);
        return c1769Mk.A0C();
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A04(com.facebook.ads.redexgen.X.C1769Mk r6, int r7, int r8, int r9) throws com.facebook.ads.redexgen.X.L9 {
        /*
            int r5 = r6.A09()
            if (r5 < r8) goto L4c
            r1 = 1
        L7:
            r0 = 0
            com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r1, r0)
        Lb:
            int r0 = r5 - r8
            if (r0 >= r9) goto L54
            r6.A0f(r5)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01
            r0 = 2
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L4e
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01
            java.lang.String r1 = "Eq6"
            r0 = 1
            r2[r0] = r1
            int r0 = r6.A0C()
            if (r0 <= 0) goto L4a
            r4 = 1
        L34:
            r3 = 1090(0x442, float:1.527E-42)
            r2 = 30
            r1 = 71
            java.lang.String r1 = A0M(r3, r2, r1)
            com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r4, r1)
            int r1 = r6.A0C()
            if (r1 != r7) goto L48
            return r5
        L48:
            int r5 = r5 + r0
            goto Lb
        L4a:
            r4 = 0
            goto L34
        L4c:
            r1 = 0
            goto L7
        L4e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L54:
            r3 = -1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC2146am.A01
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 3
            if (r1 == r0) goto L62
            return r3
        L62:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01
            java.lang.String r1 = "xsACpp"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "b3zLD1"
            r0 = 6
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A04(com.facebook.ads.redexgen.X.Mk, int, int, int):int");
    }

    public static long A05(C1769Mk c1769Mk) {
        int fullAtom = 8;
        c1769Mk.A0f(8);
        if (AbstractC2140ag.A03(c1769Mk.A0C()) != 0) {
            fullAtom = 16;
        }
        c1769Mk.A0g(fullAtom);
        return c1769Mk.A0Q();
    }

    public static Pair<Long, String> A06(C1769Mk c1769Mk) {
        c1769Mk.A0f(8);
        int fullAtom = AbstractC2140ag.A03(c1769Mk.A0C());
        int languageCode = fullAtom == 0 ? 8 : 16;
        c1769Mk.A0g(languageCode);
        long jA0Q = c1769Mk.A0Q();
        int version = fullAtom == 0 ? 4 : 8;
        c1769Mk.A0g(version);
        int iA0M = c1769Mk.A0M();
        int languageCode2 = iA0M >> 10;
        StringBuilder sbAppend = new StringBuilder().append(A0M(0, 0, 21)).append((char) ((languageCode2 & 31) + 96));
        int languageCode3 = iA0M >> 5;
        StringBuilder sbAppend2 = sbAppend.append((char) ((languageCode3 & 31) + 96));
        int languageCode4 = iA0M & 31;
        return Pair.create(Long.valueOf(jA0Q), sbAppend2.append((char) (languageCode4 + 96)).toString());
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, com.facebook.ads.redexgen.X.C2171bB> A07(com.facebook.ads.redexgen.X.C1769Mk r10, int r11, int r12) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A07(com.facebook.ads.redexgen.X.Mk, int, int):android.util.Pair");
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0006 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, com.facebook.ads.redexgen.X.C2171bB> A08(com.facebook.ads.redexgen.X.C1769Mk r6, int r7, int r8) throws com.facebook.ads.redexgen.X.L9 {
        /*
            int r5 = r6.A09()
        L4:
            int r0 = r5 - r7
            if (r0 >= r8) goto L33
            r6.A0f(r5)
            int r4 = r6.A0C()
            if (r4 <= 0) goto L31
            r3 = 1
        L12:
            r2 = 1090(0x442, float:1.527E-42)
            r1 = 30
            r0 = 71
            java.lang.String r0 = A0M(r2, r1, r0)
            com.facebook.ads.redexgen.X.AbstractC2070Yx.A01(r3, r0)
            int r1 = r6.A0C()
            r0 = 1936289382(0x73696e66, float:1.8494329E31)
            if (r1 != r0) goto L2f
            android.util.Pair r0 = A07(r6, r5, r4)
            if (r0 == 0) goto L2f
            return r0
        L2f:
            int r5 = r5 + r4
            goto L4
        L31:
            r3 = 0
            goto L12
        L33:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A08(com.facebook.ads.redexgen.X.Mk, int, int):android.util.Pair");
    }

    public static Pair<long[], long[]> A09(PF pf) {
        PE elstAtom = pf.A03(1701606260);
        if (elstAtom == null) {
            return null;
        }
        C1769Mk c1769Mk = elstAtom.A00;
        c1769Mk.A0f(8);
        int i = AbstractC2140ag.A03(c1769Mk.A0C());
        int iA0L = c1769Mk.A0L();
        long[] editListDurations = new long[iA0L];
        String[] strArr = A01;
        if (strArr[2].charAt(17) == strArr[5].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[3] = "WeEg0ghuVecZrpZDHTwmbfFZ6yrEYkHG";
        strArr2[0] = "WuCxZnTDktUwvIVUFGWyBLBLH10b6kIo";
        long[] jArr = new long[iA0L];
        for (int fullAtom = 0; fullAtom < iA0L; fullAtom++) {
            editListDurations[fullAtom] = i == 1 ? c1769Mk.A0R() : c1769Mk.A0Q();
            jArr[fullAtom] = i == 1 ? c1769Mk.A0P() : c1769Mk.A0C();
            if (c1769Mk.A0b() == 1) {
                c1769Mk.A0g(2);
            } else {
                throw new IllegalArgumentException(A0M(540, 23, 80));
            }
        }
        return Pair.create(editListDurations, jArr);
    }

    public static Pair<Metadata, Metadata> A0A(PE pe) {
        C1769Mk c1769Mk = pe.A00;
        c1769Mk.A0f(8);
        Metadata metadataA0E = null;
        Metadata metadataA0D = null;
        while (c1769Mk.A07() >= 8) {
            int iA09 = c1769Mk.A09();
            int iA0C = c1769Mk.A0C();
            int iA0C2 = c1769Mk.A0C();
            if (iA0C2 == 1835365473) {
                c1769Mk.A0f(iA09);
                metadataA0E = A0E(c1769Mk, iA09 + iA0C);
            } else if (iA0C2 == 1936553057) {
                c1769Mk.A0f(iA09);
                metadataA0D = A0D(c1769Mk, iA09 + iA0C);
            }
            c1769Mk.A0f(iA09 + iA0C);
        }
        Pair<Metadata, Metadata> pairCreate = Pair.create(metadataA0E, metadataA0D);
        if (A01[1].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "XcbSpEcbQBALh5ZDtWGaCidjgtjxLP7Z";
        strArr[5] = "cmSZK8Dp0z0EqXoyhrjLuIFj1VnYbekm";
        return pairCreate;
    }

    public static Metadata A0C(C1769Mk c1769Mk, int i) {
        c1769Mk.A0g(8);
        ArrayList arrayList = new ArrayList();
        while (c1769Mk.A09() < i) {
            Id3Frame id3FrameA04 = AbstractC2157ax.A04(c1769Mk);
            if (id3FrameA04 != null) {
                arrayList.add(id3FrameA04);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Metadata A0D(C1769Mk c1769Mk, int i) {
        c1769Mk.A0g(12);
        while (c1769Mk.A09() < i) {
            int atomSize = c1769Mk.A09();
            int iA0C = c1769Mk.A0C();
            int atomPosition = c1769Mk.A0C();
            if (atomPosition == 1935766900) {
                if (iA0C < 14) {
                    return null;
                }
                c1769Mk.A0g(5);
                int iA0I = c1769Mk.A0I();
                if (iA0I != 12 && iA0I != 13) {
                    return null;
                }
                float f = iA0I == 12 ? 240.0f : 120.0f;
                c1769Mk.A0g(1);
                return new Metadata(new SmtaMetadataEntry(f, c1769Mk.A0I()));
            }
            c1769Mk.A0f(atomSize + iA0C);
        }
        return null;
    }

    public static Metadata A0E(C1769Mk c1769Mk, int i) {
        c1769Mk.A0g(8);
        A0Q(c1769Mk);
        while (c1769Mk.A09() < i) {
            int iA09 = c1769Mk.A09();
            int atomType = c1769Mk.A0C();
            int atomSize = c1769Mk.A0C();
            if (atomSize == 1768715124) {
                c1769Mk.A0f(iA09);
                return A0C(c1769Mk, iA09 + atomType);
            }
            c1769Mk.A0f(iA09 + atomType);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2142ai A0G(com.facebook.ads.redexgen.X.C1769Mk r14, int r15) {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0G(com.facebook.ads.redexgen.X.Mk, int):com.facebook.ads.redexgen.X.ai");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2144ak A0H(com.facebook.ads.redexgen.X.C1769Mk r24, int r25, int r26, java.lang.String r27, com.facebook.ads.androidx.media3.common.DrmInitData r28, boolean r29) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0H(com.facebook.ads.redexgen.X.Mk, int, int, java.lang.String, com.facebook.ads.androidx.media3.common.DrmInitData, boolean):com.facebook.ads.redexgen.X.ak");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2145al A0I(com.facebook.ads.redexgen.X.C1769Mk r13) {
        /*
            r9 = 8
            r13.A0f(r9)
            int r0 = r13.A0C()
            int r12 = com.facebook.ads.redexgen.X.AbstractC2140ag.A03(r0)
            r7 = 16
            if (r12 != 0) goto Lba
            r0 = 8
        L13:
            r13.A0g(r0)
            int r5 = r13.A0C()
            r6 = 4
            r13.A0g(r6)
            r11 = 1
            int r10 = r13.A09()
            if (r12 != 0) goto L26
            r9 = 4
        L26:
            r8 = 0
        L27:
            if (r8 >= r9) goto L51
            byte[] r1 = r13.A0l()
            int r0 = r10 + r8
            r4 = r1[r0]
            r3 = -1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC2146am.A01
            r0 = 7
            r1 = r1[r0]
            r0 = 20
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto L47
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L47:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2146am.A01
            java.lang.String r1 = "oLrIzloc2hYanTGtS7YtknJwhZrQTqpe"
            r0 = 7
            r2[r0] = r1
            if (r4 == r3) goto Lb6
            r11 = 0
        L51:
            if (r11 == 0) goto L9f
            r13.A0g(r9)
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L5b:
            r13.A0g(r7)
            int r8 = r13.A0C()
            int r7 = r13.A0C()
            r13.A0g(r6)
            int r6 = r13.A0C()
            int r2 = r13.A0C()
            r1 = 65536(0x10000, float:9.1835E-41)
            if (r8 != 0) goto L84
            if (r7 != r1) goto L84
            int r0 = -r1
            if (r6 != r0) goto L84
            if (r2 != 0) goto L84
            r1 = 90
        L7e:
            com.facebook.ads.redexgen.X.al r0 = new com.facebook.ads.redexgen.X.al
            r0.<init>(r5, r3, r1)
            return r0
        L84:
            if (r8 != 0) goto L90
            int r0 = -r1
            if (r7 != r0) goto L90
            if (r6 != r1) goto L90
            if (r2 != 0) goto L90
            r1 = 270(0x10e, float:3.78E-43)
            goto L7e
        L90:
            int r0 = -r1
            if (r8 != r0) goto L9d
            if (r7 != 0) goto L9d
            if (r6 != 0) goto L9d
            int r0 = -r1
            if (r2 != r0) goto L9d
            r1 = 180(0xb4, float:2.52E-43)
            goto L7e
        L9d:
            r1 = 0
            goto L7e
        L9f:
            if (r12 != 0) goto Lb1
            long r3 = r13.A0Q()
        La5:
            r1 = 0
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L5b
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            goto L5b
        Lb1:
            long r3 = r13.A0R()
            goto La5
        Lb6:
            int r8 = r8 + 1
            goto L27
        Lba:
            r0 = 16
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0I(com.facebook.ads.redexgen.X.Mk):com.facebook.ads.redexgen.X.al");
    }

    public static ByteBuffer A0N() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wy != com.google.common.base.Function<com.facebook.ads.androidx.media3.extractor.mp4.Track, com.facebook.ads.androidx.media3.extractor.mp4.Track> */
    public static List<C2173bD> A0O(PF pf, Z6 z6, long j, DrmInitData drmInitData, boolean z, boolean z2, InterfaceC2023Wy<C2170bA, C2170bA> interfaceC2023Wy) throws L9 {
        C2170bA track;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < pf.A01.size(); i++) {
            PF pf2 = pf.A01.get(i);
            if (((AbstractC2140ag) pf2).A00 == 1953653099 && (track = interfaceC2023Wy.A4c(A0J(pf2, (PE) AbstractC1747Ln.A01(pf.A03(1836476516)), j, drmInitData, z, z2))) != null) {
                arrayList.add(A0L(track, (PF) AbstractC1747Ln.A01(((PF) AbstractC1747Ln.A01(((PF) AbstractC1747Ln.A01(pf2.A02(1835297121))).A02(1835626086))).A02(1937007212)), z6));
            }
        }
        return arrayList;
    }

    public static void A0Q(C1769Mk c1769Mk) {
        int iA09 = c1769Mk.A09();
        c1769Mk.A0g(4);
        if (c1769Mk.A0C() != 1751411826) {
            iA09 += 4;
        }
        c1769Mk.A0f(iA09);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<byte[]> */
    public static void A0S(C1769Mk c1769Mk, int i, int i2, int i3, int i4, String str, C2144ak c2144ak) {
        String strA0M;
        c1769Mk.A0f(i2 + 8 + 8);
        AbstractC14399l abstractC14399lA04 = null;
        long j = Long.MAX_VALUE;
        if (i == 1414810956) {
            strA0M = A0M(691, 20, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
        } else if (i == 1954034535) {
            strA0M = A0M(784, 28, 43);
            int sampleDescriptionLength = (i3 - 8) - 8;
            byte[] bArr = new byte[sampleDescriptionLength];
            c1769Mk.A0k(bArr, 0, sampleDescriptionLength);
            abstractC14399lA04 = AbstractC14399l.A04(bArr);
        } else if (i == 2004251764) {
            strA0M = A0M(763, 21, 19);
        } else if (i == 1937010800) {
            if (A01[1].length() != 3) {
                throw new RuntimeException();
            }
            A01[7] = "utlRWadfmFD1wdS2ToASk83ihDfKj10a";
            strA0M = A0M(691, 20, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
            j = 0;
        } else if (i == 1664495672) {
            strA0M = A0M(738, 25, 23);
            c2144ak.A01 = 1;
        } else {
            throw new IllegalStateException();
        }
        c2144ak.A02 = new C1714Ke().A0g(i4).A11(strA0M).A10(str).A0s(j).A12(abstractC14399lA04).A14();
    }

    public static void A0U(C1769Mk c1769Mk, int i, int i2, int i3, C2144ak c2144ak) {
        c1769Mk.A0f(i2 + 8 + 8);
        if (i == 1835365492) {
            c1769Mk.A0U();
            String strA0U = c1769Mk.A0U();
            if (strA0U != null) {
                c2144ak.A02 = new C1714Ke().A0g(i3).A11(strA0U).A14();
            }
        }
    }

    public static boolean A0V(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        int latestDelayIndex = N1.A07(4, 0, length);
        int lastIndex = jArr.length;
        return jArr[0] <= j2 && j2 < jArr[latestDelayIndex] && jArr[N1.A07(lastIndex - 4, 0, length)] < j3 && j3 <= j;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] A0W(com.facebook.ads.redexgen.X.C1769Mk r4, int r5, int r6) {
        /*
            int r3 = r5 + 8
        L2:
            int r0 = r3 - r5
            if (r0 >= r6) goto L23
            r4.A0f(r3)
            int r2 = r4.A0C()
            int r1 = r4.A0C()
            r0 = 1886547818(0x70726f6a, float:3.0012025E29)
            if (r1 != r0) goto L21
            byte[] r1 = r4.A0l()
            int r0 = r3 + r2
            byte[] r0 = java.util.Arrays.copyOfRange(r1, r3, r0)
            return r0
        L21:
            int r3 = r3 + r2
            goto L2
        L23:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2146am.A0W(com.facebook.ads.redexgen.X.Mk, int, int):byte[]");
    }
}
