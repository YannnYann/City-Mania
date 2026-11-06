package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3342uL implements View.OnClickListener {
    public final /* synthetic */ C3344uN A00;

    public ViewOnClickListenerC3342uL(C3344uN c3344uN) {
        this.A00 = c3344uN;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
