package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1489Bj implements InterfaceC2454fm {
    public final C1643Hi A01;
    public final InterfaceC2909nG A02;
    public final C2457fp A03;
    public final C1484Be A04;
    public final String A07;
    public final BG A06 = new BG() { // from class: com.facebook.ads.redexgen.X.5d
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5W c5w) {
            if (this.A00.A00) {
                return;
            }
            this.A00.A01.A0F().AKK();
            this.A00.A08();
        }
    };
    public final BM A05 = new BM() { // from class: com.facebook.ads.redexgen.X.5c
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5Y c5y) {
            if (!this.A00.A00) {
                this.A00.A01.A0F().AKI();
                this.A00.A08();
            }
            this.A00.A00 = true;
        }
    };
    public boolean A00 = false;

    public C1489Bj(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, C1484Be c1484Be, String str, boolean z, BR br, Map<String, String> extraParams) {
        this.A01 = c1643Hi;
        this.A02 = interfaceC2909nG;
        this.A07 = str;
        this.A04 = c1484Be;
        this.A03 = new C2457fp(c1484Be, str, z, extraParams);
        if (C2888mv.A2B(this.A01)) {
            this.A01.A0F().AKF();
            br.A0m(this);
        } else {
            this.A01.A0F().AKG();
            this.A04.getEventBus().A03(this.A06, this.A05);
        }
    }

    public final void A07() {
        C1490Bk c1490Bk = new C1490Bk(this);
        if (this.A04.A0r()) {
            ExecutorC3104qV.A00(c1490Bk);
        } else {
            this.A04.getStateHandler().post(c1490Bk);
        }
    }

    public final synchronized void A08() {
        if (!this.A00) {
            this.A02.ACo(this.A07, this.A03.A06());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2454fm
    public final void AFo() {
        this.A01.A0F().AKJ();
        A08();
    }
}
