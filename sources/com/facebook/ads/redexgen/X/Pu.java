package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Metadata;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Pu implements InterfaceC2068Yv {
    public static String[] A0E = {"zWnN8Cjz7WBbmu1e6d", "YWoQxYfRPepU", "2MQyiFWQBt4Fob21R2678jSxG37z", "wlkKQZNYzypIOj6eZICCgQsDFGsk", "IaksYYOwOgDfxL05PkLPBje8KY0H1w50", "ochPkjq7YK5t", "XRoKMReFu8G349hGPwpsHitDZJ2L6zPz", "ImP3Z1MWELf5Qe2nd5bCJ8XkbuF93Tkd"};
    public static final InterfaceC2072Yz A0F = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.Pw
        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final InterfaceC2068Yv[] A5w() {
            return Pu.A09();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
            return AbstractC2071Yy.A01(this, uri, map);
        }
    };
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public Metadata A05;
    public InterfaceC2069Yw A06;
    public Z5 A07;
    public ZP A08;
    public Py A09;
    public final C1769Mk A0A;
    public final Z0 A0B;
    public final boolean A0C;
    public final byte[] A0D;

    public Pu() {
        this(0);
    }

    public Pu(int i) {
        this.A0D = new byte[42];
        this.A0A = new C1769Mk(new byte[32768], 0);
        this.A0C = (i & 1) != 0;
        this.A0B = new Z0();
        this.A03 = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A00(com.facebook.ads.redexgen.X.Q9 r11, com.facebook.ads.redexgen.X.ZH r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.Pu.A00(com.facebook.ads.redexgen.X.Q9, com.facebook.ads.redexgen.X.ZH):int");
    }

    /* JADX WARN: Incorrect condition in loop: B:12:0x0034 */
    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long A01(com.facebook.ads.redexgen.X.C1769Mk r5, boolean r6) {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.Z5 r0 = r4.A07
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            int r3 = r5.A09()
        L9:
            int r0 = r5.A0A()
            int r0 = r0 + (-16)
            if (r3 > r0) goto L2b
            r5.A0f(r3)
            com.facebook.ads.redexgen.X.Z5 r2 = r4.A07
            int r1 = r4.A01
            com.facebook.ads.redexgen.X.Z0 r0 = r4.A0B
            boolean r0 = com.facebook.ads.redexgen.X.Z1.A07(r5, r2, r1, r0)
            if (r0 == 0) goto L28
            r5.A0f(r3)
            com.facebook.ads.redexgen.X.Z0 r0 = r4.A0B
            long r0 = r0.A00
            return r0
        L28:
            int r3 = r3 + 1
            goto L9
        L2b:
            if (r6 == 0) goto L76
        L2d:
            int r1 = r5.A0A()
            int r0 = r4.A02
            int r1 = r1 - r0
            if (r3 > r1) goto L5d
            r5.A0f(r3)
            com.facebook.ads.redexgen.X.Z5 r2 = r4.A07     // Catch: java.lang.IndexOutOfBoundsException -> L44
            int r1 = r4.A01     // Catch: java.lang.IndexOutOfBoundsException -> L44
            com.facebook.ads.redexgen.X.Z0 r0 = r4.A0B     // Catch: java.lang.IndexOutOfBoundsException -> L44
            boolean r2 = com.facebook.ads.redexgen.X.Z1.A07(r5, r2, r1, r0)     // Catch: java.lang.IndexOutOfBoundsException -> L44
            goto L45
        L44:
            r2 = 0
        L45:
            int r1 = r5.A09()
            int r0 = r5.A0A()
            if (r1 <= r0) goto L50
            r2 = 0
        L50:
            if (r2 == 0) goto L5a
            r5.A0f(r3)
            com.facebook.ads.redexgen.X.Z0 r0 = r4.A0B
            long r0 = r0.A00
            return r0
        L5a:
            int r3 = r3 + 1
            goto L2d
        L5d:
            int r3 = r5.A0A()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.Pu.A0E
            r0 = 7
            r1 = r1[r0]
            r0 = 20
            char r1 = r1.charAt(r0)
            r0 = 74
            if (r1 == r0) goto L7a
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L76:
            r5.A0f(r3)
            goto L89
        L7a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.Pu.A0E
            java.lang.String r1 = "GYhA2myC4wjI0S4oXXXRuUzHVuZZ"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "xr8JlCzPWnFDVPufqvMfWt94WpQE"
            r0 = 2
            r2[r0] = r1
            r5.A0f(r3)
        L89:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.Pu.A01(com.facebook.ads.redexgen.X.Mk, boolean):long");
    }

    private ZK A02(long j, long j2) {
        AbstractC1747Ln.A01(this.A07);
        if (this.A07.A0A != null) {
            return new Q6(this.A07, j);
        }
        if (j2 != -1 && this.A07.A09 > 0) {
            this.A09 = new Py(this.A07, this.A01, j, j2);
            return this.A09.A09();
        }
        return new Q4(this.A07.A06());
    }

    private void A03() {
        ((ZP) N1.A0f(this.A08)).AKC((this.A04 * 1000000) / ((long) ((Z5) N1.A0f(this.A07)).A07), 1, this.A00, 0, null);
    }

    private void A04(Q9 q9) throws IOException {
        this.A01 = Z3.A00(q9);
        ((InterfaceC2069Yw) N1.A0f(this.A06)).AKP(A02(q9.A9Q(), q9.A90()));
        this.A03 = 5;
    }

    private void A05(Q9 q9) throws IOException {
        q9.AI6(this.A0D, 0, this.A0D.length);
        q9.AK3();
        this.A03 = 2;
    }

    private void A06(Q9 q9) throws IOException {
        this.A05 = Z3.A02(q9, !this.A0C);
        this.A03 = 1;
    }

    private void A07(Q9 q9) throws IOException {
        boolean zA0B = false;
        Z2 metadataHolder = new Z2(this.A07);
        while (!zA0B) {
            zA0B = Z3.A0B(q9, metadataHolder);
            this.A07 = (Z5) N1.A0f(metadataHolder.A00);
        }
        AbstractC1747Ln.A01(this.A07);
        this.A02 = Math.max(this.A07.A06, 6);
        ((ZP) N1.A0f(this.A08)).A7E(this.A07.A08(this.A0D, this.A05));
        this.A03 = 4;
    }

    private void A08(Q9 q9) throws IOException {
        Z3.A09(q9);
        this.A03 = 3;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A09() {
        return new InterfaceC2068Yv[]{new Pu()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A06 = interfaceC2069Yw;
        this.A08 = interfaceC2069Yw.ALm(0, 1);
        interfaceC2069Yw.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        switch (this.A03) {
            case 0:
                A06(q9);
                return 0;
            case 1:
                A05(q9);
                return 0;
            case 2:
                A08(q9);
                String[] strArr = A0E;
                if (strArr[1].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[1] = "jMiuRjpS2ayQ";
                strArr2[5] = "rihjrbtKwpaI";
                return 0;
            case 3:
                A07(q9);
                return 0;
            case 4:
                A04(q9);
                return 0;
            case 5:
                return A00(q9, zh);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        if (j == 0) {
            this.A03 = 0;
        } else if (this.A09 != null) {
            this.A09.A0A(j2);
        }
        this.A04 = j2 != 0 ? -1L : 0L;
        this.A00 = 0;
        this.A0A.A0d(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        Z3.A01(q9, false);
        return Z3.A0A(q9);
    }
}
