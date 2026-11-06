package com.ironsource.adapters.admob.rewardedvideo;

import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobRewardedVideoAdShowListener implements RewardedAdEventCallback, OnUserEarnedRewardListener {
    private String mAdUnitId;
    private RewardedVideoSmashListener mListener;

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener
    public /* bridge */ /* synthetic */ void onAdMetadataChanged() {
        super.onAdMetadataChanged();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public /* bridge */ /* synthetic */ void onAdPaid(AdValue adValue) {
        super.onAdPaid(adValue);
    }

    public AdMobRewardedVideoAdShowListener(String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        this.mListener = rewardedVideoSmashListener;
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
        this.mListener.onRewardedVideoAdShowFailed(new IronSourceError(510, "onRewardedAdFailedToShow " + this.mAdUnitId + " " + str));
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdClicked();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener
    public void onUserEarnedReward(RewardItem rewardItem) {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdRewarded();
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        RewardedVideoSmashListener rewardedVideoSmashListener = this.mListener;
        if (rewardedVideoSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            rewardedVideoSmashListener.onRewardedVideoAdClosed();
        }
    }
}
