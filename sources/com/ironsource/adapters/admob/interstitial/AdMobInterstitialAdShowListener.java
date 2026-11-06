package com.ironsource.adapters.admob.interstitial;

import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobInterstitialAdShowListener implements InterstitialAdEventCallback {
    private String mAdUnitId;
    private InterstitialSmashListener mListener;

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public /* bridge */ /* synthetic */ void onAdPaid(AdValue adValue) {
        super.onAdPaid(adValue);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback, com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener
    public /* bridge */ /* synthetic */ void onAppEvent(String str, String str2) {
        super.onAppEvent(str, str2);
    }

    public AdMobInterstitialAdShowListener(String str, InterstitialSmashListener interstitialSmashListener) {
        this.mListener = interstitialSmashListener;
        this.mAdUnitId = str;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdShowedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        String str = fullScreenContentError.getMessage() + "( " + fullScreenContentError.getCode() + " )";
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        ironLog.error("adapterError = " + str);
        this.mListener.onInterstitialAdShowFailed(new IronSourceError(510, "onInterstitialAdShowFailed " + this.mAdUnitId + " " + str));
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdOpened();
            this.mListener.onInterstitialAdShowSucceeded();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdClicked();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        InterstitialSmashListener interstitialSmashListener = this.mListener;
        if (interstitialSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            interstitialSmashListener.onInterstitialAdClosed();
        }
    }
}
