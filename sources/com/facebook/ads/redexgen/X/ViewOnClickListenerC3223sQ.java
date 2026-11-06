package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3223sQ implements View.OnClickListener {
    public final /* synthetic */ C2508ge A00;
    public final /* synthetic */ C3213sG A01;
    public final /* synthetic */ FD A02;

    public ViewOnClickListenerC3223sQ(FD fd, C3213sG c3213sG, C2508ge c2508ge) {
        this.A02 = fd;
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
            this.A02.A0D.AG9(this.A00);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
