package com.ironsource.adapters.admob.rewardedvideo;

import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobRewardedVideoAdLoadListener implements AdLoadCallback<RewardedAd> {
    private String mAdUnitId;
    private RewardedVideoSmashListener mListener;
    private WeakReference<AdMobRewardedVideoAdapter> mRewardedVideoAdapter;

    public AdMobRewardedVideoAdLoadListener(AdMobRewardedVideoAdapter adMobRewardedVideoAdapter, String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        this.mRewardedVideoAdapter = new WeakReference<>(adMobRewardedVideoAdapter);
        this.mAdUnitId = str;
        this.mListener = rewardedVideoSmashListener;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdLoaded(RewardedAd rewardedAd) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<AdMobRewardedVideoAdapter> weakReference = this.mRewardedVideoAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        this.mRewardedVideoAdapter.get().onRewardedVideoAdLoaded(this.mAdUnitId, rewardedAd);
        ResponseInfo responseInfo = rewardedAd.getResponseInfo();
        String responseId = responseInfo != null ? responseInfo.getResponseId() : null;
        if (TextUtils.isEmpty(responseId)) {
            this.mListener.onRewardedVideoAvailabilityChanged(true);
            return;
        }
        HashMap map = new HashMap();
        map.put("creativeId", responseId);
        ironLog.verbose("creativeId = " + responseId);
        this.mListener.onRewardedVideoAvailabilityChanged(true, map);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        int i;
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        String str = loadAdError.getMessage() + "( " + loadAdError.getCode() + " )";
        ironLog.error("adapterError = " + str);
        if (AdMobAdapter.isNoFillError(loadAdError.getCode())) {
            i = 1058;
            str = "No Fill";
        } else {
            i = 510;
        }
        ironLog.error("adapterError = " + str);
        this.mListener.onRewardedVideoAvailabilityChanged(false);
        this.mListener.onRewardedVideoLoadFailed(new IronSourceError(i, str));
    }
}
