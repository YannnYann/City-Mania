package com.facebook.ads.redexgen.X;

import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewTreeObserverOnWindowFocusChangeListenerC2934nf implements ViewTreeObserver.OnWindowFocusChangeListener {
    public final /* synthetic */ GT A00;

    public ViewTreeObserverOnWindowFocusChangeListenerC2934nf(GT gt) {
        this.A00 = gt;
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        if (z) {
            InterfaceC2325df interfaceC2325dfA0F = this.A00.A0h.A0F();
            if (AbstractC3188rr.A01(interfaceC2325dfA0F.getId())) {
                interfaceC2325dfA0F.A5E(EnumC2984oW.A04.name());
            }
        }
    }
}
