package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3401vI implements View.OnClickListener {
    public final /* synthetic */ ER A00;

    public ViewOnClickListenerC3401vI(ER er) {
        this.A00 = er;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A03 == null || this.A00.A03.getVisibility() != 8) {
                this.A00.A0P();
                this.A00.A0B.removeCallbacks(this.A00.A0V);
                this.A00.A0T(8);
            } else {
                this.A00.A0T(0);
                this.A00.A0B.postDelayed(this.A00.A0V, 1500L);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
