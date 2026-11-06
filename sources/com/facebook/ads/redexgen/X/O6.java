package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O6 implements InterfaceC2265ch {
    public static byte[] A0E;
    public static String[] A0F = {"CbcqVeMZcITZtFNWimpvuwuahLhtLYXZ", "29kzKeHhA3C3SOqoer3TQXxbA4Kiq9Rh", "i3Hm0CLNouIA5Ct27jLuzhj7sJKKlOu9", "3Mx", "LY", "OmcmlkJq9Di9uclbn5GDfi7kauo8avZP", "EHo2Ng1BpOfM2fD6qAyAT", "rsOVVWfwWvZhLCQOx2FZq2QQaJwyNbVm"};
    public long A01;
    public ZP A02;
    public C2273cp A03;
    public String A04;
    public boolean A05;
    public final C2279cv A0C;
    public final boolean[] A0D = new boolean[3];
    public final C2274cq A0B = new C2274cq(32, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public final C2274cq A09 = new C2274cq(33, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public final C2274cq A07 = new C2274cq(34, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public final C2274cq A08 = new C2274cq(39, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public final C2274cq A0A = new C2274cq(40, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public long A00 = -9223372036854775807L;
    public final C1769Mk A06 = new C1769Mk();

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0E = new byte[]{31, 9, 13, 12, 41, 60, 56, 59, 60, 73, 33, 58, 49, 68, 60, 49, 47, 64, 49, 48, -20, 45, 63, 60, 49, 47, 64, 43, 62, 45, 64, 53, 59, 43, 53, 48, 47, -20, 66, 45, 56, 65, 49, 6, -20, 35, 22, 17, 18, 28, -36, 21, 18, 35, 16};
    }

    static {
        A03();
    }

    public O6(C2279cv c2279cv) {
        this.A0C = c2279cv;
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x0265, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.VC A00(java.lang.String r22, com.facebook.ads.redexgen.X.C2274cq r23, com.facebook.ads.redexgen.X.C2274cq r24, com.facebook.ads.redexgen.X.C2274cq r25) {
        /*
            Method dump skipped, instruction units count: 620
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.O6.A00(java.lang.String, com.facebook.ads.redexgen.X.cq, com.facebook.ads.redexgen.X.cq, com.facebook.ads.redexgen.X.cq):com.facebook.ads.redexgen.X.VC");
    }

    @EnsuresNonNull
    private void A02() {
        AbstractC1747Ln.A02(this.A02);
    }

    @RequiresNonNull
    private void A04(long j, int i, int i2, long j2) {
        this.A03.A05(j, i, this.A05);
        if (!this.A05) {
            this.A0B.A04(i2);
            this.A09.A04(i2);
            this.A07.A04(i2);
            if (this.A0B.A03() && this.A09.A03() && this.A07.A03()) {
                this.A02.A7E(A00(this.A04, this.A0B, this.A09, this.A07));
                this.A05 = true;
            }
        }
        if (this.A08.A04(i2)) {
            int iA02 = ZE.A02(this.A08.A01, this.A08.A00);
            C1769Mk c1769Mk = this.A06;
            if (A0F[5].charAt(29) != 'v') {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[4] = "20";
            strArr[6] = "ouyj7ZGHdueUcsFAx6xq9";
            c1769Mk.A0j(this.A08.A01, iA02);
            this.A06.A0g(5);
            this.A0C.A02(j2, this.A06);
        }
        C2274cq c2274cq = this.A0A;
        if (A0F[5].charAt(29) != 'v') {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[1] = "neXRZElxjMn6hJ6d25KRCyi4OfcVmles";
        strArr2[0] = "97iYtqDlRXoqBp4YWI39vVXATG2bNt9l";
        if (c2274cq.A04(i2)) {
            this.A06.A0j(this.A0A.A01, ZE.A02(this.A0A.A01, this.A0A.A00));
            this.A06.A0g(5);
            this.A0C.A02(j2, this.A06);
        }
    }

    @RequiresNonNull
    private void A05(long j, int i, int i2, long j2) {
        this.A03.A04(j, i, i2, j2, this.A05);
        if (!this.A05) {
            this.A0B.A01(i2);
            this.A09.A01(i2);
            this.A07.A01(i2);
        }
        this.A08.A01(i2);
        this.A0A.A01(i2);
    }

    public static void A06(ZG zg) {
        int i = 0;
        while (true) {
            String[] strArr = A0F;
            String str = strArr[4];
            String str2 = strArr[6];
            int length = str.length();
            int sizeId = str2.length();
            if (length == sizeId) {
                throw new RuntimeException();
            }
            A0F[5] = "gy4Ab9uqHgQsI8KELBsGaRF1ZFdb2vFi";
            if (i < 4) {
                int i2 = 0;
                while (i2 < 6) {
                    int matrixId = 1;
                    if (!zg.A0A()) {
                        zg.A04();
                    } else {
                        int sizeId2 = i << 1;
                        int iMin = Math.min(64, 1 << (sizeId2 + 4));
                        if (i > 1) {
                            zg.A03();
                        }
                        for (int sizeId3 = 0; sizeId3 < iMin; sizeId3++) {
                            zg.A03();
                        }
                    }
                    if (i == 3) {
                        matrixId = 3;
                    }
                    i2 += matrixId;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public static void A07(ZG zg) {
        int iA04 = zg.A04();
        boolean zA0A = false;
        int i = 0;
        for (int numPositivePics = 0; numPositivePics < iA04; numPositivePics++) {
            if (numPositivePics != 0) {
                zA0A = zg.A0A();
            }
            if (zA0A) {
                zg.A06();
                zg.A04();
                for (int i2 = 0; i2 <= i; i2++) {
                    if (zg.A0A()) {
                        zg.A06();
                    }
                }
            } else {
                int j = zg.A04();
                int stRpsIdx = zg.A04();
                i = j + stRpsIdx;
                if (A0F[3].length() == 8) {
                    throw new RuntimeException();
                }
                A0F[3] = "5hTei";
                for (int numShortTermRefPicSets = 0; numShortTermRefPicSets < j; numShortTermRefPicSets++) {
                    zg.A04();
                    zg.A06();
                }
                for (int numShortTermRefPicSets2 = 0; numShortTermRefPicSets2 < stRpsIdx; numShortTermRefPicSets2++) {
                    zg.A04();
                    zg.A06();
                }
            }
        }
    }

    @RequiresNonNull
    private void A08(byte[] bArr, int i, int i2) {
        this.A03.A06(bArr, i, i2);
        if (!this.A05) {
            this.A0B.A02(bArr, i, i2);
            this.A09.A02(bArr, i, i2);
            this.A07.A02(bArr, i, i2);
        }
        this.A08.A02(bArr, i, i2);
        this.A0A.A02(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A5j(C1769Mk c1769Mk) {
        A02();
        while (c1769Mk.A07() > 0) {
            int iA09 = c1769Mk.A09();
            int iA0A = c1769Mk.A0A();
            byte[] bArrA0l = c1769Mk.A0l();
            long j = this.A01;
            int offset = c1769Mk.A07();
            this.A01 = j + ((long) offset);
            ZP zp = this.A02;
            int offset2 = c1769Mk.A07();
            zp.AK9(c1769Mk, offset2);
            while (iA09 < iA0A) {
                int iA04 = ZE.A04(bArrA0l, iA09, iA0A, this.A0D);
                if (iA04 == iA0A) {
                    A08(bArrA0l, iA09, iA0A);
                    return;
                }
                int bytesWrittenPastPosition = ZE.A00(bArrA0l, iA04);
                int i = iA04 - iA09;
                if (i > 0) {
                    A08(bArrA0l, iA09, iA04);
                }
                int lengthToNalUnit = iA0A - iA04;
                long j2 = this.A01 - ((long) lengthToNalUnit);
                int offset3 = i < 0 ? -i : 0;
                A04(j2, lengthToNalUnit, offset3, this.A00);
                long absolutePosition = this.A00;
                A05(j2, lengthToNalUnit, bytesWrittenPastPosition, absolutePosition);
                iA09 = iA04 + 3;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A04 = c2286d2.A04();
        this.A02 = interfaceC2069Yw.ALm(c2286d2.A03(), 2);
        this.A03 = new C2273cp(this.A02);
        this.A0C.A03(interfaceC2069Yw, c2286d2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A00 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        this.A01 = 0L;
        this.A00 = -9223372036854775807L;
        ZE.A0H(this.A0D);
        this.A0B.A00();
        this.A09.A00();
        this.A07.A00();
        this.A08.A00();
        this.A0A.A00();
        if (this.A03 != null) {
            this.A03.A03();
        }
    }
}
