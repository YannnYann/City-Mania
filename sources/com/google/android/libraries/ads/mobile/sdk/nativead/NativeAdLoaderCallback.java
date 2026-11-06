package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeAdLoaderCallback {
    default void onAdFailedToLoad(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
    }

    default void onAdLoadingCompleted() {
    }

    default void onBannerAdLoaded(BannerAd bannerAd) {
        Intrinsics.checkNotNullParameter(bannerAd, "bannerAd");
    }

    default void onCustomNativeAdLoaded(CustomNativeAd customNativeAd) {
        Intrinsics.checkNotNullParameter(customNativeAd, "customNativeAd");
    }

    default void onNativeAdLoaded(NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
    }
}
