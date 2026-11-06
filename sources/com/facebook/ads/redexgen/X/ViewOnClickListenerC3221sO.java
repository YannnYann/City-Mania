package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3221sO implements View.OnClickListener {
    public final /* synthetic */ C3213sG A00;
    public final /* synthetic */ FD A01;

    public ViewOnClickListenerC3221sO(FD fd, C3213sG c3213sG) {
        this.A01 = fd;
        this.A00 = c3213sG;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0D.ABY();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
