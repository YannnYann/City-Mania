package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O1 implements InterfaceC2287d3 {
    public static byte[] A0C;
    public static String[] A0D = {"s1OLgDpLhwU6S3ev2LG7370P1S1hgRKL", "ZlUa", "q8uvNR0LmWicI4Royxvt1Zty1bBi2yMt", "lN3rpYNXmWWD132XUlN2ThtdYynBh6B0", "DemfNCPv02gD7OuapGlPMaBjpYQUBs9I", "lBsGkgfsHAkvf0DthDZ1e", "lPkycUi8aQ8EQdlpq3OxMzwckgLEoe", "P0z8XJzQz6G5COmoNubq0j8sI0uUWshp"};
    public int A00;
    public int A01;
    public int A02;
    public long A04;
    public C1777Ms A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final InterfaceC2265ch A0B;
    public final C1768Mj A0A = new C1768Mj(new byte[10]);
    public int A03 = 0;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0C = new byte[]{105, -74, -72, -69, -82, 105, -85, -62, -67, -82, -68, -51, -10, -4, -11, -21, -89, -11, -20, -18, -24, -5, -16, -3, -20, -89, -9, -24, -22, -14, -20, -5, -89, -9, -24, 0, -13, -10, -24, -21, -89, -6, -16, 1, -20, -63, -89, 103, 124, -118, 105, 124, 120, 123, 124, -119, 114, -117, -126, -107, -115, -126, -128, -111, -126, -127, 61, -112, -111, 126, -113, -111, 61, -128, -116, -127, -126, 61, -115, -113, -126, -125, -122, -107, 87, 61, 111, -120, 127, -110, -118, 127, 125, -114, 127, 126, 58, -115, -114, 123, -116, -114, 58, -125, -120, 126, -125, 125, 123, -114, -119, -116, 58, -116, 127, 123, 126, -125, -120, -127, 58, 127, -110, -114, 127, -120, 126, 127, 126, 58, -126, 127, 123, 126, 127, -116, -74, -49, -58, -39, -47, -58, -60, -43, -58, -59, -127, -44, -43, -62, -45, -43, -127, -54, -49, -59, -54, -60, -62, -43, -48, -45, -101, -127, -58, -39, -47, -58, -60, -43, -58, -59, -127};
    }

    static {
        A02();
    }

    public O1(InterfaceC2265ch interfaceC2265ch) {
        this.A0B = interfaceC2265ch;
    }

    @RequiresNonNull
    private void A01() {
        this.A0A.A08(0);
        this.A04 = -9223372036854775807L;
        if (this.A08) {
            this.A0A.A09(4);
            long jA04 = ((long) this.A0A.A04(3)) << 30;
            this.A0A.A09(1);
            long pts = this.A0A.A04(15) << 15;
            long j = jA04 | pts;
            this.A0A.A09(1);
            long pts2 = this.A0A.A04(15);
            long j2 = j | pts2;
            this.A0A.A09(1);
            if (!this.A09 && this.A07) {
                this.A0A.A09(4);
                long pts3 = this.A0A.A04(3);
                this.A0A.A09(1);
                long pts4 = (pts3 << 30) | ((long) (this.A0A.A04(15) << 15));
                this.A0A.A09(1);
                long pts5 = pts4 | ((long) this.A0A.A04(15));
                this.A0A.A09(1);
                this.A05.A06(pts5);
                this.A09 = true;
            }
            this.A04 = this.A05.A06(j2);
        }
    }

    private void A03(int i) {
        this.A03 = i;
        this.A00 = 0;
    }

    private boolean A04() {
        this.A0A.A08(0);
        int iA04 = this.A0A.A04(24);
        String strA00 = A00(47, 9, 7);
        if (iA04 != 1) {
            MV.A07(strA00, A00(56, 30, 13) + iA04);
            this.A02 = -1;
            return false;
        }
        this.A0A.A09(8);
        int iA042 = this.A0A.A04(16);
        this.A0A.A09(5);
        this.A06 = this.A0A.A0H();
        this.A0A.A09(2);
        this.A08 = this.A0A.A0H();
        this.A07 = this.A0A.A0H();
        this.A0A.A09(6);
        int startCodePrefix = this.A0A.A04(8);
        this.A01 = startCodePrefix;
        if (iA042 == 0) {
            this.A02 = -1;
        } else {
            int startCodePrefix2 = iA042 + 6;
            int packetLength = startCodePrefix2 - 9;
            int startCodePrefix3 = this.A01;
            this.A02 = packetLength - startCodePrefix3;
            int startCodePrefix4 = this.A02;
            if (startCodePrefix4 < 0) {
                StringBuilder sbAppend = new StringBuilder().append(A00(11, 36, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
                int startCodePrefix5 = this.A02;
                MV.A07(strA00, sbAppend.append(startCodePrefix5).toString());
                this.A02 = -1;
            }
        }
        return true;
    }

    private boolean A05(C1769Mk c1769Mk, byte[] bArr, int i) {
        int iMin = Math.min(c1769Mk.A07(), i - this.A00);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            c1769Mk.A0g(iMin);
        } else {
            int bytesToRead = this.A00;
            c1769Mk.A0k(bArr, bytesToRead, iMin);
        }
        int bytesToRead2 = this.A00;
        this.A00 = bytesToRead2 + iMin;
        int bytesToRead3 = this.A00;
        return bytesToRead3 == i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2287d3
    public final void A5k(C1769Mk c1769Mk, int i) throws L9 {
        AbstractC1747Ln.A02(this.A05);
        if ((i & 1) != 0) {
            int i2 = this.A03;
            String strA00 = A00(47, 9, 7);
            switch (i2) {
                case 0:
                case 1:
                    A03(1);
                    break;
                case 2:
                    MV.A07(strA00, A00(86, 50, 10));
                    A03(1);
                    break;
                case 3:
                    if (this.A02 != -1) {
                        MV.A07(strA00, A00(Sdk.SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 37, 81) + this.A02 + A00(0, 11, 57));
                    }
                    this.A0B.AI2();
                    A03(1);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
        while (c1769Mk.A07() > 0) {
            switch (this.A03) {
                case 0:
                    c1769Mk.A0g(c1769Mk.A07());
                    break;
                case 1:
                    if (A05(c1769Mk, this.A0A.A00, 9)) {
                        A03(A04() ? 2 : 0);
                    }
                    break;
                case 2:
                    if (!A05(c1769Mk, this.A0A.A00, Math.min(10, this.A01))) {
                        continue;
                    } else {
                        int i3 = this.A01;
                        String[] strArr = A0D;
                        String str = strArr[7];
                        String str2 = strArr[0];
                        int iCharAt = str.charAt(13);
                        int readLength = str2.charAt(13);
                        if (iCharAt != readLength) {
                            String[] strArr2 = A0D;
                            strArr2[7] = "La2ywzQaUlSKJwW2oa92KpQQSNBVqlsm";
                            strArr2[0] = "Lmwsgxnc2XnvTDKag3jwqZ0KvySkQZYo";
                            if (A05(c1769Mk, null, i3)) {
                                A01();
                                i |= this.A06 ? 4 : 0;
                                this.A0B.AI3(this.A04, i);
                                A03(3);
                            }
                        } else {
                            throw new RuntimeException();
                        }
                    }
                    break;
                case 3:
                    int iA07 = c1769Mk.A07();
                    int readLength2 = this.A02;
                    if (readLength2 != -1) {
                        int readLength3 = this.A02;
                        i = iA07 - readLength3;
                    }
                    if (i > 0) {
                        iA07 -= i;
                        int readLength4 = c1769Mk.A09();
                        c1769Mk.A0e(readLength4 + iA07);
                    }
                    this.A0B.A5j(c1769Mk);
                    int readLength5 = this.A02;
                    if (readLength5 != -1) {
                        int readLength6 = this.A02;
                        this.A02 = readLength6 - iA07;
                        int readLength7 = this.A02;
                        if (readLength7 == 0) {
                            this.A0B.AI2();
                            A03(1);
                        }
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2287d3
    public final void AAo(C1777Ms c1777Ms, InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        this.A05 = c1777Ms;
        this.A0B.A6B(interfaceC2069Yw, c2286d2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2287d3
    public final void AKN() {
        this.A03 = 0;
        this.A00 = 0;
        this.A09 = false;
        this.A0B.AKN();
    }
}
