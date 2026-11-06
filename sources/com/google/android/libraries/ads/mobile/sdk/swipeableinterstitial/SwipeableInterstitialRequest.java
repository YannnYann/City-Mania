package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;

/* JADX INFO: loaded from: classes3.dex */
public interface SwipeableInterstitialRequest {
    AdSize getAdSize();

    @KeepForSdk
    boolean getCustomClickGestureEnabled();

    NativeAd.SwipeGestureDirection getCustomClickSwipeGestureDirection();

    boolean getCustomClickSwipeGestureTapsAllowed();

    int getMaxScreenHoldDurationSeconds();
}
