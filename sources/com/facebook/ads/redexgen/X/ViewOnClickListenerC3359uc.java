package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3359uc implements View.OnClickListener {
    public final /* synthetic */ ViewOnClickListenerC1569El A00;
    public final /* synthetic */ String A01;

    public ViewOnClickListenerC3359uc(ViewOnClickListenerC1569El viewOnClickListenerC1569El, String str) {
        this.A00 = viewOnClickListenerC1569El;
        this.A01 = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0E(this.A01);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
