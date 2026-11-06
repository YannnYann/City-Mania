package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P7 implements InterfaceC2068Yv {
    public static byte[] A0e;
    public static String[] A0f = {"sO39cWCOFCUi2", "3J13aAXeHBslCaHm4OiPxJcF4UiPBDWP", "7JGaZC3prhWZ5I2IpDwO5CcmXcw6ZOCb", "9P68A5ff2eKCf", "o9carFUVPOdFKZpiuc1", "inzJrXFaWAK4fUb0mTW", "qp89PgUGoSE", ""};
    public static final InterfaceC2072Yz A0g;
    public static final VC A0h;
    public static final byte[] A0i;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public SparseArray<C2153at> A0D;
    public C1769Mk A0E;
    public InterfaceC2069Yw A0F;
    public C2153at A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public ZP[] A0K;
    public ZP[] A0L;
    public final int A0M;
    public final DrmInitData A0N;
    public final C1769Mk A0O;
    public final C1769Mk A0P;
    public final C1769Mk A0Q;
    public final C1769Mk A0R;
    public final C1769Mk A0S;
    public final C1777Ms A0T;
    public final ZP A0U;
    public final C2085Zm A0V;
    public final C2170bA A0W;
    public final ArrayDeque<PF> A0X;
    public final ArrayDeque<C2152as> A0Y;
    public final List<VC> A0Z;
    public final boolean A0a;
    public final boolean A0b;
    public final boolean A0c;
    public final byte[] A0d;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A00(C2153at c2153at, int i, long j, int i2, C1769Mk c1769Mk, int i3) {
        int i4 = i3;
        long j2 = j;
        c1769Mk.A0f(8);
        int iA02 = AbstractC2140ag.A02(c1769Mk.A0C());
        C2170bA c2170bA = c2153at.A05;
        C2172bC c2172bC = c2153at.A07;
        C2147an c2147an = c2172bC.A06;
        c2172bC.A0C[i] = c1769Mk.A0L();
        c2172bC.A0E[i] = c2172bC.A04;
        if ((iA02 & 1) != 0) {
            long[] jArr = c2172bC.A0E;
            jArr[i] = jArr[i] + ((long) c1769Mk.A0C());
        }
        boolean z = (iA02 & 4) != 0;
        int iA0L = c2147an.A01;
        if (z) {
            iA0L = c1769Mk.A0L();
        }
        boolean z2 = (iA02 & 256) != 0;
        boolean z3 = (iA02 & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0;
        boolean z4 = (iA02 & 1024) != 0;
        boolean z5 = (iA02 & a.o) != 0;
        long j3 = 0;
        if (c2170bA.A08 != null && c2170bA.A08.length == 1 && c2170bA.A08[0] == 0) {
            j3 = c2170bA.A09[0];
        }
        int[] iArr = c2172bC.A0B;
        long[] jArr2 = c2172bC.A0D;
        boolean[] zArr = c2172bC.A0G;
        boolean z6 = c2170bA.A03 == 2 && (i2 & 1) != 0;
        int i5 = i4 + c2172bC.A0C[i];
        long j4 = c2170bA.A06;
        if (i > 0) {
            j2 = c2172bC.A05;
        }
        while (i4 < i5) {
            int iA0L2 = z2 ? c1769Mk.A0L() : c2147an.A00;
            int iA0L3 = z3 ? c1769Mk.A0L() : c2147an.A03;
            int iA0C = (i4 == 0 && z) ? iA0L : z4 ? c1769Mk.A0C() : c2147an.A01;
            if (A0f[1].charAt(30) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[6] = "7ekXoexQQmy";
            strArr[5] = "InaD67iDP2cJ4lebIla";
            jArr2[i4] = N1.A0U((((long) (z5 ? c1769Mk.A0C() : 0)) + j2) - j3, 1000000L, j4);
            zArr[i4] = ((iA0C >> 16) & 1) == 0 && (!z6 || i4 == 0);
            iArr[i4] = iA0L3;
            j2 += (long) iA0L2;
            i4++;
        }
        c2172bC.A05 = j2;
        return i5;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, QJ> A04(C1769Mk c1769Mk, long j) throws L9 {
        long jA0R;
        long jA0R2;
        c1769Mk.A0f(8);
        int iA03 = AbstractC2140ag.A03(c1769Mk.A0C());
        c1769Mk.A0g(4);
        long jA0Q = c1769Mk.A0Q();
        if (iA03 == 0) {
            jA0R = c1769Mk.A0Q();
            jA0R2 = j + c1769Mk.A0Q();
        } else {
            jA0R = c1769Mk.A0R();
            jA0R2 = j + c1769Mk.A0R();
        }
        long jA0U = N1.A0U(jA0R, 1000000L, jA0Q);
        c1769Mk.A0g(2);
        int iA0M = c1769Mk.A0M();
        int[] iArr = new int[iA0M];
        long[] jArr = new long[iA0M];
        long[] jArr2 = new long[iA0M];
        long[] jArr3 = new long[iA0M];
        long jA0U2 = jA0U;
        for (int i = 0; i < iA0M; i++) {
            int iA0C = c1769Mk.A0C();
            if ((Integer.MIN_VALUE & iA0C) != 0) {
                throw new L9(A0B(634, 28, 9));
            }
            long jA0Q2 = c1769Mk.A0Q();
            iArr[i] = Integer.MAX_VALUE & iA0C;
            jArr[i] = jA0R2;
            jArr3[i] = jA0U2;
            jA0R += jA0Q2;
            jA0U2 = N1.A0U(jA0R, 1000000L, jA0Q);
            jArr2[i] = jA0U2 - jArr3[i];
            c1769Mk.A0g(4);
            jA0R2 += (long) iArr[i];
        }
        return Pair.create(Long.valueOf(jA0U), new QJ(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2153at A09(C1769Mk c1769Mk, SparseArray<C2153at> sparseArray, boolean z) {
        c1769Mk.A0f(8);
        int iA02 = AbstractC2140ag.A02(c1769Mk.A0C());
        C2153at c2153atA08 = A08(sparseArray, c1769Mk.A0C(), z);
        if (c2153atA08 == null) {
            String[] strArr = A0f;
            if (strArr[6].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A0f[4] = "fC";
            return null;
        }
        int i = iA02 & 1;
        if (A0f[2].charAt(15) == 'A') {
            throw new RuntimeException();
        }
        A0f[2] = "nHd2GKC6avBKXDLVsIU0TahN3dA1C9n2";
        if (i != 0) {
            long jA0R = c1769Mk.A0R();
            c2153atA08.A07.A04 = jA0R;
            c2153atA08.A07.A03 = jA0R;
        }
        C2147an c2147an = c2153atA08.A04;
        c2153atA08.A07.A06 = new C2147an((iA02 & 2) != 0 ? c1769Mk.A0L() - 1 : c2147an.A02, (iA02 & 8) != 0 ? c1769Mk.A0L() : c2147an.A00, (iA02 & 16) != 0 ? c1769Mk.A0L() : c2147an.A03, (iA02 & 32) != 0 ? c1769Mk.A0L() : c2147an.A01);
        return c2153atA08;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 90);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0E() {
        A0e = new byte[]{-51, -63, -89, -38, -43, -45, -122, -39, -49, -32, -53, -122, -46, -53, -39, -39, -122, -38, -50, -57, -44, -122, -50, -53, -57, -54, -53, -40, -122, -46, -53, -44, -51, -38, -50, -122, -114, -37, -44, -39, -37, -42, -42, -43, -40, -38, -53, -54, -113, -108, -40, 1, 7, 5, 12, -77, -10, 2, 8, 1, 7, -77, -4, 1, -77, 6, -11, -6, 3, -77, -76, -48, -77, -60, -77, -69, 8, 1, 6, 8, 3, 3, 2, 5, 7, -8, -9, -68, -63, -49, -8, -2, -4, 3, -86, -19, -7, -1, -8, -2, -86, -13, -8, -86, -3, -15, -6, -18, -86, -85, -57, -86, -69, -86, -78, -1, -8, -3, -1, -6, -6, -7, -4, -2, -17, -18, -77, -72, 28, 72, 55, 61, 67, 59, 68, 74, 59, 58, 35, 70, 10, 27, 78, 74, 72, 55, 57, 74, 69, 72, -32, -2, 5, 6, 9, 0, 5, -2, -73, 5, -4, -2, -8, 11, 0, 13, -4, -73, 6, -3, -3, 10, -4, 11, -73, 11, 6, -73, 10, -8, 4, 7, 3, -4, -73, -5, -8, 11, -8, -59, -71, -34, -26, -47, -36, -39, -44, -112, -66, -79, -68, -112, -36, -43, -34, -41, -28, -40, -46, -21, -25, -20, -90, -25, -6, -11, -13, -90, -22, -21, -20, -17, -12, -21, -7, -90, -21, -2, -6, -21, -12, -22, -21, -22, -90, -25, -6, -11, -13, -90, -7, -17, 0, -21, -90, -82, -5, -12, -7, -5, -10, -10, -11, -8, -6, -21, -22, -81, -76, 36, 61, 57, 62, -8, 57, 76, 71, 69, -8, 79, 65, 76, 64, -8, 68, 61, 70, 63, 76, 64, -8, 22, -8, 10, 9, 12, 15, 12, 16, 11, 14, 12, 15, -8, 0, 77, 70, 75, 77, 72, 72, 71, 74, 76, 61, 60, 1, 6, 32, 57, 66, 59, 72, 60, -12, 65, 61, 71, 65, 53, 72, 55, 60, 14, -12, -6, 17, 17, 30, 16, 31, -53, 31, 26, -53, 16, 25, 14, 29, 36, 27, 31, 20, 26, 25, -53, 15, 12, 31, 12, -53, 34, 12, 30, -53, 25, 16, 18, 12, 31, 20, 33, 16, -39, -19, 4, 4, 17, 3, 18, -66, 18, 13, -66, 3, 12, 2, -66, 13, 4, -66, 11, 2, -1, 18, -66, 21, -1, 17, -66, 12, 3, 5, -1, 18, 7, 20, 3, -52, -73, -34, -51, -38, -38, -47, -52, -47, -42, -49, -120, -68, -38, -55, -53, -45, -83, -42, -53, -38, -31, -40, -36, -47, -41, -42, -86, -41, -32, -120, -40, -55, -38, -55, -43, -51, -36, -51, -38, -37, -120, -47, -37, -120, -35, -42, -37, -35, -40, -40, -41, -38, -36, -51, -52, -106, -32, -8, -10, -3, -3, -14, -15, -83, -3, 0, 0, -11, -83, -18, 1, -4, -6, -83, -75, -13, -18, -10, -7, -14, -15, -83, 1, -4, -83, -14, 5, 1, -1, -18, -16, 1, -83, 2, 2, -10, -15, -74, -13, 11, 9, 16, 16, 9, 14, 7, -64, 1, 20, 15, 13, -64, 23, 9, 20, 8, -64, 12, 5, 14, 7, 20, 8, -64, -34, -64, -46, -47, -44, -41, -44, -40, -45, -42, -44, -41, -64, -56, 21, 14, 19, 21, 16, 16, 15, 18, 20, 5, 4, -55, -50, -27, -3, -5, 2, 2, -5, 0, -7, -78, 7, 0, 5, 7, 2, 2, 1, 4, 6, -9, -10, -78, -9, -1, 5, -7, -78, 8, -9, 4, 5, -5, 1, 0, -52, -78, -37, -12, -21, -2, -10, -21, -23, -6, -21, -22, -90, -13, -11, -11, -4, -90, -24, -11, -2, -76, -5, 20, 11, 30, 22, 11, 9, 26, 11, 10, -58, 25, 7, 15, 21, -58, 11, 20, 26, 24, 31, -58, 9, 21, 27, 20, 26, -32, -58, -72, -47, -53, -60, -47, -57, -49, -56, -57, -125, -52, -47, -57, -52, -43, -56, -58, -41, -125, -43, -56, -55, -56, -43, -56, -47, -58, -56, -28, -17, 0, -9, -17, -16, -6, -13, -82, -6, -13, -4, -11, 2, -10, -82, -14, -13, 1, -15, 0, -9, -2, 2, -9, -3, -4, -82, -9, -4, -82, 1, -11, -2, -14, -82, -12, -3, 3, -4, -14, -82, -74, 3, -4, 1, 3, -2, -2, -3, 0, 2, -13, -14, -73, 53, 68, 68, 64, 61, 55, 53, 72, 61, 67, 66, 3, 76, 1, 57, 65, 71, 59, 6, 21, 21, 17, 14, 8, 6, 25, 14, 20, 19, -44, 29, -46, 18, 21, -39, -46, 27, 25, 25, -6, -19, -24, -23, -13, -77, -20, -23, -6, -25, -1, -14, -19, -18, -8, -72, -10, -7, -67};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0I(com.facebook.ads.redexgen.X.C1769Mk r20, android.net.Uri r21) {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P7.A0I(com.facebook.ads.redexgen.X.Mk, android.net.Uri):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0J(C1769Mk c1769Mk, C1769Mk c1769Mk2, String str, C2172bC c2172bC) throws L9 {
        c1769Mk.A0f(8);
        int iA0C = c1769Mk.A0C();
        if (c1769Mk.A0C() != 1936025959) {
            return;
        }
        if (AbstractC2140ag.A03(iA0C) == 1) {
            c1769Mk.A0g(4);
        }
        if (c1769Mk.A0C() != 1) {
            throw new L9(A0B(50, 39, 57));
        }
        c1769Mk2.A0f(8);
        int iA0C2 = c1769Mk2.A0C();
        if (c1769Mk2.A0C() != 1936025959) {
            return;
        }
        int iA03 = AbstractC2140ag.A03(iA0C2);
        if (iA03 == 1) {
            if (c1769Mk2.A0Q() == 0) {
                throw new L9(A0B(EventTypeExtended.EVENT_TYPE_EXTENDED_SK_OVERLAY_PRESENTING_VALUE, 55, 52));
            }
        } else if (iA03 >= 2) {
            c1769Mk2.A0g(4);
        }
        if (c1769Mk2.A0Q() != 1) {
            throw new L9(A0B(89, 39, 48));
        }
        c1769Mk2.A0g(1);
        int iA0I = c1769Mk2.A0I();
        int i = (iA0I & 240) >> 4;
        int i2 = iA0I & 15;
        boolean z = c1769Mk2.A0I() == 1;
        if (z) {
            int iA0I2 = c1769Mk2.A0I();
            byte[] bArr = new byte[16];
            c1769Mk2.A0k(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (iA0I2 == 0) {
                int iA0I3 = c1769Mk2.A0I();
                bArr2 = new byte[iA0I3];
                c1769Mk2.A0k(bArr2, 0, iA0I3);
                if (A0f[1].charAt(30) == 'd') {
                    throw new RuntimeException();
                }
                A0f[4] = "YdJdxJABJdh7NTrpeOaKq84AE";
            }
            c2172bC.A08 = true;
            c2172bC.A07 = new C2171bB(z, str, iA0I2, bArr, i, i2, bArr2);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0R(PF pf) throws L9 {
        AbstractC1747Ln.A0A(this.A0W == null, A0B(585, 20, 44));
        DrmInitData drmInitDataA05 = A05(pf.A02);
        PF pf2 = (PF) AbstractC1747Ln.A01(pf.A02(1836475768));
        SparseArray<C2147an> sparseArray = new SparseArray<>();
        long jA01 = -9223372036854775807L;
        int size = pf2.A02.size();
        for (int i = 0; i < size; i++) {
            PE pe = pf2.A02.get(i);
            if (((AbstractC2140ag) pe).A00 == 1953654136) {
                Pair<Integer, C2147an> pairA03 = A03(pe.A00);
                sparseArray.put(((Integer) pairA03.first).intValue(), (C2147an) pairA03.second);
            } else {
                int i2 = ((AbstractC2140ag) pe).A00;
                if (A0f[7].length() == 31) {
                    throw new RuntimeException();
                }
                String[] strArr = A0f;
                strArr[6] = "fQX4JDEh8CS";
                strArr[5] = "Ov1Rr2UIae6mGCP9QAH";
                if (i2 == 1835362404) {
                    jA01 = A01(pe.A00);
                }
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = pf.A01.size();
        for (int i3 = 0; i3 < size2; i3++) {
            PF pf3 = pf.A01.get(i3);
            if (((AbstractC2140ag) pf3).A00 == 1953653099) {
                C2170bA c2170bAA0A = A0A(AbstractC2146am.A0J(pf3, pf.A03(1836476516), jA01, drmInitDataA05, (this.A0M & 16) != 0, false));
                if (c2170bAA0A != null) {
                    sparseArray2.put(c2170bAA0A.A00, c2170bAA0A);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.A0D.size() != 0) {
            AbstractC1747Ln.A08(this.A0D.size() == size3);
            for (int i4 = 0; i4 < size3; i4++) {
                C2170bA c2170bA = (C2170bA) sparseArray2.valueAt(i4);
                this.A0D.get(c2170bA.A00).A08(c2170bA, A06(sparseArray, c2170bA.A00));
            }
            return;
        }
        for (int i5 = 0; i5 < size3; i5++) {
            C2170bA c2170bA2 = (C2170bA) sparseArray2.valueAt(i5);
            C2153at c2153at = new C2153at(this.A0F.ALm(i5, c2170bA2.A03));
            c2153at.A08(c2170bA2, A06(sparseArray, c2170bA2.A00));
            this.A0D.put(c2170bA2.A00, c2153at);
            this.A08 = Math.max(this.A08, c2170bA2.A04);
        }
        A0D();
        this.A0F.A6x();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0T(PF pf, SparseArray<C2153at> sparseArray, int i, byte[] bArr, boolean z) throws L9 {
        C2153at c2153atA09 = A09(pf.A03(1952868452).A00, sparseArray, z);
        if (c2153atA09 == null) {
            return;
        }
        C2172bC c2172bC = c2153atA09.A07;
        long jA02 = c2172bC.A05;
        c2153atA09.A05();
        if (pf.A03(1952867444) != null) {
            int i2 = i & 2;
            if (A0f[1].charAt(30) == 'd') {
                throw new RuntimeException();
            }
            A0f[1] = "uRSWbeSjKMEIQgyI5DdsOQiwalwAUF0L";
            if (i2 == 0) {
                PE peA03 = pf.A03(1952867444);
                if (A0f[1].charAt(30) == 'd') {
                    throw new RuntimeException();
                }
                A0f[7] = "f0B6k98tpHqAKr9nqIJq26FbSaXaG";
                jA02 = A02(peA03.A00);
            }
        }
        A0U(pf, c2153atA09, jA02, i);
        C2171bB c2171bBA00 = c2153atA09.A05.A00(c2172bC.A06.A02);
        PE peA032 = pf.A03(1935763834);
        if (peA032 != null) {
            A0W(c2171bBA00, peA032.A00, c2172bC);
        }
        PE peA033 = pf.A03(1935763823);
        if (peA033 != null) {
            A0K(peA033.A00, c2172bC);
        }
        PE peA034 = pf.A03(1936027235);
        if (peA034 != null) {
            A0L(peA034.A00, c2172bC);
        }
        PE peA035 = pf.A03(1935828848);
        PE peA036 = pf.A03(1936158820);
        if (peA035 != null && peA036 != null) {
            A0J(peA035.A00, peA036.A00, c2171bBA00 != null ? c2171bBA00.A02 : null, c2172bC);
        }
        int size = pf.A02.size();
        for (int i3 = 0; i3 < size; i3++) {
            PE pe = pf.A02.get(i3);
            if (((AbstractC2140ag) pe).A00 == 1970628964) {
                A0M(pe.A00, c2172bC, bArr);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0W(C2171bB c2171bB, C1769Mk c1769Mk, C2172bC c2172bC) throws L9 {
        int i = c2171bB.A00;
        c1769Mk.A0f(8);
        if ((AbstractC2140ag.A02(c1769Mk.A0C()) & 1) == 1) {
            c1769Mk.A0g(8);
        }
        int iA0I = c1769Mk.A0I();
        int iA0L = c1769Mk.A0L();
        if (iA0L != c2172bC.A00) {
            throw new L9(A0B(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR_VALUE, 17, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE) + iA0L + A0B(0, 2, 71) + c2172bC.A00);
        }
        int i2 = 0;
        if (iA0I == 0) {
            boolean[] zArr = c2172bC.A0F;
            for (int i3 = 0; i3 < iA0L; i3++) {
                int iA0I2 = c1769Mk.A0I();
                i2 += iA0I2;
                zArr[i3] = iA0I2 > i;
            }
        } else {
            i2 = 0 + (iA0I * iA0L);
            Arrays.fill(c2172bC.A0F, 0, iA0L, iA0I > i);
        }
        c2172bC.A02(i2);
    }

    static {
        A0E();
        A0g = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.PB
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return P7.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
        A0i = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
        A0h = new C1714Ke().A11(A0B(717, 18, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE)).A14();
    }

    public P7() {
        this(0);
    }

    public P7(int i) {
        this(i, null);
    }

    public P7(int i, C1777Ms c1777Ms) {
        this(i, c1777Ms, null, null);
    }

    public P7(int i, C1777Ms c1777Ms, C2170bA c2170bA, DrmInitData drmInitData) {
        this(i, c1777Ms, c2170bA, drmInitData, Collections.emptyList());
    }

    public P7(int i, C1777Ms c1777Ms, C2170bA c2170bA, DrmInitData drmInitData, List<VC> list) {
        this(i, c1777Ms, c2170bA, drmInitData, list, null, false, false, false);
    }

    public P7(int i, C1777Ms c1777Ms, C2170bA c2170bA, DrmInitData drmInitData, List<VC> list, ZP zp, boolean z, boolean z2, boolean z3) {
        this.A0A = -9223372036854775807L;
        this.A0M = (c2170bA != null ? 8 : 0) | i;
        this.A0T = c1777Ms;
        this.A0W = c2170bA;
        this.A0N = drmInitData;
        this.A0Z = Collections.unmodifiableList(list);
        this.A0U = zp;
        this.A0c = z;
        this.A0b = z2;
        this.A0a = z3;
        this.A0V = new C2085Zm();
        this.A0O = new C1769Mk(16);
        this.A0R = new C1769Mk(ZE.A03);
        this.A0Q = new C1769Mk(5);
        this.A0P = new C1769Mk();
        this.A0d = new byte[16];
        this.A0S = new C1769Mk(this.A0d);
        this.A0X = new ArrayDeque<>();
        this.A0Y = new ArrayDeque<>();
        this.A0D = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        A0C();
    }

    public static long A01(C1769Mk c1769Mk) {
        c1769Mk.A0f(8);
        int fullAtom = c1769Mk.A0C();
        return AbstractC2140ag.A03(fullAtom) == 0 ? c1769Mk.A0Q() : c1769Mk.A0R();
    }

    public static long A02(C1769Mk c1769Mk) {
        c1769Mk.A0f(8);
        int fullAtom = c1769Mk.A0C();
        int version = AbstractC2140ag.A03(fullAtom);
        return version == 1 ? c1769Mk.A0R() : c1769Mk.A0Q();
    }

    public static Pair<Integer, C2147an> A03(C1769Mk c1769Mk) {
        c1769Mk.A0f(12);
        int defaultSampleDescriptionIndex = c1769Mk.A0C();
        int trackId = c1769Mk.A0L();
        int defaultSampleFlags = c1769Mk.A0L();
        int defaultSampleSize = c1769Mk.A0L();
        int defaultSampleDuration = c1769Mk.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new C2147an(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A05(List<PE> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PE pe = list.get(i);
            int leafChildrenSize = ((AbstractC2140ag) pe).A00;
            if (leafChildrenSize == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = pe.A00.A00;
                UUID uuidA02 = AbstractC2163b3.A02(bArr);
                if (uuidA02 == null) {
                    String strA0B = A0B(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 22, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
                    int leafChildrenSize2 = A0f[7].length();
                    if (leafChildrenSize2 == 31) {
                        throw new RuntimeException();
                    }
                    A0f[1] = "lUOMyA0IdltJAYAt2Kxw3ZV9qw5fH3Ns";
                    MV.A07(strA0B, A0B(455, 42, 51));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA02, A0B(766, 9, 47), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private C2147an A06(SparseArray<C2147an> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (C2147an) AbstractC1747Ln.A01(sparseArray.get(i));
    }

    public static C2153at A07(SparseArray<C2153at> sparseArray) {
        C2153at c2153at = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            C2153at c2153atValueAt = sparseArray.valueAt(i);
            int i2 = c2153atValueAt.A02;
            int i3 = c2153atValueAt.A07.A01;
            if (A0f[2].charAt(15) == 'A') {
                throw new RuntimeException();
            }
            A0f[4] = "qad58z6";
            if (i2 != i3) {
                long nextTrackRunOffset = c2153atValueAt.A07.A0E[c2153atValueAt.A02];
                if (nextTrackRunOffset < j) {
                    c2153at = c2153atValueAt;
                    j = nextTrackRunOffset;
                }
            }
        }
        return c2153at;
    }

    public static C2153at A08(SparseArray<C2153at> sparseArray, int i, boolean z) {
        if (sparseArray.size() == 1 && !z) {
            C2153at c2153atValueAt = sparseArray.valueAt(0);
            if (A0f[4].length() == 12) {
                throw new RuntimeException();
            }
            A0f[7] = "YVo7s93wer1GpxY";
            return c2153atValueAt;
        }
        return sparseArray.get(i);
    }

    private final C2170bA A0A(C2170bA c2170bA) {
        return c2170bA;
    }

    private void A0C() {
        this.A02 = 0;
        this.A00 = 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:17:0x005d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0D() {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.ZP[] r0 = r6.A0L
            if (r0 != 0) goto L4b
            r0 = 2
            com.facebook.ads.redexgen.X.ZP[] r0 = new com.facebook.ads.redexgen.X.ZP[r0]
            r6.A0L = r0
            r5 = 0
            com.facebook.ads.redexgen.X.ZP r0 = r6.A0U
            if (r0 == 0) goto L17
            com.facebook.ads.redexgen.X.ZP[] r2 = r6.A0L
            int r1 = r5 + 1
            com.facebook.ads.redexgen.X.ZP r0 = r6.A0U
            r2[r5] = r0
            r5 = r1
        L17:
            int r0 = r6.A0M
            r0 = r0 & 4
            if (r0 == 0) goto L31
            com.facebook.ads.redexgen.X.ZP[] r4 = r6.A0L
            int r3 = r5 + 1
            com.facebook.ads.redexgen.X.Yw r2 = r6.A0F
            android.util.SparseArray<com.facebook.ads.redexgen.X.at> r0 = r6.A0D
            int r1 = r0.size()
            r0 = 5
            com.facebook.ads.redexgen.X.ZP r0 = r2.ALm(r1, r0)
            r4[r5] = r0
            r5 = r3
        L31:
            com.facebook.ads.redexgen.X.ZP[] r0 = r6.A0L
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r5)
            com.facebook.ads.redexgen.X.ZP[] r0 = (com.facebook.ads.redexgen.X.ZP[]) r0
            r6.A0L = r0
            com.facebook.ads.redexgen.X.ZP[] r4 = r6.A0L
            int r3 = r4.length
            r2 = 0
        L3f:
            if (r2 >= r3) goto L4b
            r1 = r4[r2]
            com.facebook.ads.redexgen.X.VC r0 = com.facebook.ads.redexgen.X.P7.A0h
            r1.A7E(r0)
            int r2 = r2 + 1
            goto L3f
        L4b:
            com.facebook.ads.redexgen.X.ZP[] r0 = r6.A0K
            if (r0 != 0) goto L81
            java.util.List<com.facebook.ads.redexgen.X.VC> r0 = r6.A0Z
            int r0 = r0.size()
            com.facebook.ads.redexgen.X.ZP[] r0 = new com.facebook.ads.redexgen.X.ZP[r0]
            r6.A0K = r0
            r3 = 0
        L5a:
            com.facebook.ads.redexgen.X.ZP[] r0 = r6.A0K
            int r0 = r0.length
            if (r3 >= r0) goto L81
            com.facebook.ads.redexgen.X.Yw r2 = r6.A0F
            android.util.SparseArray<com.facebook.ads.redexgen.X.at> r0 = r6.A0D
            int r0 = r0.size()
            int r1 = r0 + 1
            int r1 = r1 + r3
            r0 = 3
            com.facebook.ads.redexgen.X.ZP r1 = r2.ALm(r1, r0)
            java.util.List<com.facebook.ads.redexgen.X.VC> r0 = r6.A0Z
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.VC r0 = (com.facebook.ads.redexgen.X.VC) r0
            r1.A7E(r0)
            com.facebook.ads.redexgen.X.ZP[] r0 = r6.A0K
            r0[r3] = r1
            int r3 = r3 + 1
            goto L5a
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P7.A0D():void");
    }

    private void A0F(long j) {
        while (!this.A0Y.isEmpty()) {
            C2152as c2152asRemoveFirst = this.A0Y.removeFirst();
            this.A03 -= c2152asRemoveFirst.A00;
            long jA05 = j + c2152asRemoveFirst.A01;
            if (this.A0T != null) {
                jA05 = this.A0T.A05(jA05);
            }
            for (ZP zp : this.A0L) {
                zp.AKC(jA05, 1, c2152asRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0G(long j) throws L9 {
        while (!this.A0X.isEmpty() && this.A0X.peek().A00 == j) {
            A0P(this.A0X.pop());
        }
        A0C();
    }

    public static void A0H(C1769Mk c1769Mk, int i, C2172bC c2172bC) throws L9 {
        c1769Mk.A0f(i + 8);
        int fullAtom = c1769Mk.A0C();
        int flags = AbstractC2140ag.A02(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int fullAtom3 = flags & 2;
            boolean z = fullAtom3 != 0;
            int sampleCount = c1769Mk.A0L();
            int fullAtom4 = c2172bC.A00;
            if (sampleCount == fullAtom4) {
                Arrays.fill(c2172bC.A0F, 0, sampleCount, z);
                int fullAtom5 = c1769Mk.A07();
                c2172bC.A02(fullAtom5);
                c2172bC.A04(c1769Mk);
                return;
            }
            StringBuilder sbAppend = new StringBuilder().append(A0B(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR_VALUE, 17, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE)).append(sampleCount).append(A0B(0, 2, 71));
            int fullAtom6 = c2172bC.A00;
            throw new L9(sbAppend.append(fullAtom6).toString());
        }
        throw new L9(A0B(399, 56, 14));
    }

    public static void A0K(C1769Mk c1769Mk, C2172bC c2172bC) throws L9 {
        c1769Mk.A0f(8);
        int flags = c1769Mk.A0C();
        int fullAtom = AbstractC2140ag.A02(flags) & 1;
        if (fullAtom == 1) {
            c1769Mk.A0g(8);
        }
        int iA0L = c1769Mk.A0L();
        if (iA0L == 1) {
            int entryCount = AbstractC2140ag.A03(flags);
            c2172bC.A03 += entryCount == 0 ? c1769Mk.A0Q() : c1769Mk.A0R();
            return;
        }
        throw new L9(A0B(605, 29, 76) + iA0L);
    }

    public static void A0L(C1769Mk c1769Mk, C2172bC c2172bC) throws L9 {
        A0H(c1769Mk, 0, c2172bC);
    }

    public static void A0M(C1769Mk c1769Mk, C2172bC c2172bC, byte[] bArr) throws L9 {
        c1769Mk.A0f(8);
        c1769Mk.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0i)) {
            return;
        }
        A0H(c1769Mk, 16, c2172bC);
    }

    private void A0N(Q9 q9) throws IOException {
        int i = ((int) this.A07) - this.A00;
        if (this.A0E != null) {
            q9.readFully(this.A0E.A00, 8, i);
            A0V(new PE(this.A01, this.A0E), q9);
        } else {
            q9.ALL(i);
        }
        A0G(q9.A9Q());
    }

    private void A0O(Q9 q9) throws IOException {
        C2153at c2153atValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            C2153at nextTrackBundle = this.A0D.valueAt(i);
            C2172bC c2172bC = nextTrackBundle.A07;
            if (c2172bC.A0A) {
                long nextDataOffset = c2172bC.A03;
                if (nextDataOffset < j) {
                    j = c2172bC.A03;
                    c2153atValueAt = this.A0D.valueAt(i);
                }
            }
        }
        if (c2153atValueAt == null) {
            this.A02 = 3;
            return;
        }
        int trackBundlesSize = (int) (j - q9.A9Q());
        if (A0f[7].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0f;
        strArr[6] = "WaEfqTf7lJ3";
        strArr[5] = "i667FprRZ32RzmMbwXp";
        if (trackBundlesSize >= 0) {
            q9.ALL(trackBundlesSize);
            c2153atValueAt.A07.A05(q9);
            return;
        }
        throw new L9(A0B(325, 39, 81));
    }

    private void A0P(PF pf) throws L9 {
        if (((AbstractC2140ag) pf).A00 == 1836019574) {
            A0R(pf);
        } else if (((AbstractC2140ag) pf).A00 == 1836019558) {
            A0Q(pf);
        } else {
            if (this.A0X.isEmpty()) {
                return;
            }
            this.A0X.peek().A04(pf);
        }
    }

    private void A0Q(PF pf) throws L9 {
        A0S(pf, this.A0D, this.A0M, this.A0d, this.A0c);
        DrmInitData drmInitDataA05 = this.A0N != null ? null : A05(pf.A02);
        if (drmInitDataA05 != null) {
            int i = this.A0D.size();
            for (int trackCount = 0; trackCount < i; trackCount++) {
                this.A0D.valueAt(trackCount).A07(drmInitDataA05);
            }
        }
        if (this.A0B != -9223372036854775807L) {
            int size = this.A0D.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0D.valueAt(i2).A06(this.A0B);
            }
            this.A0B = -9223372036854775807L;
        }
    }

    public static void A0S(PF pf, SparseArray<C2153at> sparseArray, int i, byte[] bArr, boolean z) throws L9 {
        int size = pf.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            PF child = pf.A01.get(i2);
            int i3 = ((AbstractC2140ag) child).A00;
            if (i3 == 1953653094) {
                boolean z2 = true;
                if (size <= 1 || !z) {
                    z2 = false;
                }
                A0T(child, sparseArray, i, bArr, z2);
            }
        }
    }

    public static void A0U(PF pf, C2153at c2153at, long j, int i) {
        int i2 = 0;
        int i3 = 0;
        List<PE> list = pf.A02;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            PE pe = list.get(i4);
            if (((AbstractC2140ag) pe).A00 == 1953658222) {
                C1769Mk trunData = pe.A00;
                trunData.A0f(12);
                int iA0L = trunData.A0L();
                if (iA0L > 0) {
                    i3 += iA0L;
                    i2++;
                }
            }
        }
        c2153at.A02 = 0;
        c2153at.A00 = 0;
        c2153at.A01 = 0;
        c2153at.A07.A03(i2, i3);
        int i5 = 0;
        int trunStartPosition = 0;
        for (int i6 = 0; i6 < size; i6++) {
            PE pe2 = list.get(i6);
            if (((AbstractC2140ag) pe2).A00 == 1953658222) {
                trunStartPosition = A00(c2153at, i5, j, i, pe2.A00, trunStartPosition);
                i5++;
            }
        }
    }

    private void A0V(PE pe, Q9 q9) throws L9 {
        if (!this.A0X.isEmpty()) {
            this.A0X.peek().A05(pe);
            return;
        }
        if (((AbstractC2140ag) pe).A00 == 1936286840) {
            Pair<Long, QJ> pairA04 = A04(pe.A00, q9.A9Q());
            this.A0C = ((Long) pairA04.first).longValue();
            this.A0F.AKP((ZK) pairA04.second);
            this.A0H = true;
            return;
        }
        if (((AbstractC2140ag) pe).A00 != 1701671783) {
            return;
        }
        Uri uriAA2 = q9.AA2();
        if (A0f[1].charAt(30) == 'd') {
            throw new RuntimeException();
        }
        A0f[2] = "EoUeegSjtsb9A8KxNI9aHg5JKd4u1HQf";
        if (uriAA2 == null) {
            return;
        }
        A0I(pe.A00, uriAA2);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0X(int r4) {
        /*
            r0 = 1836019574(0x6d6f6f76, float:4.631354E27)
            if (r4 == r0) goto L6a
            r0 = 1953653099(0x7472616b, float:7.681346E31)
            if (r4 == r0) goto L6a
            r0 = 1835297121(0x6d646961, float:4.4181236E27)
            if (r4 == r0) goto L6a
            r0 = 1835626086(0x6d696e66, float:4.515217E27)
            if (r4 == r0) goto L6a
            r0 = 1937007212(0x7374626c, float:1.9362132E31)
            if (r4 == r0) goto L6a
            r3 = 1836019558(0x6d6f6f66, float:4.6313494E27)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P7.A0f
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L34
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L34:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P7.A0f
            java.lang.String r1 = "qWu6Abm6zk5quImHXptRALDqTyy37"
            r0 = 4
            r2[r0] = r1
            if (r4 == r3) goto L6a
            r0 = 1953653094(0x74726166, float:7.6813435E31)
            if (r4 == r0) goto L6a
            r3 = 1836475768(0x6d766578, float:4.7659988E27)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P7.A0f
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L6e
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P7.A0f
            java.lang.String r1 = "OYxmD55PyL2"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "3gtT7uOFI9qfp6Jo1gk"
            r0 = 5
            r2[r0] = r1
            if (r4 == r3) goto L6a
        L65:
            r0 = 1701082227(0x65647473, float:6.742798E22)
            if (r4 != r0) goto L6c
        L6a:
            r0 = 1
        L6b:
            return r0
        L6c:
            r0 = 0
            goto L6b
        L6e:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P7.A0f
            java.lang.String r1 = "87MBvorHkhCKG"
            r0 = 7
            r2[r0] = r1
            if (r4 == r3) goto L6a
            goto L65
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P7.A0X(int):boolean");
    }

    public static boolean A0Y(int i) {
        if (i != 1751411826) {
            String[] strArr = A0f;
            if (strArr[6].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "K2";
            if (i != 1835296868 && i != 1836476516 && i != 1936286840 && i != 1937011556 && i != 1952867444 && i != 1952868452 && i != 1953196132 && i != 1953654136 && i != 1953658222 && i != 1886614376 && i != 1935763834 && i != 1935763823 && i != 1936027235 && i != 1970628964 && i != 1935828848) {
                if (A0f[4].length() == 12) {
                    throw new RuntimeException();
                }
                A0f[2] = "DRbPOE4BxMlpEg4M5HTO53suvI6PJn0X";
                if (i != 1936158820 && i != 1701606260 && i != 1835362404) {
                    if (A0f[1].charAt(30) == 'd') {
                        throw new RuntimeException();
                    }
                    A0f[4] = "xNtFSaBpX";
                    if (i != 1701671783) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0164, code lost:
    
        if (r2 <= 2147483647L) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0166, code lost:
    
        r10.A0E = null;
        r10.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0174, code lost:
    
        if (r2 <= 2147483647L) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a6, code lost:
    
        throw new com.facebook.ads.redexgen.X.L9(A0B(497, 53, 70));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0Z(com.facebook.ads.redexgen.X.Q9 r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P7.A0Z(com.facebook.ads.redexgen.X.Q9):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean A0a(Q9 q9) throws IOException {
        int iAK7;
        int i = 4;
        int i2 = 1;
        int i3 = 0;
        if (this.A02 == 3) {
            C2153at c2153at = this.A0G;
            String[] strArr = A0f;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "59HqU3sUJrIiXa";
            if (c2153at == null) {
                C2153at c2153atA07 = A07(this.A0D);
                if (c2153atA07 == null) {
                    int iA9Q = (int) (this.A09 - q9.A9Q());
                    if (iA9Q >= 0) {
                        q9.ALL(iA9Q);
                        A0C();
                        return false;
                    }
                    throw new L9(A0B(364, 35, 68));
                }
                int iA9Q2 = (int) (c2153atA07.A07.A0E[c2153atA07.A02] - q9.A9Q());
                if (iA9Q2 < 0) {
                    MV.A07(A0B(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 22, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE), A0B(150, 40, 61));
                    iA9Q2 = 0;
                }
                q9.ALL(iA9Q2);
                this.A0G = c2153atA07;
            }
            this.A06 = this.A0G.A07.A0B[this.A0G.A01];
            if (this.A0G.A01 < this.A0G.A03) {
                q9.ALL(this.A06);
                this.A0G.A02();
                if (!this.A0G.A09()) {
                    this.A0G = null;
                }
                this.A02 = 3;
                return true;
            }
            if (this.A0G.A05.A02 == 1) {
                this.A06 -= 8;
                q9.ALL(8);
            }
            this.A04 = this.A0G.A04();
            this.A06 += this.A04;
            this.A02 = 4;
            this.A05 = 0;
        }
        C2172bC c2172bC = this.A0G.A07;
        C2170bA c2170bA = this.A0G.A05;
        ZP zp = this.A0G.A06;
        int i4 = this.A0G.A01;
        long jA00 = c2172bC.A00(i4);
        if (this.A0T != null) {
            jA00 = this.A0T.A05(jA00);
        }
        if (c2170bA.A01 != 0) {
            byte[] bArr = this.A0Q.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i5 = c2170bA.A01 + 1;
            int i6 = 4 - c2170bA.A01;
            while (this.A04 < this.A06) {
                if (this.A05 == 0) {
                    q9.readFully(bArr, i6, i5);
                    this.A0Q.A0f(i3);
                    int iA0C = this.A0Q.A0C();
                    if (iA0C >= i2) {
                        this.A05 = iA0C - 1;
                        this.A0R.A0f(i3);
                        zp.AK9(this.A0R, i);
                        zp.AK9(this.A0Q, i2);
                        this.A0J = this.A0K.length > 0 && ZE.A0I(c2170bA.A07.A0W, bArr[i]);
                        this.A04 += 5;
                        this.A06 += i6;
                        i2 = 1;
                    } else {
                        throw new L9(A0B(190, 18, 22));
                    }
                } else {
                    if (this.A0J) {
                        this.A0P.A0d(this.A05);
                        q9.readFully(this.A0P.A00, i3, this.A05);
                        zp.AK9(this.A0P, this.A05);
                        iAK7 = this.A05;
                        int iA02 = ZE.A02(this.A0P.A00, this.A0P.A0A());
                        this.A0P.A0f(A0B(756, 10, 42).equals(c2170bA.A07.A0W) ? 1 : 0);
                        this.A0P.A0e(iA02);
                        AbstractC2200be.A03(jA00, this.A0P, this.A0K);
                    } else {
                        iAK7 = zp.AK7(q9, this.A05, false);
                    }
                    this.A04 += iAK7;
                    this.A05 -= iAK7;
                    i = 4;
                    i2 = 1;
                    i3 = 0;
                }
            }
        } else {
            if (this.A0I) {
                AbstractC2054Yg.A07(this.A06, this.A0S);
                int iA0A = this.A0S.A0A();
                zp.AK9(this.A0S, iA0A);
                this.A06 += iA0A;
                this.A04 += iA0A;
                this.A0I = false;
            }
            while (this.A04 < this.A06) {
                this.A04 += zp.AK7(q9, this.A06 - this.A04, false);
            }
        }
        boolean z = c2172bC.A0G[i4];
        ZN zn = null;
        C2171bB c2171bBA00 = this.A0G.A00();
        ?? r11 = z;
        if (c2171bBA00 != null) {
            int i7 = (z ? 1 : 0) | 1073741824;
            zn = c2171bBA00.A01;
            r11 = i7;
        }
        int i8 = r11;
        if (this.A0G != null) {
            i8 = r11;
            if (this.A0G.A05 != null) {
                i8 = r11;
                if (this.A0G.A05.A07 != null) {
                    i8 = r11;
                    if (this.A0G.A05.A07.A0W == A0B(735, 21, 75)) {
                        i8 = (r11 == true ? 1 : 0) | true;
                    }
                }
            }
        }
        long j = jA00;
        zp.AKC(jA00, i8, this.A06, 0, zn);
        this.A0A = j;
        A0F(j);
        if (!this.A0G.A09()) {
            this.A0G = null;
        }
        this.A02 = 3;
        return true;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A0b() {
        return new InterfaceC2068Yv[]{new P7()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A0F = interfaceC2069Yw;
        if (this.A0W != null) {
            C2153at c2153at = new C2153at(interfaceC2069Yw.ALm(0, this.A0W.A03));
            c2153at.A08(this.A0W, new C2147an(0, 0, 0, 0));
            this.A0D.put(0, c2153at);
            A0D();
            this.A0F.A6x();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (!A0Z(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0N(q9);
                    break;
                case 2:
                    A0O(q9);
                    break;
                default:
                    if (A0a(q9)) {
                        return 0;
                    }
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            this.A0D.valueAt(i).A05();
        }
        this.A0Y.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0X.clear();
        this.A0I = false;
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2168b8.A01(q9);
    }
}
