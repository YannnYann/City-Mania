package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ts, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3313ts implements View.OnClickListener {
    public final /* synthetic */ AbstractC1576Es A00;

    public ViewOnClickListenerC3313ts(AbstractC1576Es abstractC1576Es) {
        this.A00 = abstractC1576Es;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0J.getVisibility() == 8) {
                this.A00.A0V.A0F().ABg();
                this.A00.A0t(0);
                this.A00.A0G.postDelayed(this.A00.A0Y, 1500L);
            } else {
                this.A00.A0V.A0F().ABh();
                this.A00.A0W();
                this.A00.A0G.removeCallbacks(this.A00.A0Y);
                this.A00.A0t(8);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
