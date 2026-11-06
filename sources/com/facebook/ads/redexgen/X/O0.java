package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O0 implements InterfaceC2060Yn {
    public static String[] A02 = {"PJhN3FZVgP73WsVHjeIkIiqy1o5Nm6ot", "vHZEoF8Vdr6b9GOxglGjIcztgEb4lGpG", "7Zn", "WjGQxEG9muEXHUuRTkTnxckEJUcVVgfc", "vS1KFBax", "Z3S79xbW9uIa6QlxLinm6wAfFUFiRJHB", "7OX92GDqqDUkwkv5Php4XqNaHQn7rSna", "lYpSwIZ9e0XrNoGQ5mu7eY5DTp5WJL8e"};
    public final C1769Mk A00;
    public final C1777Ms A01;

    public O0(C1777Ms c1777Ms) {
        this.A01 = c1777Ms;
        this.A00 = new C1769Mk();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00db, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.ads.redexgen.X.C2058Yl A00(com.facebook.ads.redexgen.X.C1769Mk r14, long r15, long r17) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.O0.A00(com.facebook.ads.redexgen.X.Mk, long, long):com.facebook.ads.redexgen.X.Yl");
    }

    /* JADX WARN: Incorrect condition in loop: B:22:0x005b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A01(com.facebook.ads.redexgen.X.C1769Mk r5) {
        /*
            int r4 = r5.A0A()
            int r1 = r5.A07()
            r0 = 10
            if (r1 >= r0) goto L10
            r5.A0f(r4)
            return
        L10:
            r0 = 9
            r5.A0g(r0)
            int r0 = r5.A0I()
            r1 = r0 & 7
            int r0 = r5.A07()
            if (r0 >= r1) goto L25
            r5.A0f(r4)
            return
        L25:
            r5.A0g(r1)
            int r0 = r5.A07()
            r3 = 4
            if (r0 >= r3) goto L33
            r5.A0f(r4)
            return
        L33:
            byte[] r1 = r5.A0l()
            int r0 = r5.A09()
            int r1 = com.facebook.ads.redexgen.X.C1810Nz.A01(r1, r0)
            r0 = 443(0x1bb, float:6.21E-43)
            if (r1 != r0) goto L57
            r5.A0g(r3)
            int r1 = r5.A0M()
            int r0 = r5.A07()
            if (r0 >= r1) goto L54
            r5.A0f(r4)
            return
        L54:
            r5.A0g(r1)
        L57:
            int r0 = r5.A07()
            if (r0 < r3) goto L71
            byte[] r1 = r5.A0l()
            int r0 = r5.A09()
            int r1 = com.facebook.ads.redexgen.X.C1810Nz.A01(r1, r0)
            r0 = 442(0x1ba, float:6.2E-43)
            if (r1 == r0) goto L71
            r0 = 441(0x1b9, float:6.18E-43)
            if (r1 != r0) goto L72
        L71:
            return
        L72:
            int r1 = r1 >>> 8
            r0 = 1
            if (r1 == r0) goto L78
            goto L71
        L78:
            r5.A0g(r3)
            int r1 = r5.A07()
            r0 = 2
            if (r1 >= r0) goto L86
            r5.A0f(r4)
            return
        L86:
            int r2 = r5.A0M()
            int r1 = r5.A0A()
            int r0 = r5.A09()
            int r0 = r0 + r2
            int r0 = java.lang.Math.min(r1, r0)
            r5.A0f(r0)
            goto L57
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.O0.A01(com.facebook.ads.redexgen.X.Mk):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2060Yn
    public final void AGz() {
        this.A00.A0i(N1.A07);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2060Yn
    public final C2058Yl AKE(Q9 q9, long j) throws IOException {
        long jA9Q = q9.A9Q();
        int iMin = (int) Math.min(20000L, q9.A90() - jA9Q);
        this.A00.A0d(iMin);
        q9.AI6(this.A00.A0l(), 0, iMin);
        return A00(this.A00, j, jA9Q);
    }
}
