package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PD implements InterfaceC2143aj {
    public static byte[] A03;
    public final int A00;
    public final int A01;
    public final C1769Mk A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{66, 78, 29, 26, 29, 20, 78, 29, 15, 3, 30, 2, 11, 78, 29, 7, 20, 11, 84, 78, 78, 123, 96, 98, 95, 110, 125, 124, 106, 125, 124, 16, 36, 53, 56, 62, 113, 34, 48, 60, 33, 61, 52, 113, 34, 56, 43, 52, 113, 60, 56, 34, 60, 48, 37, 50, 57, 127, 113, 34, 37, 34, 53, 113, 34, 48, 60, 33, 61, 52, 113, 34, 56, 43, 52, 107, 113, 45, 57, 40, 37, 35, 99, 62, 45, 59};
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public PD(com.facebook.ads.redexgen.X.PE r7, com.facebook.ads.redexgen.X.VC r8) {
        /*
            r6 = this;
            r6.<init>()
            com.facebook.ads.redexgen.X.Mk r0 = r7.A00
            r6.A02 = r0
            com.facebook.ads.redexgen.X.Mk r1 = r6.A02
            r0 = 12
            r1.A0f(r0)
            com.facebook.ads.redexgen.X.Mk r0 = r6.A02
            int r5 = r0.A0L()
            r2 = 77
            r1 = 9
            r0 = 13
            java.lang.String r1 = A00(r2, r1, r0)
            java.lang.String r0 = r8.A0W
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L6e
            int r1 = r8.A0C
            int r0 = r8.A06
            int r4 = com.facebook.ads.redexgen.X.N1.A06(r1, r0)
            if (r5 == 0) goto L34
            int r0 = r5 % r4
            if (r0 == 0) goto L6e
        L34:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 31
            r1 = 46
            r0 = 16
            java.lang.String r0 = A00(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r3 = r0.append(r4)
            r2 = 0
            r1 = 20
            r0 = 47
            java.lang.String r0 = A00(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.String r3 = r0.toString()
            r2 = 20
            r1 = 11
            r0 = 78
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r0, r3)
            r5 = r4
        L6e:
            if (r5 != 0) goto L71
            r5 = -1
        L71:
            r6.A00 = r5
            com.facebook.ads.redexgen.X.Mk r0 = r6.A02
            int r0 = r0.A0L()
            r6.A01 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.PD.<init>(com.facebook.ads.redexgen.X.PE, com.facebook.ads.redexgen.X.VC):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2143aj
    public final int A8l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2143aj
    public final int A9Y() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2143aj
    public final int AIf() {
        return this.A00 == -1 ? this.A02.A0L() : this.A00;
    }
}
