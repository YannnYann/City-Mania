package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1615Gg implements InterfaceC2930nb {
    public WeakReference<GT> A00;

    public C1615Gg(GT gt) {
        this.A00 = new WeakReference<>(gt);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2930nb
    public final void AGG(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1o(z, false);
        }
    }
}
