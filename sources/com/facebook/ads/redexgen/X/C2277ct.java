package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ct, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2277ct {
    public int A00;
    public long A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final C1768Mj A05 = new C1768Mj(new byte[64]);
    public final C1777Ms A06;
    public final InterfaceC2265ch A07;

    public C2277ct(InterfaceC2265ch interfaceC2265ch, C1777Ms c1777Ms) {
        this.A07 = interfaceC2265ch;
        this.A06 = c1777Ms;
    }

    private void A00() {
        this.A05.A09(8);
        this.A03 = this.A05.A0H();
        this.A02 = this.A05.A0H();
        this.A05.A09(6);
        this.A00 = this.A05.A04(8);
    }

    private void A01() {
        this.A01 = 0L;
        if (this.A03) {
            this.A05.A09(4);
            long jA04 = ((long) this.A05.A04(3)) << 30;
            this.A05.A09(1);
            long pts = this.A05.A04(15) << 15;
            long j = jA04 | pts;
            this.A05.A09(1);
            long pts2 = this.A05.A04(15);
            long j2 = j | pts2;
            this.A05.A09(1);
            if (!this.A04 && this.A02) {
                this.A05.A09(4);
                long pts3 = this.A05.A04(3);
                this.A05.A09(1);
                long pts4 = (pts3 << 30) | ((long) (this.A05.A04(15) << 15));
                this.A05.A09(1);
                long pts5 = pts4 | ((long) this.A05.A04(15));
                this.A05.A09(1);
                this.A06.A06(pts5);
                this.A04 = true;
            }
            this.A01 = this.A06.A06(j2);
        }
    }

    public final void A02() {
        this.A04 = false;
        this.A07.AKN();
    }

    public final void A03(C1769Mk c1769Mk) throws L9 {
        c1769Mk.A0k(this.A05.A00, 0, 3);
        this.A05.A08(0);
        A00();
        c1769Mk.A0k(this.A05.A00, 0, this.A00);
        this.A05.A08(0);
        A01();
        this.A07.AI3(this.A01, 4);
        this.A07.A5j(c1769Mk);
        this.A07.AI2();
    }
}
