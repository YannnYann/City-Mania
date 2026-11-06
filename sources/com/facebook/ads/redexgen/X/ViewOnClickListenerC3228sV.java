package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3228sV implements View.OnClickListener {
    public final /* synthetic */ FC A00;

    public ViewOnClickListenerC3228sV(FC fc) {
        this.A00 = fc;
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
