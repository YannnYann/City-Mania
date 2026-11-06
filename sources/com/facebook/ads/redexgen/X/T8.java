package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class T8 implements NN {
    public final InterfaceC1793Ni A00;

    public T8() {
        this(null);
    }

    public T8(InterfaceC1793Ni interfaceC1793Ni) {
        this.A00 = interfaceC1793Ni;
    }

    @Override // com.facebook.ads.redexgen.X.NN
    public final TE A5r() {
        C4K c4k = new C4K();
        if (this.A00 != null) {
            c4k.A4T(this.A00);
        }
        return c4k;
    }
}
