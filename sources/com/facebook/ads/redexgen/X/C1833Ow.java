package com.facebook.ads.redexgen.X;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ow, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1833Ow implements InterfaceC2180bK {
    public static byte[] A0C;
    public static String[] A0D = {"pxXqv8XZ1lv3V3TAiNOu4b32SOCX", "IvhjJM88lAoY0Iv4NSmRB0oJb2wBlvep", "KOXuPCAYUg9ZwuQJjGNJqxUqaLdBgsU9", "pPbt2WhJKpCWaEhP4rilJIRVEuPil6gJ", "QO6j9E86YRYSdRU1dSMlNXT9TQkwCzG1", "gzLdA0AJppetxdsiu", "rYSr0TiCLEg", "0oeUFKSTvhO7Epcmu"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public final long A08;
    public final long A09;
    public final C2179bJ A0A;
    public final AbstractC2183bN A0B;

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 5);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A0C = new byte[]{-71, -38, -117, -38, -46, -46, -117, -37, -52, -46, -48, -117, -50, -52, -39, -117, -51, -48, -117, -47, -38, -32, -39, -49, -103};
    }

    static {
        A08();
    }

    public C1833Ow(AbstractC2183bN abstractC2183bN, long j, long j2, long j3, long j4, boolean z) {
        AbstractC1747Ln.A07(j >= 0 && j2 > j);
        this.A0B = abstractC2183bN;
        this.A09 = j;
        this.A08 = j2;
        if (j3 == j2 - j || z) {
            this.A07 = j4;
            this.A00 = 4;
        } else {
            this.A00 = 0;
        }
        this.A0A = new C2179bJ();
    }

    private long A00(Q9 q9) throws IOException {
        if (this.A04 == this.A01) {
            return -1L;
        }
        long jA9Q = q9.A9Q();
        if (this.A0A.A04(q9, this.A01)) {
            this.A0A.A05(q9, false);
            q9.AK3();
            long j = this.A06 - this.A0A.A05;
            int i = this.A0A.A01;
            String[] strArr = A0D;
            if (strArr[2].charAt(1) == strArr[4].charAt(1)) {
                A0D[0] = "j4F1uB3VO7nGScrsD42BkqddT8o7";
                int pageSize = i + this.A0A.A00;
                if (0 <= j) {
                    String[] strArr2 = A0D;
                    if (strArr2[1].charAt(6) != strArr2[3].charAt(6)) {
                        A0D[6] = "BFBkQlcfNzz";
                        if (j < 72000) {
                            return -1L;
                        }
                    }
                }
                if (j >= 0) {
                    this.A04 = q9.A9Q() + ((long) pageSize);
                    this.A05 = this.A0A.A05;
                } else {
                    this.A01 = jA9Q;
                    this.A02 = this.A0A.A05;
                }
                if (this.A01 - this.A04 < 100000) {
                    this.A01 = this.A04;
                    return this.A04;
                }
                long jA9Q2 = q9.A9Q() - (((long) pageSize) * (j <= 0 ? 2L : 1L));
                long j2 = (this.A01 - this.A04) * j;
                long currentPosition = this.A02;
                return N1.A0T(jA9Q2 + (j2 / (currentPosition - this.A05)), this.A04, this.A01 - 1);
            }
        } else if (this.A04 != jA9Q) {
            long j3 = this.A04;
            String[] strArr3 = A0D;
            if (strArr3[5].length() == strArr3[7].length()) {
                String[] strArr4 = A0D;
                strArr4[5] = "ZEZcJDudWr2f0D2oU";
                strArr4[7] = "H1vsfBkcR7OLJUG4g";
                return j3;
            }
        } else {
            throw new IOException(A07(0, 25, 102));
        }
        throw new RuntimeException();
    }

    private final long A01(Q9 q9) throws IOException {
        this.A0A.A02();
        if (this.A0A.A03(q9)) {
            this.A0A.A05(q9, false);
            q9.ALL(this.A0A.A01 + this.A0A.A00);
            long j = this.A0A.A05;
            while ((this.A0A.A04 & 4) != 4 && this.A0A.A03(q9) && q9.A9Q() < this.A08) {
                if (!this.A0A.A05(q9, true) || !AbstractC2070Yx.A02(q9, this.A0A.A01 + this.A0A.A00)) {
                    return j;
                }
                j = this.A0A.A05;
            }
            return j;
        }
        throw new EOFException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2180bK
    /* JADX INFO: renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final P1 A68() {
        C2177bH c2177bH = null;
        if (this.A07 != 0) {
            return new P1(this);
        }
        return null;
    }

    private void A09(Q9 q9) throws IOException {
        while (true) {
            this.A0A.A03(q9);
            this.A0A.A05(q9, false);
            if (this.A0A.A05 > this.A06) {
                q9.AK3();
                return;
            }
            q9.ALL(this.A0A.A01 + this.A0A.A00);
            long jA9Q = q9.A9Q();
            if (A0D[0].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A0D;
            strArr[5] = "UiaJRTLcs1IqfyThs";
            strArr[7] = "JvJRO8g745V0qqbtm";
            this.A04 = jA9Q;
            this.A05 = this.A0A.A05;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2180bK
    public final long AIa(Q9 q9) throws IOException {
        switch (this.A00) {
            case 0:
                this.A03 = q9.A9Q();
                this.A00 = 1;
                long j = this.A08 - 65307;
                if (j > this.A03) {
                    return j;
                }
            case 1:
                long jA01 = A01(q9);
                if (A0D[0].length() != 28) {
                    this.A07 = jA01;
                    this.A00 = 4;
                    return this.A03;
                }
                String[] strArr = A0D;
                strArr[2] = "XOVhCwVBkB4cmNhHRmEpfZl2KOPkU4BK";
                strArr[4] = "cOO16OsTShhrr75VuwDUlTlxDPGBlV6N";
                this.A07 = jA01;
                this.A00 = 4;
                return this.A03;
            case 2:
                long jA00 = A00(q9);
                String[] strArr2 = A0D;
                if (strArr2[2].charAt(1) == strArr2[4].charAt(1)) {
                    A0D[6] = "dYXJNgIcoJn";
                    if (jA00 != -1) {
                        return jA00;
                    }
                    this.A00 = 3;
                    break;
                } else {
                    throw new RuntimeException();
                }
            case 3:
                A09(q9);
                this.A00 = 4;
                return -(this.A05 + 2);
            case 4:
                return -1L;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2180bK
    public final void ALV(long j) {
        this.A06 = N1.A0T(j, 0L, this.A07 - 1);
        this.A00 = 2;
        this.A04 = this.A09;
        this.A01 = this.A08;
        this.A05 = 0L;
        this.A02 = this.A07;
    }
}
