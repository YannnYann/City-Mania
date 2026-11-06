package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ch, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1513Ch implements InterfaceC3078q5 {
    public static String[] A01 = {"ze5PF2ByNTwodBcyR7QquoJpgkvtiUDl", "1", "1", "8auB5XxCMWQ6", "2NF4wqg37TCeL66z0q92r3UEVYLqQywz", "4AdKM", "LKcgCuCNQtN62kX3qQeWsgy5QldNHgm8", "Kn5Vt8rTkuwAj2xWmYQhOZT5bcA0nbCU"};
    public final /* synthetic */ C1512Cg A00;

    @Override // com.facebook.ads.redexgen.X.InterfaceC3078q5
    public final /* synthetic */ void AJp() {
        AbstractC3079q6.A00(this);
    }

    public C1513Ch(C1512Cg c1512Cg) {
        this.A00 = c1512Cg;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3078q5
    public final void AJq(boolean z) {
        this.A00.A0B();
        if (!this.A00.A0E || this.A00.A01 == null) {
            if (this.A00.A07 == null) {
                this.A00.A0C.A5C(this.A00.A0D.A8c());
                this.A00.A0C.A5C(this.A00.A0D.A8X());
                return;
            }
            C1512Cg c1512Cg = this.A00;
            C1512Cg c1512Cg2 = this.A00;
            String[] strArr = A01;
            if (strArr[3].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "1Tp7meS3wT4wse7QoUzwGoBftInjAdcd";
            strArr2[0] = "4p8IW6wnqTL0aaKBnRdKIxybCP9HAq33";
            c1512Cg.A04 = c1512Cg2.A05(this.A00.A0D, this.A00.A07, Boolean.valueOf(this.A00.A05.A2Z()), EnumC3176rf.A03);
            if (z && (this.A00.A04 instanceof FM)) {
                ((FM) this.A00.A04).A0r();
            }
            if (this.A00.A02 != null && this.A00.A00 != null) {
                this.A00.A04.ABc(this.A00.A02, this.A00.A03, this.A00.A00);
                return;
            }
            return;
        }
        if (this.A00.A01 instanceof FM) {
            this.A00.A04 = this.A00.A01;
            if (z) {
                ((FM) this.A00.A04).A0r();
            }
            ((FM) this.A00.A04).A0s();
        }
    }
}
