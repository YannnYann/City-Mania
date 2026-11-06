package com.ironsource.adapters.admob.banner;

import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobNativeBannerAdListener implements NativeAdLoaderCallback, NativeAdEventCallback {
    private final String mAdUnitId;
    private final WeakReference<AdMobBannerAdapter> mBannerAdapter;
    private final ISBannerSize mBannerSize;
    private final BannerSmashListener mListener;
    private final NativeTemplateType mTemplateType;

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

    public AdMobNativeBannerAdListener(AdMobBannerAdapter adMobBannerAdapter, BannerSmashListener bannerSmashListener, String str, ISBannerSize iSBannerSize, NativeTemplateType nativeTemplateType) {
        this.mBannerAdapter = new WeakReference<>(adMobBannerAdapter);
        this.mListener = bannerSmashListener;
        this.mAdUnitId = str;
        this.mBannerSize = iSBannerSize;
        this.mTemplateType = nativeTemplateType;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public void onNativeAdLoaded(final NativeAd nativeAd) {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobNativeBannerAdListener.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobNativeBannerAdListener.this.mListener == null) {
                    IronLog.INTERNAL.verbose("listener is null");
                    return;
                }
                if (AdMobNativeBannerAdListener.this.mBannerAdapter == null || AdMobNativeBannerAdListener.this.mBannerAdapter.get() == null) {
                    IronLog.INTERNAL.verbose("adapter is null");
                    return;
                }
                nativeAd.setAdEventCallback(AdMobNativeBannerAdListener.this);
                AdMobNativeBannerViewHandler adMobNativeBannerViewHandler = new AdMobNativeBannerViewHandler(AdMobNativeBannerAdListener.this.mBannerSize, AdMobNativeBannerAdListener.this.mTemplateType, ContextProvider.getInstance().getApplicationContext());
                new AdMobNativeBannerViewBinder().bindView(nativeAd, adMobNativeBannerViewHandler.getNativeAdView(), AdMobNativeBannerAdListener.this.mTemplateType);
                ((AdMobBannerAdapter) AdMobNativeBannerAdListener.this.mBannerAdapter.get()).mAdUnitIdToNativeBannerAd.put(AdMobNativeBannerAdListener.this.mAdUnitId, nativeAd);
                ResponseInfo responseInfo = nativeAd.getResponseInfo();
                String responseId = responseInfo != null ? responseInfo.getResponseId() : null;
                if (TextUtils.isEmpty(responseId)) {
                    AdMobNativeBannerAdListener.this.mListener.onBannerAdLoaded(adMobNativeBannerViewHandler.getNativeAdView(), adMobNativeBannerViewHandler.getLayoutParams());
                    return;
                }
                HashMap map = new HashMap();
                map.put("creativeId", responseId);
                IronLog.ADAPTER_CALLBACK.verbose("creativeId = " + responseId);
                AdMobNativeBannerAdListener.this.mListener.onBannerAdLoaded(adMobNativeBannerViewHandler.getNativeAdView(), adMobNativeBannerViewHandler.getLayoutParams(), map);
            }
        });
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
        if (AdMobAdapter.isNoFillError(loadAdError.getCode())) {
            ironSourceError = new IronSourceError(606, str);
        } else {
            ironSourceError = new IronSourceError(510, str);
        }
        ironLog.error(str);
        this.mListener.onBannerAdLoadFailed(ironSourceError);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdShown();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdClicked();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdShowedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdScreenPresented();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdScreenDismissed();
        }
    }
}
