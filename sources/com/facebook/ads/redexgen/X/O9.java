package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O9 implements InterfaceC2265ch {
    public static byte[] A0B;
    public static String[] A0C = {"RmzQBswPTcHRn", "7sruaPUkodwgw3QS8ipm4Ha2G8d1hbf4", "aAnMB0oWNfLMgIl9siRQZtZewG2pJ8kh", "xQmU", "ncat", "INsyHwzMN49j6MmZBuVitykaDF", "oUMWpFbAo", "SoiUZ4hHIkR"};
    public static final float[] A0D;
    public long A00;
    public long A01;
    public ZP A02;
    public C2269cl A03;
    public String A04;
    public boolean A05;
    public final C1769Mk A06;
    public final C2268ck A07;
    public final C2274cq A08;
    public final C2289d5 A09;
    public final boolean[] A0A;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0B = new byte[]{-75, -97, -93, -96, -65, -46, -50, -47, -46, -33, -77, -40, -32, -53, -42, -45, -50, -118, -53, -35, -38, -49, -51, -34, -118, -36, -53, -34, -45, -39, 12, 49, 57, 36, 47, 44, 39, -29, 57, 50, 51, 34, 44, 49, 38, 53, 40, 48, 40, 49, 55, 34, 55, 44, 48, 40, 34, 53, 40, 54, 50, 47, 56, 55, 44, 50, 49, 43, 68, 62, 55, 68, 58, 66, 59, 58, -10, 76, 63, 58, 59, 69, -10, 69, 56, 64, 59, 57, 74, -10, 66, 55, 79, 59, 72, -10, 73, 62, 55, 70, 59, 44, 31, 26, 27, 37, -27, 35, 38, -22, 44, -29, 27, 41};
    }

    static {
        A02();
        A0D = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    }

    public O9() {
        this(null);
    }

    public O9(C2289d5 c2289d5) {
        this.A09 = c2289d5;
        this.A0A = new boolean[4];
        this.A07 = new C2268ck(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        this.A00 = -9223372036854775807L;
        if (c2289d5 != null) {
            this.A08 = new C2274cq(178, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            this.A06 = new C1769Mk();
        } else {
            this.A08 = null;
            this.A06 = null;
        }
    }

    public static VC A00(C2268ck c2268ck, int i, String str) {
        float f;
        byte[] bArrCopyOf = Arrays.copyOf(c2268ck.A02, c2268ck.A00);
        C1768Mj c1768Mj = new C1768Mj(bArrCopyOf);
        c1768Mj.A0A(i);
        c1768Mj.A0A(4);
        c1768Mj.A07();
        c1768Mj.A09(8);
        if (c1768Mj.A0H()) {
            c1768Mj.A09(4);
            c1768Mj.A09(3);
        }
        int iA04 = c1768Mj.A04(4);
        String strA01 = A01(10, 20, 13);
        String strA012 = A01(0, 10, 16);
        if (iA04 == 15) {
            int iA042 = c1768Mj.A04(8);
            int iA043 = c1768Mj.A04(8);
            if (iA043 == 0) {
                MV.A07(strA012, strA01);
                f = 1.0f;
            } else {
                f = iA042 / iA043;
            }
        } else if (iA04 < A0D.length) {
            f = A0D[iA04];
        } else {
            MV.A07(strA012, strA01);
            f = 1.0f;
        }
        if (c1768Mj.A0H()) {
            c1768Mj.A09(2);
            String[] strArr = A0C;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[6] = "1DXyjb23W";
            strArr2[7] = "3ybYm7e6XuU";
            c1768Mj.A09(1);
            if (c1768Mj.A0H()) {
                c1768Mj.A09(15);
                c1768Mj.A07();
                c1768Mj.A09(15);
                c1768Mj.A07();
                String[] strArr3 = A0C;
                if (strArr3[2].charAt(17) != strArr3[1].charAt(17)) {
                    String[] strArr4 = A0C;
                    strArr4[5] = "RxqFL1LhobXh1ktc6pkc0Ud8kV";
                    strArr4[0] = "1CEsVmL5qvOrx";
                    c1768Mj.A09(15);
                    c1768Mj.A07();
                    c1768Mj.A09(3);
                    c1768Mj.A09(4);
                    c1768Mj.A07();
                    c1768Mj.A09(15);
                    c1768Mj.A07();
                } else {
                    String[] strArr5 = A0C;
                    strArr5[3] = "7wQW";
                    strArr5[4] = "XsvE";
                    c1768Mj.A09(15);
                    c1768Mj.A07();
                    c1768Mj.A09(3);
                    c1768Mj.A09(11);
                    c1768Mj.A07();
                    c1768Mj.A09(15);
                    c1768Mj.A07();
                }
            }
        }
        if (c1768Mj.A04(2) != 0) {
            MV.A07(strA012, A01(67, 34, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        }
        c1768Mj.A07();
        int iA044 = c1768Mj.A04(16);
        c1768Mj.A07();
        if (c1768Mj.A0H()) {
            if (iA044 == 0) {
                MV.A07(strA012, A01(30, 37, 102));
            } else {
                int i2 = 0;
                for (int i3 = iA044 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                c1768Mj.A09(i2);
            }
        }
        c1768Mj.A07();
        int parWidth = c1768Mj.A04(13);
        c1768Mj.A07();
        int vopTimeIncrementResolution = c1768Mj.A04(13);
        c1768Mj.A07();
        c1768Mj.A07();
        return new C1714Ke().A0y(str).A11(A01(101, 13, 89)).A0r(parWidth).A0f(vopTimeIncrementResolution).A0Y(f).A12(Collections.singletonList(bArrCopyOf)).A14();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x016e A[LOOP:0: B:3:0x0029->B:48:0x016e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0168 A[EDGE_INSN: B:53:0x0168->B:46:0x0168 BREAK  A[LOOP:0: B:3:0x0029->B:48:0x016e], SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A5j(com.facebook.ads.redexgen.X.C1769Mk r12) {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.O9.A5j(com.facebook.ads.redexgen.X.Mk):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A04 = c2286d2.A04();
        this.A02 = interfaceC2069Yw.ALm(c2286d2.A03(), 2);
        this.A03 = new C2269cl(this.A02);
        if (this.A09 != null) {
            this.A09.A03(interfaceC2069Yw, c2286d2);
        }
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
        ZE.A0H(this.A0A);
        this.A07.A02();
        if (this.A03 != null) {
            this.A03.A00();
        }
        C2274cq c2274cq = this.A08;
        String[] strArr = A0C;
        if (strArr[5].length() != strArr[0].length()) {
            String[] strArr2 = A0C;
            strArr2[5] = "5MBZOjuw4oVT52TSKhuedhnMOR";
            strArr2[0] = "KYdk32ZZwRgXS";
            if (c2274cq != null) {
                C2274cq c2274cq2 = this.A08;
                String[] strArr3 = A0C;
                if (strArr3[5].length() != strArr3[0].length()) {
                    String[] strArr4 = A0C;
                    strArr4[5] = "X4bSBGsfUgHipqaUiLNXeKByPJ";
                    strArr4[0] = "P2KClEvmHXOZL";
                    c2274cq2.A00();
                }
            }
            this.A01 = 0L;
            this.A00 = -9223372036854775807L;
            return;
        }
        throw new RuntimeException();
    }
}
