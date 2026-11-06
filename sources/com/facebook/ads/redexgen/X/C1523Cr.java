package com.facebook.ads.redexgen.X;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1523Cr extends AbstractRunnableC3004oq {
    public final /* synthetic */ InterfaceC3185ro A00;
    public final /* synthetic */ C3184rn A01;

    public C1523Cr(C3184rn c3184rn, InterfaceC3185ro interfaceC3185ro) {
        this.A01 = c3184rn;
        this.A00 = interfaceC3185ro;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new C1524Cs(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
