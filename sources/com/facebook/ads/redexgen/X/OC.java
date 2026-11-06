package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OC implements InterfaceC2265ch {
    public static byte[] A06;
    public static String[] A07 = {"PahcxQEjsm7nWiAGfKA0s9Z8ehxfTyD7", "khchdWyhC3LruOr6lswPp47Tdx1XVi9Q", "PHjUuC9odwRlx209E5wPDT3TYRvN1c2J", "kheAEn4IU3EoVHqb0zIUPlScI42kccyE", "Vnq4DwsxrxxViksnhLlfyKdKnPJfqDp8", "EpM8gpL3PaAF0ukdzfwToTihGon54bgi", "296fAA6HH6ETbj19OFpoPwKNwJQYqoU2", "zODTrbU8fTugRGwwCEVELBReBCv4K7jD"};
    public int A00;
    public int A01;
    public long A02 = -9223372036854775807L;
    public boolean A03;
    public final List<C2282cy> A04;
    public final ZP[] A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A07;
            if (strArr[2].charAt(29) == strArr[4].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "QFs5MHap4BAC0RMiP9GwzAUYPG3tGlSO";
            strArr2[7] = "DSro16b4yiFiIZzzKMdst89KHzJdjiZt";
            bArrCopyOfRange[i4] = (byte) ((b - i3) - 84);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{0, 15, 15, 11, 8, 2, 0, 19, 8, 14, 13, -50, 3, 21, 1, 18, 20, 1, 18};
    }

    static {
        A01();
    }

    public OC(List<C2282cy> list) {
        this.A04 = list;
        this.A05 = new ZP[list.size()];
    }

    private boolean A02(C1769Mk c1769Mk, int i) {
        if (c1769Mk.A07() == 0) {
            return false;
        }
        if (c1769Mk.A0I() != i) {
            this.A03 = false;
        }
        this.A00--;
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A5j(C1769Mk c1769Mk) {
        if (this.A03) {
            if (this.A00 == 2 && !A02(c1769Mk, 32)) {
                return;
            }
            if (this.A00 == 1 && !A02(c1769Mk, 0)) {
                return;
            }
            int iA09 = c1769Mk.A09();
            int iA07 = c1769Mk.A07();
            for (ZP zp : this.A05) {
                c1769Mk.A0f(iA09);
                zp.AK9(c1769Mk, iA07);
            }
            int dataPosition = this.A01;
            this.A01 = dataPosition + iA07;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A6B(com.facebook.ads.redexgen.X.InterfaceC2069Yw r8, com.facebook.ads.redexgen.X.C2286d2 r9) {
        /*
            r7 = this;
            r4 = 0
        L1:
            com.facebook.ads.redexgen.X.ZP[] r0 = r7.A05
            int r0 = r0.length
            if (r4 >= r0) goto L52
            java.util.List<com.facebook.ads.redexgen.X.cy> r0 = r7.A04
            java.lang.Object r6 = r0.get(r4)
            com.facebook.ads.redexgen.X.cy r6 = (com.facebook.ads.redexgen.X.C2282cy) r6
            r9.A05()
            int r1 = r9.A03()
            r0 = 3
            com.facebook.ads.redexgen.X.ZP r3 = r8.ALm(r1, r0)
            com.facebook.ads.redexgen.X.Ke r1 = new com.facebook.ads.redexgen.X.Ke
            r1.<init>()
            java.lang.String r0 = r9.A04()
            com.facebook.ads.redexgen.X.Ke r5 = r1.A0y(r0)
            r2 = 0
            r1 = 19
            r0 = 75
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.Ke r1 = r5.A11(r0)
            byte[] r0 = r6.A02
            java.util.List r0 = java.util.Collections.singletonList(r0)
            com.facebook.ads.redexgen.X.Ke r1 = r1.A12(r0)
            java.lang.String r0 = r6.A01
            com.facebook.ads.redexgen.X.Ke r0 = r1.A10(r0)
            com.facebook.ads.redexgen.X.VC r0 = r0.A14()
            r3.A7E(r0)
            com.facebook.ads.redexgen.X.ZP[] r0 = r7.A05
            r0[r4] = r3
            int r4 = r4 + 1
            goto L1
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.OC.A6B(com.facebook.ads.redexgen.X.Yw, com.facebook.ads.redexgen.X.d2):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
        if (this.A03) {
            if (this.A02 != -9223372036854775807L) {
                for (ZP zp : this.A05) {
                    zp.AKC(this.A02, 1, this.A01, 0, null);
                }
            }
            this.A03 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.A03 = true;
        if (j != -9223372036854775807L) {
            this.A02 = j;
        }
        this.A01 = 0;
        this.A00 = 2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        this.A03 = false;
        this.A02 = -9223372036854775807L;
    }
}
