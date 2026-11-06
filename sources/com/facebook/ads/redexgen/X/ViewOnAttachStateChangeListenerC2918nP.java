package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nP, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnAttachStateChangeListenerC2918nP implements View.OnAttachStateChangeListener {
    public final /* synthetic */ EnumC2916nN A00;
    public final /* synthetic */ C2917nO A01;

    public ViewOnAttachStateChangeListenerC2918nP(C2917nO c2917nO, EnumC2916nN enumC2916nN) {
        this.A01 = c2917nO;
        this.A00 = enumC2916nN;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.A01.A04(this.A00, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
