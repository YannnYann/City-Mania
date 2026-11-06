package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1847Pr implements InterfaceC2068Yv {
    public static String[] A0G = {"ZOmDgtZXmbFplr4c", "6ifjKlWOi9qvORbA9AVWUceA2bCMNiC7", "iEnYLP6UxGmGKJn1fOE", "AGvE2CL8JEBQx1euKr4BMx1GEB8reAkr", "pwFgt2PbV7oDiKWKDjaxKcLr059crOAE", "6BIprHsiJ0DYPURFpCJrGC", "G7oyaBjMYnTwXAC1EzLODbaBAwZ3L", "6NoG64DO59zvCB139pJVMaDXP65Qg"};
    public static final InterfaceC2072Yz A0H = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.Ps
        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final InterfaceC2068Yv[] A5w() {
            return C1847Pr.A07();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
            return AbstractC2071Yy.A01(this, uri, map);
        }
    };
    public int A00;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public InterfaceC2069Yw A06;
    public C1849Pt A07;
    public C1844Po A08;
    public boolean A09;
    public boolean A0A;
    public final C1769Mk A0C = new C1769Mk(4);
    public final C1769Mk A0B = new C1769Mk(9);
    public final C1769Mk A0E = new C1769Mk(11);
    public final C1769Mk A0D = new C1769Mk();
    public final C1846Pq A0F = new C1846Pq();
    public int A01 = 1;

    private long A00() {
        if (this.A09) {
            return this.A04 + this.A05;
        }
        if (this.A0F.A0D() == -9223372036854775807L) {
            return 0L;
        }
        return this.A05;
    }

    private C1769Mk A01(Q9 q9) throws IOException {
        if (this.A02 > this.A0D.A08()) {
            this.A0D.A0j(new byte[Math.max(this.A0D.A08() * 2, this.A02)], 0);
        } else {
            this.A0D.A0f(0);
        }
        this.A0D.A0e(this.A02);
        q9.readFully(this.A0D.A0l(), 0, this.A02);
        return this.A0D;
    }

    @RequiresNonNull
    private void A02() {
        if (!this.A0A) {
            this.A06.AKP(new Q4(-9223372036854775807L));
            this.A0A = true;
        }
    }

    private void A03(Q9 q9) throws IOException {
        q9.ALL(this.A00);
        this.A00 = 0;
        this.A01 = 3;
    }

    @RequiresNonNull
    private boolean A04(Q9 q9) throws IOException {
        if (!q9.AIe(this.A0B.A0l(), 0, 9, true)) {
            return false;
        }
        this.A0B.A0f(0);
        this.A0B.A0g(4);
        int iA0I = this.A0B.A0I();
        int flags = iA0I & 4;
        boolean hasVideo = flags != 0;
        int flags2 = iA0I & 1;
        boolean z = flags2 != 0;
        if (hasVideo && this.A07 == null) {
            this.A07 = new C1849Pt(this.A06.ALm(8, 1));
        }
        if (z) {
            C1844Po c1844Po = this.A08;
            if (A0G[3].charAt(19) == 'h') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[4] = "Khy5rYPINuKpMGIOp9isTczNww9cV1Ap";
            strArr[1] = "30smAkr6jQBG63zglwQ3OcXDj5jlu3KR";
            if (c1844Po == null) {
                this.A08 = new C1844Po(this.A06.ALm(9, 2));
            }
        }
        this.A06.A6x();
        int flags3 = this.A0B.A0C();
        this.A00 = (flags3 - 9) + 4;
        this.A01 = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A05(com.facebook.ads.redexgen.X.Q9 r12) throws java.io.IOException {
        /*
            r11 = this;
            r10 = 1
            r9 = 0
            long r1 = r11.A00()
            int r3 = r11.A03
            r0 = 8
            r5 = 1
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r3 != r0) goto L3f
            com.facebook.ads.redexgen.X.Pt r0 = r11.A07
            if (r0 == 0) goto L3f
            r11.A02()
            com.facebook.ads.redexgen.X.Pt r3 = r11.A07
            com.facebook.ads.redexgen.X.Mk r0 = r11.A01(r12)
            boolean r9 = r3.A00(r0, r1)
        L23:
            boolean r3 = r11.A09
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1847Pr.A0G
            r0 = 4
            r1 = r2[r0]
            r0 = 1
            r2 = r2[r0]
            r0 = 21
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L95
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3f:
            int r3 = r11.A03
            r0 = 9
            if (r3 != r0) goto L57
            com.facebook.ads.redexgen.X.Po r0 = r11.A08
            if (r0 == 0) goto L57
            r11.A02()
            com.facebook.ads.redexgen.X.Po r3 = r11.A08
            com.facebook.ads.redexgen.X.Mk r0 = r11.A01(r12)
            boolean r9 = r3.A00(r0, r1)
            goto L23
        L57:
            int r3 = r11.A03
            r0 = 18
            if (r3 != r0) goto L8e
            boolean r0 = r11.A0A
            if (r0 != 0) goto L8e
            com.facebook.ads.redexgen.X.Pq r3 = r11.A0F
            com.facebook.ads.redexgen.X.Mk r0 = r11.A01(r12)
            boolean r9 = r3.A00(r0, r1)
            com.facebook.ads.redexgen.X.Pq r0 = r11.A0F
            long r2 = r0.A0D()
            int r0 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r0 == 0) goto L23
            com.facebook.ads.redexgen.X.Yw r6 = r11.A06
            com.facebook.ads.redexgen.X.Pq r0 = r11.A0F
            long[] r4 = r0.A0E()
            com.facebook.ads.redexgen.X.Pq r0 = r11.A0F
            long[] r1 = r0.A0F()
            com.facebook.ads.redexgen.X.Q5 r0 = new com.facebook.ads.redexgen.X.Q5
            r0.<init>(r4, r1, r2)
            r6.AKP(r0)
            r11.A0A = r5
            goto L23
        L8e:
            int r0 = r11.A02
            r12.ALL(r0)
            r10 = 0
            goto L23
        L95:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1847Pr.A0G
            java.lang.String r1 = "wqdT2H3TTMqi8Bli"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "zAA6sZzKbZJelK7aosqVbg"
            r0 = 5
            r2[r0] = r1
            if (r3 != 0) goto Lb6
            if (r9 == 0) goto Lb6
            r11.A09 = r5
            com.facebook.ads.redexgen.X.Pq r0 = r11.A0F
            long r1 = r0.A0D()
            int r0 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r0 != 0) goto Lbd
            long r2 = r11.A05
            long r0 = -r2
        Lb4:
            r11.A04 = r0
        Lb6:
            r0 = 4
            r11.A00 = r0
            r0 = 2
            r11.A01 = r0
            return r10
        Lbd:
            r0 = 0
            goto Lb4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1847Pr.A05(com.facebook.ads.redexgen.X.Q9):boolean");
    }

    private boolean A06(Q9 q9) throws IOException {
        if (!q9.AIe(this.A0E.A0l(), 0, 11, true)) {
            return false;
        }
        this.A0E.A0f(0);
        this.A03 = this.A0E.A0I();
        this.A02 = this.A0E.A0K();
        this.A05 = this.A0E.A0K();
        this.A05 = (((long) (this.A0E.A0I() << 24)) | this.A05) * 1000;
        this.A0E.A0g(3);
        this.A01 = 4;
        return true;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A07() {
        return new InterfaceC2068Yv[]{new C1847Pr()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A06 = interfaceC2069Yw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        AbstractC1747Ln.A02(this.A06);
        while (true) {
            switch (this.A01) {
                case 1:
                    if (!A04(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 2:
                    A03(q9);
                    break;
                case 3:
                    if (!A06(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 4:
                    if (A05(q9)) {
                        return 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        if (j == 0) {
            this.A01 = 1;
            this.A09 = false;
        } else {
            this.A01 = 3;
        }
        this.A00 = 0;
        String[] strArr = A0G;
        if (strArr[0].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A0G[2] = "rlYOLfOM7omH4Sms69M";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        q9.AI6(this.A0C.A0l(), 0, 3);
        this.A0C.A0f(0);
        if (this.A0C.A0K() != 4607062) {
            return false;
        }
        q9.AI6(this.A0C.A0l(), 0, 2);
        this.A0C.A0f(0);
        if ((this.A0C.A0M() & 250) != 0) {
            return false;
        }
        q9.AI6(this.A0C.A0l(), 0, 4);
        this.A0C.A0f(0);
        int dataOffset = this.A0C.A0C();
        q9.AK3();
        q9.A4X(dataOffset);
        q9.AI6(this.A0C.A0l(), 0, 4);
        this.A0C.A0f(0);
        int dataOffset2 = this.A0C.A0C();
        return dataOffset2 == 0;
    }
}
