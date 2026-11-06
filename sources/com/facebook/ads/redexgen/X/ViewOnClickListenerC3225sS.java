package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3225sS implements View.OnClickListener {
    public final /* synthetic */ C3227sU A00;

    public ViewOnClickListenerC3225sS(C3227sU c3227sU) {
        this.A00 = c3227sU;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A02.AAG();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
