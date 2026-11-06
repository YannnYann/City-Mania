package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.unity3d.ads.core.domain.WebViewScreenCapture;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2341dw extends AnimatorListenerAdapter {
    public final /* synthetic */ C5I A00;

    public C2341dw(C5I c5i) {
        this.A00 = c5i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.A00.A00.A04.postDelayed(new C1474Au(this), WebViewScreenCapture.CACHE_TTL_MS);
    }
}
