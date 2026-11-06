package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ok, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC2998ok implements View.OnClickListener {
    public final /* synthetic */ C2997oj A00;

    public ViewOnClickListenerC2998ok(C2997oj c2997oj) {
        this.A00 = c2997oj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05.performClick();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
