package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C7 implements InterfaceC3302th {
    public final WeakReference<AbstractC13485h> A00;

    public C7(AbstractC13485h abstractC13485h) {
        this.A00 = new WeakReference<>(abstractC13485h);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3302th
    public final void AFA(C3301tg c3301tg) {
        AbstractC13485h cardLayout = this.A00.get();
        if (cardLayout != null) {
            cardLayout.A1r();
        }
    }
}
