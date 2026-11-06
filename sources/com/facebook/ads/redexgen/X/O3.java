package com.facebook.ads.redexgen.X;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O3 implements InterfaceC2265ch {
    public static String[] A0C = {"1Lj4x7S1lVuTKgDJUSYDYqjEVIdvtlHj", "T31F5e1Ojmn8hLMrI14SV5rKxKNVIhyx", "jF388P0yRetCJLicjtzDxi0Gu", "lgyZGuQ1Tai7jsjPUROJbGJDHbx5fz51", "jF14IqutEYmI957EvX8WYxOXeb1zMo3b", "1IHFks79ZirbUEFpA1KxHK1Z7J0NDTOn", "lp14kmTG7oLZ4mKyt2MZy", "aeaRWDyfYOOo1pl6WrlQRcbXoucuBGP0"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public ZP A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public final C1769Mk A09;
    public final Z9 A0A;
    public final String A0B;

    public O3() {
        this(null);
    }

    public O3(String str) {
        this.A02 = 0;
        this.A09 = new C1769Mk(4);
        this.A09.A0l()[0] = -1;
        this.A0A = new Z9();
        this.A04 = -9223372036854775807L;
        this.A0B = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A00(com.facebook.ads.redexgen.X.C1769Mk r10) {
        /*
            r9 = this;
            byte[] r8 = r10.A0l()
            int r4 = r10.A09()
            int r6 = r10.A0A()
        Lc:
            if (r4 >= r6) goto L66
            r1 = r8[r4]
            r0 = 255(0xff, float:3.57E-43)
            r1 = r1 & r0
            r5 = 0
            r3 = 1
            if (r1 != r0) goto L64
            r2 = 1
        L18:
            boolean r0 = r9.A08
            if (r0 == 0) goto L62
            r1 = r8[r4]
            r0 = 224(0xe0, float:3.14E-43)
            r1 = r1 & r0
            if (r1 != r0) goto L62
            r7 = 1
        L24:
            r9.A08 = r2
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.O3.A0C
            r0 = 1
            r1 = r1[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            r0 = 49
            if (r1 == r0) goto L3a
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.O3.A0C
            java.lang.String r1 = "fURMoL45edrYEaEvXIj3Ydyywbt1MKRQ"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "1rvVgcpF9PgBmcs6cVUZXkLFabzNefaL"
            r0 = 4
            r2[r0] = r1
            if (r7 == 0) goto L5f
            int r0 = r4 + 1
            r10.A0f(r0)
            r9.A08 = r5
            com.facebook.ads.redexgen.X.Mk r0 = r9.A09
            byte[] r1 = r0.A0l()
            r0 = r8[r4]
            r1[r3] = r0
            r0 = 2
            r9.A00 = r0
            r9.A02 = r3
            return
        L5f:
            int r4 = r4 + 1
            goto Lc
        L62:
            r7 = 0
            goto L24
        L64:
            r2 = 0
            goto L18
        L66:
            r10.A0f(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.O3.A00(com.facebook.ads.redexgen.X.Mk):void");
    }

    @RequiresNonNull
    private void A01(C1769Mk c1769Mk) {
        int iMin = Math.min(c1769Mk.A07(), this.A01 - this.A00);
        this.A05.AK9(c1769Mk, iMin);
        int bytesToRead = this.A00;
        this.A00 = bytesToRead + iMin;
        int i = this.A00;
        int bytesToRead2 = this.A01;
        if (i < bytesToRead2) {
            return;
        }
        long j = this.A04;
        if (A0C[7].charAt(15) == 'H') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[3] = "GGfFVDtbBiaeAEyl2e5ob8ZYab6JvgSi";
        strArr[4] = "9c1zRhiT0Cn1hO0QneAhNFTXMbYm4hq1";
        if (j != -9223372036854775807L) {
            this.A05.AKC(this.A04, 1, this.A01, 0, null);
            this.A04 += this.A03;
        }
        this.A00 = 0;
        this.A02 = 0;
    }

    @RequiresNonNull
    private void A02(C1769Mk c1769Mk) {
        int iMin = Math.min(c1769Mk.A07(), 4 - this.A00);
        byte[] bArrA0l = this.A09.A0l();
        int bytesToRead = this.A00;
        c1769Mk.A0k(bArrA0l, bytesToRead, iMin);
        int bytesToRead2 = this.A00;
        this.A00 = bytesToRead2 + iMin;
        int bytesToRead3 = this.A00;
        if (bytesToRead3 < 4) {
            return;
        }
        this.A09.A0f(0);
        Z9 z9 = this.A0A;
        int bytesToRead4 = this.A09.A0C();
        if (!z9.A00(bytesToRead4)) {
            this.A00 = 0;
            this.A02 = 1;
            return;
        }
        int bytesToRead5 = this.A0A.A02;
        this.A01 = bytesToRead5;
        if (!this.A07) {
            int bytesToRead6 = this.A0A.A04;
            long j = ((long) bytesToRead6) * 1000000;
            int bytesToRead7 = this.A0A.A03;
            this.A03 = j / ((long) bytesToRead7);
            C1714Ke c1714KeA0h = new C1714Ke().A0y(this.A06).A11(this.A0A.A06).A0h(4096);
            int bytesToRead8 = this.A0A.A01;
            C1714Ke c1714KeA0b = c1714KeA0h.A0b(bytesToRead8);
            int bytesToRead9 = this.A0A.A03;
            this.A05.A7E(c1714KeA0b.A0m(bytesToRead9).A10(this.A0B).A14());
            this.A07 = true;
        }
        this.A09.A0f(0);
        this.A05.AK9(this.A09, 4);
        this.A02 = 2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A5j(C1769Mk c1769Mk) {
        AbstractC1747Ln.A02(this.A05);
        while (c1769Mk.A07() > 0) {
            switch (this.A02) {
                case 0:
                    A00(c1769Mk);
                    break;
                case 1:
                    A02(c1769Mk);
                    break;
                case 2:
                    A01(c1769Mk);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A06 = c2286d2.A04();
        this.A05 = interfaceC2069Yw.ALm(c2286d2.A03(), 1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A04 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        this.A02 = 0;
        this.A00 = 0;
        this.A08 = false;
        this.A04 = -9223372036854775807L;
    }
}
