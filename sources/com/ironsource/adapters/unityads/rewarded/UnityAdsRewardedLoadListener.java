package com.ironsource.adapters.unityads.rewarded;

import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.LoadListener;
import com.unity3d.ads.RewardedAd;
import com.unity3d.ads.UnityAdsError;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsRewardedLoadListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsRewardedLoadListener implements LoadListener<RewardedAd> {
    private final WeakReference<UnityAdsRewardedAdapter> adapter;
    private final RewardedVideoAdListener listener;

    public UnityAdsRewardedLoadListener(RewardedVideoAdListener listener, WeakReference<UnityAdsRewardedAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.adapter = adapter;
    }

    @Override // com.unity3d.ads.LoadListener
    public void onAdLoaded(RewardedAd rewardedAd, UnityAdsError unityAdsError) {
        if (rewardedAd != null) {
            IronLog.ADAPTER_CALLBACK.verbose();
            UnityAdsRewardedAdapter unityAdsRewardedAdapter = this.adapter.get();
            if (unityAdsRewardedAdapter != null) {
                unityAdsRewardedAdapter.setRewardedAd$unityadsadapter_release(rewardedAd);
            }
            this.listener.onAdLoadSuccess();
            return;
        }
        int code = unityAdsError != null ? unityAdsError.getCode() : 1000;
        String message = unityAdsError != null ? unityAdsError.getMessage() : null;
        if (message == null) {
            message = "";
        }
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(code), message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(UnityAdsAdapter.Companion.getLoadErrorType(unityAdsError), code, message);
    }
}
