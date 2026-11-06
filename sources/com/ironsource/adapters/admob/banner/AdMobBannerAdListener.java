package com.ironsource.adapters.admob.banner;

import android.text.TextUtils;
import android.widget.FrameLayout;
import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobBannerAdListener implements AdLoadCallback<BannerAd>, BannerAdEventCallback {
    private String mAdUnitId;
    private AdView mAdView;
    private BannerSmashListener mListener;

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public /* bridge */ /* synthetic */ void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        super.onAdFailedToShowFullScreenContent(fullScreenContentError);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public /* bridge */ /* synthetic */ void onAdPaid(AdValue adValue) {
        super.onAdPaid(adValue);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback, com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener
    public /* bridge */ /* synthetic */ void onAppEvent(String str, String str2) {
        super.onAppEvent(str, str2);
    }

    public AdMobBannerAdListener(BannerSmashListener bannerSmashListener, String str, AdView adView) {
        this.mListener = bannerSmashListener;
        this.mAdUnitId = str;
        this.mAdView = adView;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdLoaded(BannerAd bannerAd) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        if (this.mAdView == null) {
            IronLog.INTERNAL.verbose("adView is null");
            return;
        }
        bannerAd.setAdEventCallback(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        ResponseInfo responseInfo = bannerAd.getResponseInfo();
        String responseId = responseInfo != null ? responseInfo.getResponseId() : null;
        if (TextUtils.isEmpty(responseId)) {
            this.mListener.onBannerAdLoaded(this.mAdView, layoutParams);
            return;
        }
        HashMap map = new HashMap();
        map.put("creativeId", responseId);
        ironLog.verbose("creativeId = " + responseId);
        this.mListener.onBannerAdLoaded(this.mAdView, layoutParams, map);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
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
