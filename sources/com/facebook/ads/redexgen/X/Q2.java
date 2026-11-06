package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.vungle.ads.internal.protos.Sdk;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Q2 implements InterfaceC2068Yv {
    public static byte[] A0F;
    public static String[] A0G = {"7VILc6T2fi90YCIAfn1BgFJB70DO3", "3kf9wCPoCMKMgBBmWj4Kn2rFOcE4cQeq", "ifZNPrHGx", "SdZ12SiPxsa70qO4F8tCZVEyH0g0aqHv", "kQGsBMYc0BwP7UUGgkaKGSlafwf8ZtNQ", "HwuV1Vcva4fPQ89w8x66jUZKGopI1Svx", "ma7yGVYtRJWI0FO9VPjqR3P76K6", "hNFAB0wQV6PMT9bn1UG9pJYnW0cNrDXI"};
    public static final InterfaceC2072Yz A0H;
    public static final int A0I;
    public static final byte[] A0J;
    public static final byte[] A0K;
    public static final int[] A0L;
    public static final int[] A0M;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public long A06;
    public InterfaceC2069Yw A07;
    public ZK A08;
    public ZP A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final int A0D;
    public final byte[] A0E;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 6);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A0F = new byte[]{69, -117, -105, -122, -110, -118, 69, -103, -98, -107, -118, 69, -127, 127, -97, -85, -80, 104, -110, -112, -80, -68, -63, -100, -58, -79, 121, -60, -16, -10, -19, -27, -95, -17, -16, -11, -95, -25, -22, -17, -27, -95, -62, -50, -45, -95, -23, -26, -30, -27, -26, -13, -81, -65, -30, -30, -37, -35, -41, -30, -106, -73, -61, -56, -106, 119, -100, -92, -113, -102, -105, -110, 78, -98, -113, -110, -110, -105, -100, -107, 78, -112, -105, -94, -95, 78, -108, -99, -96, 78, -108, -96, -113, -101, -109, 78, -106, -109, -113, -110, -109, -96, 78, 119, 107, -114, 121, -128, -108, -125, -120, -114, 78, 82, -122, -113, -113, -96, -76, -93, -88, -82, 110, -96, -84, -79, 108, -74, -95};
    }

    static {
        A08();
        A0H = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.Q3
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return Q2.A0F();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
        A0L = new int[]{13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
        A0M = new int[]{18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        A0J = N1.A1G(A05(12, 6, 88));
        A0K = N1.A1G(A05(18, 9, 105));
        A0I = A0M[8];
    }

    public Q2() {
        this(0);
    }

    public Q2(int i) {
        this.A0D = (i & 2) != 0 ? i | 1 : i;
        this.A0E = new byte[1];
        this.A02 = -1;
    }

    private int A00(int i) throws L9 {
        String strA05;
        if (!A0B(i)) {
            StringBuilder sbAppend = new StringBuilder().append(A05(53, 12, 112));
            if (this.A0C) {
                String[] strArr = A0G;
                if (strArr[0].length() != strArr[2].length()) {
                    String[] strArr2 = A0G;
                    strArr2[4] = "Twp4IlO850TPo1E4YTyLchsCtFfGtrSb";
                    strArr2[5] = "MtsZbapVAAVPOfUE31HeRTNnrpTaK1PZ";
                    strA05 = A05(105, 2, 49);
                }
            } else {
                String[] strArr3 = A0G;
                if (strArr3[3].charAt(10) != strArr3[7].charAt(10)) {
                    A0G[6] = "0XPxtr7UJEh4NTpl27mbN1Cc75yvLJ";
                    strA05 = A05(103, 2, 35);
                } else {
                    String[] strArr4 = A0G;
                    strArr4[3] = "o2iAg1OhvEy9yG5ODnwyBbYE3Y0hdjVD";
                    strArr4[7] = "N5kFWonOQtbpEE1tusyp3zgCtC6sU0ck";
                    strA05 = A05(103, 2, 3);
                }
            }
            throw L9.A01(sbAppend.append(strA05).append(A05(0, 12, 31)).append(i).toString(), null);
        }
        if (!this.A0C) {
            return A0L[i];
        }
        int[] iArr = A0M;
        String[] strArr5 = A0G;
        if (strArr5[0].length() != strArr5[2].length()) {
            String[] strArr6 = A0G;
            strArr6[4] = "FDHrUuqdiqUPWHxNMqTvPmbv7lGOkL9L";
            strArr6[5] = "goImy4SbDl7PF63lBl6O4t4RPw4vGWQ0";
            return iArr[i];
        }
        throw new RuntimeException();
    }

    public static int A01(int i, long j) {
        return (int) (((((long) i) * 8) * 1000000) / j);
    }

    private int A02(Q9 q9) throws IOException {
        q9.AK3();
        q9.AI6(this.A0E, 0, 1);
        byte b = this.A0E[0];
        if ((b & 131) <= 0) {
            return A00((b >> 3) & 15);
        }
        throw L9.A01(A05(65, 38, 40) + ((int) b), null);
    }

    @RequiresNonNull
    private int A03(Q9 q9) throws IOException {
        if (this.A00 == 0) {
            try {
                this.A01 = A02(q9);
                this.A00 = this.A01;
                if (this.A02 == -1) {
                    this.A05 = q9.A9Q();
                    this.A02 = this.A01;
                }
                if (this.A02 == this.A01) {
                    this.A03++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iAK7 = this.A09.AK7(q9, this.A00, true);
        if (iAK7 == -1) {
            return -1;
        }
        int bytesAppended = this.A00;
        this.A00 = bytesAppended - iAK7;
        int bytesAppended2 = this.A00;
        if (bytesAppended2 > 0) {
            return 0;
        }
        this.A09.AKC(this.A06 + this.A04, 1, this.A01, 0, null);
        this.A04 += 20000;
        return 0;
    }

    private QI A04(long j, boolean z) {
        return new QI(j, this.A05, A01(this.A02, 20000L), this.A02, z);
    }

    @EnsuresNonNull
    private void A06() {
        AbstractC1747Ln.A02(this.A09);
    }

    @RequiresNonNull
    private void A07() {
        if (!this.A0A) {
            this.A0A = true;
            String mimeType = this.A0C ? A05(Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 12, 57) : A05(107, 10, 25);
            this.A09.A7E(new C1714Ke().A11(mimeType).A0h(A0I).A0b(1).A0m(this.A0C ? 16000 : 8000).A14());
        }
    }

    @RequiresNonNull
    private void A09(long j, int i) {
        if (this.A0B) {
            return;
        }
        if ((this.A0D & 1) == 0 || j == -1 || (this.A02 != -1 && this.A02 != this.A01)) {
            this.A08 = new Q4(-9223372036854775807L);
            this.A07.AKP(this.A08);
            this.A0B = true;
        } else {
            if (this.A03 < 20 && i != -1) {
                return;
            }
            this.A08 = A04(j, (this.A0D & 2) != 0);
            this.A07.AKP(this.A08);
            String[] strArr = A0G;
            if (strArr[0].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[0] = "9cvd4p0iAE193yR8ueBM9WaVzGeEW";
            strArr2[2] = "HM92Lca7M";
            this.A0B = true;
        }
    }

    private boolean A0A(int i) {
        if (!this.A0C) {
            String[] strArr = A0G;
            if (strArr[3].charAt(10) == strArr[7].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[0] = "KdNaJ9EhnJZSXL3E8EBC4WTnv38vP";
            strArr2[2] = "AKDIjadPC";
            if (i >= 12) {
                if (A0G[6].length() != 6) {
                    String[] strArr3 = A0G;
                    strArr3[3] = "9s0M6rFqEOcwvJ0bcDrBrBYIaiNhft4P";
                    strArr3[7] = "pVdWRntf9CB6AJ6kJ4KFiGEjsKsao8Um";
                    if (i > 14) {
                    }
                } else {
                    A0G[6] = "KNa9TZGqPvNyNP";
                    if (i > 14) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    private boolean A0B(int i) {
        return i >= 0 && i <= 15 && (A0C(i) || A0A(i));
    }

    private boolean A0C(int i) {
        if (this.A0C) {
            String[] strArr = A0G;
            if (strArr[4].charAt(11) != strArr[5].charAt(11)) {
                throw new RuntimeException();
            }
            A0G[1] = "I3ApNiF6FXdtXJsLEQ5WbMjie5hM1cZS";
            if (i < 10 || i > 13) {
                return true;
            }
        }
        return false;
    }

    private boolean A0D(Q9 q9) throws IOException {
        if (A0E(q9, A0J)) {
            this.A0C = false;
            q9.ALL(A0J.length);
            return true;
        }
        boolean zA0E = A0E(q9, A0K);
        String[] strArr = A0G;
        if (strArr[3].charAt(10) == strArr[7].charAt(10)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[4] = "kKHecYbIIV7PHyvNSoDVynYReAKH3pJO";
        strArr2[5] = "q99DfwEaVCzPqhS3f015nGRWlnBrR0gG";
        if (!zA0E) {
            return false;
        }
        this.A0C = true;
        q9.ALL(A0K.length);
        return true;
    }

    public static boolean A0E(Q9 q9, byte[] bArr) throws IOException {
        q9.AK3();
        byte[] bArr2 = new byte[bArr.length];
        q9.AI6(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    public static /* synthetic */ InterfaceC2068Yv[] A0F() {
        return new InterfaceC2068Yv[]{new Q2()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A07 = interfaceC2069Yw;
        this.A09 = interfaceC2069Yw.ALm(0, 1);
        interfaceC2069Yw.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        A06();
        if (q9.A9Q() != 0 || A0D(q9)) {
            A07();
            int iA03 = A03(q9);
            long jA90 = q9.A90();
            if (A0G[1].charAt(30) == 'k') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[4] = "5YCw7IcLOKLPejzYzA6qNAkCvscsEr4o";
            strArr[5] = "ibZdTCSLNYbP8vjpSmTFhEAvwZtyp67O";
            A09(jA90, iA03);
            return iA03;
        }
        throw L9.A01(A05(27, 26, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        this.A04 = 0L;
        this.A01 = 0;
        this.A00 = 0;
        if (j != 0 && (this.A08 instanceof QI)) {
            this.A06 = ((QI) this.A08).A02(j);
        } else {
            this.A06 = 0L;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return A0D(q9);
    }
}
