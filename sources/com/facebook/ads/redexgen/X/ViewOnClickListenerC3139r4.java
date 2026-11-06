package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.r4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3139r4 implements View.OnClickListener {
    public final /* synthetic */ C1607Fy A00;

    public ViewOnClickListenerC3139r4(C1607Fy c1607Fy) {
        this.A00 = c1607Fy;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0G();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
