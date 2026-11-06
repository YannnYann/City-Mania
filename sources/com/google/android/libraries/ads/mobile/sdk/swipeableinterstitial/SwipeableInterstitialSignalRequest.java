package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;

/* JADX INFO: loaded from: classes3.dex */
public final class SwipeableInterstitialSignalRequest extends SignalRequest implements SwipeableInterstitialRequest {
    public final int o;
    public final AdSize p;
    public final boolean q;
    public final NativeAd.SwipeGestureDirection r;
    public final boolean s;

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public AdSize getAdSize() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    @KeepForSdk
    public boolean getCustomClickGestureEnabled() {
        return this.q;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public NativeAd.SwipeGestureDirection getCustomClickSwipeGestureDirection() {
        return this.r;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public boolean getCustomClickSwipeGestureTapsAllowed() {
        return this.s;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest
    public int getMaxScreenHoldDurationSeconds() {
        return this.o;
    }
}
