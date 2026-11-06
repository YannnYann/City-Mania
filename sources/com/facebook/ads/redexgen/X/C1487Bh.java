package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1487Bh extends AbstractRunnableC3004oq {
    public static String[] A04 = {"pUIboC8CwdUMtM1tPR8iEtPz8p", "ladzvmq", "gZiIZXhhpFNWaRiPv", "vQtAVDGFp8M", "7j30UYRlUEXcM4Kd2wK", "XchzO9Mtzl1GyvdPdWlZd1J0iwZmFx3H", "VTwPVxpRcW0", "YPnzN72MuP4y3lnuBhqZ0NoSyY"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ C1484Be A02;
    public final /* synthetic */ EnumC2234cC A03;

    public C1487Bh(C1484Be c1484Be, EnumC2234cC enumC2234cC, int i, int i2) {
        this.A02 = c1484Be;
        this.A03 = enumC2234cC;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A03 == EnumC2234cC.A07) {
            this.A02.A0N(EnumC2916nN.A1C);
            this.A02.A0B.A0F().A46();
            this.A02.A0C.A02(C1484Be.A0K);
            return;
        }
        if (this.A03 == EnumC2234cC.A03) {
            this.A02.A0N(EnumC2916nN.A17);
            this.A02.A04 = true;
            this.A02.A0C.A02(C1484Be.A0I);
            this.A02.A0M(this.A00);
            return;
        }
        EnumC2234cC enumC2234cC = this.A03;
        EnumC2234cC enumC2234cC2 = EnumC2234cC.A06;
        String[] strArr = A04;
        if (strArr[0].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A04[5] = "Wlqb3PCyph61UkVVxo7ng7VZa1hYfmo4";
        if (enumC2234cC == enumC2234cC2) {
            this.A02.A0N(EnumC2916nN.A16);
            this.A02.A0B.A0F().A3y();
            this.A02.A04 = true;
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0C.A02(new C5Y(this.A01, this.A01));
            this.A02.A0M(this.A01);
            return;
        }
        if (this.A03 == EnumC2234cC.A0A) {
            if (C2888mv.A1z(this.A02.A0B)) {
                this.A02.A0B.A0B().AHm();
            }
            this.A02.A0N(EnumC2916nN.A1A);
            this.A02.A0B.A0F().A4G();
            this.A02.A0C.A02(C1484Be.A0J);
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0J();
            return;
        }
        if (this.A03 == EnumC2234cC.A05) {
            this.A02.A0N(EnumC2916nN.A19);
            this.A02.A0B.A0F().A42();
            C2856mP c2856mP = this.A02.A0C;
            final int i = this.A00;
            c2856mP.A02(new BN(i) { // from class: com.facebook.ads.redexgen.X.5W
            });
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0M(this.A00);
            return;
        }
        if (this.A03 == EnumC2234cC.A04) {
            this.A02.A0N(EnumC2916nN.A18);
            this.A02.A0B.A0F().A3z();
            this.A02.A0C.A02(C1484Be.A0M);
            this.A02.A08.removeCallbacksAndMessages(null);
            return;
        }
        if (this.A03 == EnumC2234cC.A09) {
            this.A02.A0N(EnumC2916nN.A16);
            this.A02.A0B.A0F().A4B();
            this.A02.A04 = true;
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0C.A02(new C5Y(this.A00, this.A01));
            this.A02.A0M(this.A00);
        }
    }
}
