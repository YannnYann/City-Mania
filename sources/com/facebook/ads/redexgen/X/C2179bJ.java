package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2179bJ {
    public static byte[] A0B;
    public static String[] A0C = {"HGPuB8qmuxBgpGTqkkjvYzrCDskUp", "sF6fS75l2Cff0tziaX", "Zza04ks", "dNGMYSaiVbuE60ePOHja3XP4IlV", "q5npa5t", "wgntkRyUJ0qfijEJi4TyzmgID1", "fepOHmymjACox7eFs8FhQnXrtP3Evpqq", "KxtJjVrZLWzYUfpgJdwgfb5Z4AGZ"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public final int[] A09 = new int[255];
    public final C1769Mk A0A = new C1769Mk(255);

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0B = new byte[]{34, 57, 36, 34, 39, 39, 56, 37, 35, 50, 51, 119, 53, 62, 35, 119, 36, 35, 37, 50, 54, 58, 119, 37, 50, 33, 62, 36, 62, 56, 57};
    }

    static {
        A01();
    }

    public final void A02() {
        this.A03 = 0;
        this.A04 = 0;
        this.A05 = 0L;
        this.A08 = 0L;
        this.A07 = 0L;
        this.A06 = 0L;
        this.A02 = 0;
        this.A01 = 0;
        this.A00 = 0;
    }

    public final boolean A03(Q9 q9) throws IOException {
        return A04(q9, -1L);
    }

    public final boolean A04(Q9 q9, long j) throws IOException {
        AbstractC1747Ln.A07(q9.A9Q() == q9.A9L());
        this.A0A.A0d(4);
        while (true) {
            if (j != -1 && q9.A9Q() + 4 >= j) {
                break;
            }
            byte[] bArrA0l = this.A0A.A0l();
            if (A0C[1].length() == 18) {
                A0C[0] = "talPG6FYcHiBUTQzt0zzTBAf7LU39";
                if (!AbstractC2070Yx.A04(q9, bArrA0l, 0, 4, true)) {
                    break;
                }
                this.A0A.A0f(0);
                if (this.A0A.A0Q() == 1332176723) {
                    q9.AK3();
                    return true;
                }
                q9.ALL(1);
            } else {
                throw new RuntimeException();
            }
        }
        do {
            if (j != -1 && q9.A9Q() >= j) {
                break;
            }
        } while (q9.ALI(1) != -1);
        return false;
    }

    /* JADX WARN: Incorrect condition in loop: B:18:0x0090 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A05(com.facebook.ads.redexgen.X.Q9 r9, boolean r10) throws java.io.IOException {
        /*
            r8 = this;
            r8.A02()
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            r3 = 27
            r0.A0d(r3)
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            byte[] r0 = r0.A0l()
            r2 = 0
            boolean r0 = com.facebook.ads.redexgen.X.AbstractC2070Yx.A04(r9, r0, r2, r3, r10)
            if (r0 == 0) goto L24
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            long r6 = r0.A0Q()
            r4 = 1332176723(0x4f676753, double:6.58182753E-315)
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L25
        L24:
            return r2
        L25:
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            int r0 = r0.A0I()
            r8.A03 = r0
            int r0 = r8.A03
            if (r0 == 0) goto L42
            if (r10 == 0) goto L34
            return r2
        L34:
            r2 = 0
            r1 = 31
            r0 = 67
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.L9 r0 = com.facebook.ads.redexgen.X.L9.A00(r0)
            throw r0
        L42:
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            int r0 = r0.A0I()
            r8.A04 = r0
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            long r0 = r0.A0N()
            r8.A05 = r0
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            long r0 = r0.A0O()
            r8.A08 = r0
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            long r0 = r0.A0O()
            r8.A07 = r0
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            long r0 = r0.A0O()
            r8.A06 = r0
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            int r0 = r0.A0I()
            r8.A02 = r0
            int r0 = r8.A02
            int r0 = r0 + r3
            r8.A01 = r0
            com.facebook.ads.redexgen.X.Mk r1 = r8.A0A
            int r0 = r8.A02
            r1.A0d(r0)
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            byte[] r1 = r0.A0l()
            int r0 = r8.A02
            boolean r0 = com.facebook.ads.redexgen.X.AbstractC2070Yx.A04(r9, r1, r2, r0, r10)
            if (r0 != 0) goto L8d
            return r2
        L8d:
            r2 = 0
        L8e:
            int r0 = r8.A02
            if (r2 >= r0) goto La8
            int[] r1 = r8.A09
            com.facebook.ads.redexgen.X.Mk r0 = r8.A0A
            int r0 = r0.A0I()
            r1[r2] = r0
            int r1 = r8.A00
            int[] r0 = r8.A09
            r0 = r0[r2]
            int r1 = r1 + r0
            r8.A00 = r1
            int r2 = r2 + 1
            goto L8e
        La8:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2179bJ.A05(com.facebook.ads.redexgen.X.Q9, boolean):boolean");
    }
}
