package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3162rR implements View.OnClickListener {
    public final /* synthetic */ C13916y A00;

    public ViewOnClickListenerC3162rR(C13916y c13916y) {
        this.A00 = c13916y;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View v) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.onClick(v);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
