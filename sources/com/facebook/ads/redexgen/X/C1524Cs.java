package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1524Cs extends AnimationAnimationListenerC3110qb {
    public final /* synthetic */ C1523Cr A00;

    public C1524Cs(C1523Cr c1523Cr) {
        this.A00 = c1523Cr;
    }

    @Override // com.facebook.ads.redexgen.X.AnimationAnimationListenerC3110qb, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        AbstractC3111qc.A0I(this.A00.A01);
        this.A00.A00.AFO();
    }
}
