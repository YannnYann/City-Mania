package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.s8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3205s8 implements View.OnClickListener {
    public final /* synthetic */ C3207sA A00;

    public ViewOnClickListenerC3205s8(C3207sA c3207sA) {
        this.A00 = c3207sA;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A04.ABX();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
