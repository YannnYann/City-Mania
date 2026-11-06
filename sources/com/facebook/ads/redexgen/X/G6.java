package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class G6 implements InterfaceC3091qI {
    public int A00;
    public final InterfaceC3091qI A01;

    public G6(InterfaceC3091qI interfaceC3091qI, int i) {
        this.A01 = interfaceC3091qI;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3091qI
    public final void AIL(String str) {
        if (this.A00 > 0) {
            this.A01.AIL(str);
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3091qI
    public final void flush() {
        this.A01.flush();
    }
}
