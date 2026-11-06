package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3218sL implements View.OnClickListener {
    public final /* synthetic */ FD A00;

    public ViewOnClickListenerC3218sL(FD fd) {
        this.A00 = fd;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0D.AAG();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
