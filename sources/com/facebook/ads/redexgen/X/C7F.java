package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7F, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7F extends IB {
    public InterfaceC2481gD A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A08(NativeAdLayout nativeAdLayout, C1643Hi c1643Hi, NativeAd nativeAd, C2939nk c2939nk) {
        C3346uP c3346uP = new C3346uP(c1643Hi);
        MediaView mediaView = new MediaView(c1643Hi);
        AdOptionsView adOptionsView = new AdOptionsView(c1643Hi, nativeAd, nativeAdLayout);
        c2939nk.A09(adOptionsView, 28);
        this.A00 = new C1491Bl(c1643Hi, nativeAd, c2939nk, GT.A0L(nativeAd.getInternalNativeAd()).A1C(), c3346uP, mediaView, adOptionsView);
        AbstractC3111qc.A0O(nativeAdLayout, c2939nk.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c3346uP, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C2691jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
