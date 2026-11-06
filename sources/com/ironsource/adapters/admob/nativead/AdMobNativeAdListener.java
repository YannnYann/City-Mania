package com.ironsource.adapters.admob.nativead;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobNativeAdListener implements NativeAdLoaderCallback, NativeAdEventCallback {
    private final String mAdUnitId;
    private final WeakReference<AdMobNativeAdAdapter> mAdapter;
    private final NativeAdSmashListener mListener;

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public /* bridge */ /* synthetic */ void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        super.onAdFailedToShowFullScreenContent(fullScreenContentError);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public /* bridge */ /* synthetic */ void onAdLoadingCompleted() {
        super.onAdLoadingCompleted();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public /* bridge */ /* synthetic */ void onAdPaid(AdValue adValue) {
        super.onAdPaid(adValue);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback
    public /* bridge */ /* synthetic */ void onAdSwipeGestureClicked() {
        super.onAdSwipeGestureClicked();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public /* bridge */ /* synthetic */ void onBannerAdLoaded(BannerAd bannerAd) {
        super.onBannerAdLoaded(bannerAd);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback
    public /* bridge */ /* synthetic */ void onCustomMuteThisAdReported() {
        super.onCustomMuteThisAdReported();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public /* bridge */ /* synthetic */ void onCustomNativeAdLoaded(CustomNativeAd customNativeAd) {
        super.onCustomNativeAdLoaded(customNativeAd);
    }

    public AdMobNativeAdListener(AdMobNativeAdAdapter adMobNativeAdAdapter, String str, NativeAdSmashListener nativeAdSmashListener) {
        this.mAdapter = new WeakReference<>(adMobNativeAdAdapter);
        this.mAdUnitId = str;
        this.mListener = nativeAdSmashListener;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public void onNativeAdLoaded(NativeAd nativeAd) {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<AdMobNativeAdAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        nativeAd.setAdEventCallback(this);
        this.mAdapter.get().mAd = new WeakReference<>(nativeAd);
        this.mListener.onNativeAdLoaded(new AdMobNativeAdData(nativeAd), new AdMobNativeAdViewBinder(nativeAd));
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        IronSourceError ironSourceError;
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        String str = loadAdError.getMessage() + "( " + loadAdError.getCode() + " ) ";
        ironLog.error("adapterError = " + str);
        if (AdMobAdapter.isNoFillError(loadAdError.getCode())) {
            ironSourceError = new IronSourceError(IronSourceError.ERROR_NT_LOAD_NO_FILL, str);
        } else {
            ironSourceError = new IronSourceError(510, str);
        }
        this.mListener.onNativeAdLoadFailed(ironSourceError);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        NativeAdSmashListener nativeAdSmashListener = this.mListener;
        if (nativeAdSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            nativeAdSmashListener.onNativeAdShown();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        NativeAdSmashListener nativeAdSmashListener = this.mListener;
        if (nativeAdSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            nativeAdSmashListener.onNativeAdClicked();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdShowedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
    }
}
