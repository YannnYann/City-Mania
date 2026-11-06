package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3308tn implements View.OnClickListener {
    public final /* synthetic */ C13655y A00;

    public ViewOnClickListenerC3308tn(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0h instanceof C14147v) {
                if (!this.A00.A0J) {
                    this.A00.A0p.ADH();
                    this.A00.A0K = true;
                    this.A00.A10(((C14147v) this.A00.A0h).A0O().toString());
                    if (((AbstractC1546Do) this.A00).A08.A1N() >= 0) {
                        this.A00.A0d.postDelayed(this.A00.A11, ((AbstractC1546Do) this.A00).A08.A1N());
                    }
                }
                this.A00.A15(this.A00.A0J ? false : true);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
