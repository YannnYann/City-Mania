package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3163rS implements View.OnClickListener {
    public final /* synthetic */ C3166rV A00;

    public ViewOnClickListenerC3163rS(C3166rV c3166rV) {
        this.A00 = c3166rV;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0D();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
