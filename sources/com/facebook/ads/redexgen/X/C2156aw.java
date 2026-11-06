package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2156aw {
    public static String[] A0C = {"8V3AH1jFj1uCH77jnL5gp4Dcj8s8JrSM", "uVEOV64jTbCDi0V18Z8p9KlatCZHWnRb", "aJxaQfyqbyR1ntlpLHwHseR3oRN9Smur", "RjBE4eVJq7bpqZZeKNEZ67ufThpbLV11", "NmKxiyzWR", "JMTKFh", "be3pU6YoM", "2MIEm5bDWuGrUK7"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public C2147an A04;
    public C2173bD A05;
    public boolean A06;
    public final ZP A08;
    public final C2172bC A09 = new C2172bC();
    public final C1769Mk A07 = new C1769Mk();
    public final C1769Mk A0B = new C1769Mk(1);
    public final C1769Mk A0A = new C1769Mk();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A04(int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2156aw.A04(int, int):int");
    }

    public C2156aw(ZP zp, C2173bD c2173bD, C2147an c2147an) {
        this.A08 = zp;
        this.A05 = c2173bD;
        this.A04 = c2147an;
        A0C(c2173bD, c2147an);
    }

    public final int A02() {
        int i;
        if (!this.A06) {
            i = this.A05.A04[this.A01];
        } else {
            boolean[] zArr = this.A09.A0G;
            int flags = this.A01;
            i = zArr[flags] ? 1 : 0;
        }
        if (A07() != null) {
            return i | 1073741824;
        }
        return i;
    }

    public final int A03() {
        if (!this.A06) {
            return this.A05.A05[this.A01];
        }
        return this.A09.A0B[this.A01];
    }

    public final long A05() {
        if (!this.A06) {
            return this.A05.A06[this.A01];
        }
        return this.A09.A0E[this.A02];
    }

    public final long A06() {
        if (!this.A06) {
            long[] jArr = this.A05.A07;
            String[] strArr = A0C;
            if (strArr[1].charAt(6) == strArr[0].charAt(6)) {
                throw new RuntimeException();
            }
            A0C[5] = "mjoQKRu63KzbWmqupbcZb9H";
            return jArr[this.A01];
        }
        C2172bC c2172bC = this.A09;
        if (A0C[2].charAt(2) != 'x') {
            A0C[5] = "Z6Pv8tWM";
            return c2172bC.A00(this.A01);
        }
        A0C[5] = "7ODvdZhwoAjuY5fACjNYPENoE";
        return c2172bC.A00(this.A01);
    }

    public final C2171bB A07() {
        C2171bB c2171bBA00;
        if (!this.A06) {
            return null;
        }
        int i = ((C2147an) N1.A0f(this.A09.A06)).A02;
        if (this.A09.A07 != null) {
            c2171bBA00 = this.A09.A07;
        } else {
            c2171bBA00 = this.A05.A03.A00(i);
        }
        if (c2171bBA00 == null || !c2171bBA00.A03) {
            return null;
        }
        C2171bB encryptionBox = c2171bBA00;
        return encryptionBox;
    }

    public final void A08() {
        this.A09.A01();
        this.A01 = 0;
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
        this.A06 = false;
    }

    public final void A09() {
        C2171bB c2171bBA07 = A07();
        if (c2171bBA07 == null) {
            return;
        }
        C1769Mk c1769Mk = this.A09.A0H;
        if (c2171bBA07.A00 != 0) {
            c1769Mk.A0g(c2171bBA07.A00);
        }
        boolean zA06 = this.A09.A06(this.A01);
        if (A0C[7].length() != 15) {
            throw new RuntimeException();
        }
        A0C[7] = "ya3ecvWsgH5ZH1e";
        if (zA06) {
            c1769Mk.A0g(c1769Mk.A0M() * 6);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0006 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0A(long r5) {
        /*
            r4 = this;
            int r3 = r4.A01
        L2:
            com.facebook.ads.redexgen.X.bC r0 = r4.A09
            int r0 = r0.A00
            if (r3 >= r0) goto L1f
            com.facebook.ads.redexgen.X.bC r0 = r4.A09
            long r1 = r0.A00(r3)
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 > 0) goto L1f
            com.facebook.ads.redexgen.X.bC r0 = r4.A09
            boolean[] r0 = r0.A0G
            boolean r0 = r0[r3]
            if (r0 == 0) goto L1c
            r4.A03 = r3
        L1c:
            int r3 = r3 + 1
            goto L2
        L1f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2156aw.A0A(long):void");
    }

    public final void A0B(DrmInitData drmInitData) {
        C2171bB encryptionBox = this.A05.A03.A00(((C2147an) N1.A0f(this.A09.A06)).A02);
        this.A08.A7E(this.A05.A03.A07.A07().A0u(drmInitData.A01(encryptionBox != null ? encryptionBox.A02 : null)).A14());
    }

    public final void A0C(C2173bD c2173bD, C2147an c2147an) {
        this.A05 = c2173bD;
        this.A04 = c2147an;
        this.A08.A7E(c2173bD.A03.A07);
        A08();
    }

    public final boolean A0D() {
        this.A01++;
        if (!this.A06) {
            return false;
        }
        this.A00++;
        if (this.A00 != this.A09.A0C[this.A02]) {
            return true;
        }
        this.A02++;
        this.A00 = 0;
        return false;
    }
}
