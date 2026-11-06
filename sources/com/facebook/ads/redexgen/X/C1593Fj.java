package com.facebook.ads.redexgen.X;

import android.R;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1593Fj extends AbstractRunnableC3004oq {
    public final /* synthetic */ AnimationAnimationListenerC3158rN A00;

    public C1593Fj(AnimationAnimationListenerC3158rN animationAnimationListenerC3158rN) {
        this.A00 = animationAnimationListenerC3158rN;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A00.A00.finish(3);
        this.A00.A00.A05().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }
}
