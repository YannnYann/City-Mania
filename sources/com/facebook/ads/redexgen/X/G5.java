package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class G5 implements InterfaceC3091qI {
    public final C3090qH A00;
    public final InterfaceC3091qI A01;

    public G5(InterfaceC3091qI interfaceC3091qI, int i, int i2) {
        this.A01 = interfaceC3091qI;
        this.A00 = new C3090qH(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3091qI
    public final void AIL(String str) {
        this.A00.A04(str);
        if (this.A00.A02() != null && AbstractC3093qK.A08(this.A00)) {
            this.A01.AIL(this.A00.A02());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3091qI
    public final void flush() {
        this.A00.A03();
        while (this.A00.A02() != null) {
            if (AbstractC3093qK.A08(this.A00)) {
                this.A01.AIL(this.A00.A02());
            }
            this.A00.A03();
        }
    }
}
