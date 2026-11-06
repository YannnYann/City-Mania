package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;

/* JADX INFO: loaded from: classes3.dex */
public final class SwipeableInterstitialAdRequest extends AdRequest implements SwipeableInterstitialRequest {
    public final int n;
    public final AdSize o;
    public final boolean p;
    public final NativeAd.SwipeGestureDirection q;
    public final boolean r;

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public AdSize getAdSize() {
        return this.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    @KeepForSdk
    public boolean getCustomClickGestureEnabled() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public NativeAd.SwipeGestureDirection getCustomClickSwipeGestureDirection() {
        return this.q;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public boolean getCustomClickSwipeGestureTapsAllowed() {
        return this.r;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public int getMaxScreenHoldDurationSeconds() {
        return this.n;
    }
}
