package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1849Pt extends AbstractC2079Zg {
    public static byte[] A03;
    public static String[] A04 = {"cwKPgcDxQqSwLVVQELp9bbZKCqW2fYMY", "DcD4H6cvJNFGOch4DZZ", "HmuDAeT", "MV0xSeIo98jdtWfuEBVaVTM5BunnSac8", "udXiIF1tmpILKj", "XN7xHJl0ang0BApPoxGfzkNNgR5gmJr7", "T52Kaur", "oifYkOYfoN4"};
    public static final int[] A05;
    public int A00;
    public boolean A01;
    public boolean A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{109, -95, -112, -107, -101, 76, -110, -101, -98, -103, -115, -96, 76, -102, -101, -96, 76, -97, -95, -100, -100, -101, -98, -96, -111, -112, 102, 76, -2, 18, 1, 6, 12, -52, 4, -44, -50, -50, -54, -2, 9, -2, 20, -31, -11, -28, -23, -17, -81, -25, -73, -79, -79, -83, -19, -20, -31, -9, -81, -61, -78, -73, -67, 125, -69, -66, -126, -81, 123, -70, -81, -62, -69, -66, -46, -63, -58, -52, -116, -54, -51, -62, -60};
    }

    static {
        A01();
        A05 = new int[]{5512, 11025, 22050, 44100};
    }

    public C1849Pt(ZP zp) {
        super(zp);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2079Zg
    public final boolean A0B(C1769Mk c1769Mk) throws C1845Pp {
        if (!this.A02) {
            int iA0I = c1769Mk.A0I();
            int header = iA0I >> 4;
            this.A00 = header & 15;
            if (this.A00 == 2) {
                int header2 = iA0I >> 2;
                super.A00.A7E(new C1714Ke().A11(A00(73, 10, 49)).A0b(1).A0m(A05[header2 & 3]).A14());
                this.A01 = true;
            } else if (this.A00 == 7 || this.A00 == 8) {
                super.A00.A7E(new C1714Ke().A11(this.A00 == 7 ? A00(28, 15, 113) : A00(43, 15, 84)).A0b(1).A0m(8000).A14());
                this.A01 = true;
            } else if (this.A00 != 10) {
                throw new C1845Pp(A00(0, 28, 0) + this.A00);
            }
            this.A02 = true;
        } else {
            c1769Mk.A0g(1);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        if (r6 == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        r0 = r14.A07();
        r5 = new byte[r0];
        r0 = r5.length;
        r14.A0k(r5, 0, r0);
        r7 = com.facebook.ads.redexgen.X.YZ.A03(r5);
        r1 = new com.facebook.ads.redexgen.X.C1714Ke().A11(A00(58, 15, 34)).A0w(r7.A02);
        r0 = r7.A00;
        r1 = r1.A0b(r0);
        r0 = r7.A01;
        r13.A00.A7E(r1.A0m(r0).A12(java.util.Collections.singletonList(r5)).A14());
        r13.A01 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x009c, code lost:
    
        if (r6 == false) goto L16;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2079Zg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0C(com.facebook.ads.redexgen.X.C1769Mk r14, long r15) throws com.facebook.ads.redexgen.X.L9 {
        /*
            r13 = this;
            int r1 = r13.A00
            r0 = 2
            r3 = 1
            r7 = r15
            if (r1 != r0) goto L34
            int r10 = r14.A07()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1849Pt.A04
            r0 = 5
            r1 = r1[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            r0 = 108(0x6c, float:1.51E-43)
            if (r1 == r0) goto L1f
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1849Pt.A04
            java.lang.String r1 = "Z6NslPj4LWXVgCk6NVecY9IZYFeIgrup"
            r0 = 3
            r2[r0] = r1
            com.facebook.ads.redexgen.X.ZP r0 = r13.A00
            r0.AK9(r14, r10)
            com.facebook.ads.redexgen.X.ZP r6 = r13.A00
            r11 = 0
            r12 = 0
            r9 = 1
            r6.AKC(r7, r9, r10, r11, r12)
            return r3
        L34:
            int r5 = r14.A0I()
            r4 = 0
            if (r5 != 0) goto L9f
            boolean r6 = r13.A01
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1849Pt.A04
            r0 = 0
            r1 = r1[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            r0 = 80
            if (r1 == r0) goto L9c
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1849Pt.A04
            java.lang.String r1 = "OBVJrK5FTOFCpAWewp2IsecHctW31BOX"
            r0 = 3
            r2[r0] = r1
            if (r6 != 0) goto L9f
        L55:
            int r0 = r14.A07()
            byte[] r5 = new byte[r0]
            int r0 = r5.length
            r14.A0k(r5, r4, r0)
            com.facebook.ads.redexgen.X.YY r7 = com.facebook.ads.redexgen.X.YZ.A03(r5)
            com.facebook.ads.redexgen.X.Ke r6 = new com.facebook.ads.redexgen.X.Ke
            r6.<init>()
            r2 = 58
            r1 = 15
            r0 = 34
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.Ke r1 = r6.A11(r0)
            java.lang.String r0 = r7.A02
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0w(r0)
            int r0 = r7.A00
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0b(r0)
            int r0 = r7.A01
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0m(r0)
            java.util.List r0 = java.util.Collections.singletonList(r5)
            com.facebook.ads.redexgen.X.Ke r0 = r1.A12(r0)
            com.facebook.ads.redexgen.X.VC r1 = r0.A14()
            com.facebook.ads.redexgen.X.ZP r0 = r13.A00
            r0.A7E(r1)
            r13.A01 = r3
            return r4
        L9c:
            if (r6 != 0) goto L9f
            goto L55
        L9f:
            int r1 = r13.A00
            r0 = 10
            if (r1 != r0) goto La7
            if (r5 != r3) goto Lb9
        La7:
            int r10 = r14.A07()
            com.facebook.ads.redexgen.X.ZP r0 = r13.A00
            r0.AK9(r14, r10)
            com.facebook.ads.redexgen.X.ZP r6 = r13.A00
            r11 = 0
            r12 = 0
            r9 = 1
            r6.AKC(r7, r9, r10, r11, r12)
            return r3
        Lb9:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1849Pt.A0C(com.facebook.ads.redexgen.X.Mk, long):boolean");
    }
}
