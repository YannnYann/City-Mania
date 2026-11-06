package com.ironsource.adapters.unityads.rewarded;

import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.RewardedAd;
import com.unity3d.ads.RewardedShowListener;
import com.unity3d.ads.ShowFinishState;
import com.unity3d.ads.UnityAdsError;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsRewardedShowListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsRewardedShowListener implements RewardedShowListener {
    private final RewardedVideoAdListener listener;

    public UnityAdsRewardedShowListener(RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.unity3d.ads.ShowListener
    public void onStarted(RewardedAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onFailed(RewardedAd unityAd, UnityAdsError error) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        Integer numValueOf = Integer.valueOf(error.getCode());
        String message = error.getMessage();
        if (message == null) {
            message = "";
        }
        String str = String.format("Failed to show, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{numValueOf, message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        RewardedVideoAdListener rewardedVideoAdListener = this.listener;
        int code = error.getCode();
        String message2 = error.getMessage();
        rewardedVideoAdListener.onAdShowFailed(code, message2 != null ? message2 : "");
    }

    @Override // com.unity3d.ads.ShowListener
    public void onClicked(RewardedAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.unity3d.ads.RewardedShowListener
    public void onRewarded(RewardedAd rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdRewarded();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onCompleted(RewardedAd unityAd, ShowFinishState state) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(state, "state");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }
}
