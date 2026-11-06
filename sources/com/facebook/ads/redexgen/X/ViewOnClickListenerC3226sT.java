package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3226sT implements View.OnClickListener {
    public final /* synthetic */ C2508ge A00;
    public final /* synthetic */ C3213sG A01;
    public final /* synthetic */ C3227sU A02;

    public ViewOnClickListenerC3226sT(C3227sU c3227sU, C3213sG c3213sG, C2508ge c2508ge) {
        this.A02 = c3227sU;
        this.A01 = c3213sG;
        this.A00 = c2508ge;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            this.A02.A02.AG9(this.A00);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
