package com.ironsource.adapters.admob.rewardedvideo;

import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobRewardedVideoAdapter extends AbstractRewardedVideoAdapter<AdMobAdapter> {
    private final ConcurrentHashMap<String, RewardedAd> mAdUnitIdToAd;
    private final ConcurrentHashMap<String, JSONObject> mAdUnitIdToAdData;
    private final ConcurrentHashMap<String, Boolean> mAdUnitIdToAdsAvailability;
    private final ConcurrentHashMap<String, RewardedVideoSmashListener> mAdUnitIdToListener;
    private final CopyOnWriteArraySet<String> mAdUnitIdsForInitCallbacks;

    public AdMobRewardedVideoAdapter(AdMobAdapter adMobAdapter) {
        super(adMobAdapter);
        this.mAdUnitIdToListener = new ConcurrentHashMap<>();
        this.mAdUnitIdToAdData = new ConcurrentHashMap<>();
        this.mAdUnitIdToAd = new ConcurrentHashMap<>();
        this.mAdUnitIdToAdsAvailability = new ConcurrentHashMap<>();
        this.mAdUnitIdsForInitCallbacks = new CopyOnWriteArraySet<>();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(adUnitIdKey));
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mAdUnitIdToListener.put(configStringValueFromKey, rewardedVideoSmashListener);
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
            loadRewardedVideoAdInternal(configStringValueFromKey, jSONObject2, null, rewardedVideoSmashListener);
            return;
        }
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.verbose("onRewardedVideoAvailabilityChanged(false) - adUnitId = " + configStringValueFromKey);
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (jSONObject2 != null) {
            this.mAdUnitIdToAdData.put(configStringValueFromKey, jSONObject2);
        }
        getAdapter().initSDK(jSONObject);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(adUnitIdKey));
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(adUnitIdKey), IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mAdUnitIdToListener.put(configStringValueFromKey, rewardedVideoSmashListener);
        this.mAdUnitIdsForInitCallbacks.add(configStringValueFromKey);
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("onRewardedVideoInitSuccess - adUnitId = " + configStringValueFromKey);
            rewardedVideoSmashListener.onRewardedVideoInitSuccess();
            return;
        }
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.verbose("init failed - adUnitId = " + configStringValueFromKey);
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("AdMob sdk init failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        getAdapter().initSDK(jSONObject);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        for (String str : this.mAdUnitIdToListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mAdUnitIdToListener.get(str);
            if (this.mAdUnitIdsForInitCallbacks.contains(str)) {
                rewardedVideoSmashListener.onRewardedVideoInitSuccess();
            } else {
                loadRewardedVideoAdInternal(str, this.mAdUnitIdToAdData.get(str), null, rewardedVideoSmashListener);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String str) {
        for (String str2 : this.mAdUnitIdToListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mAdUnitIdToListener.get(str2);
            if (this.mAdUnitIdsForInitCallbacks.contains(str2)) {
                rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoAdInternal(getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey()), jSONObject2, null, rewardedVideoSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoAdInternal(getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey()), jSONObject2, str, rewardedVideoSmashListener);
    }

    private void loadRewardedVideoAdInternal(final String str, final JSONObject jSONObject, final String str2, final RewardedVideoSmashListener rewardedVideoSmashListener) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.rewardedvideo.AdMobRewardedVideoAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                IronLog ironLog = IronLog.ADAPTER_API;
                ironLog.verbose("adUnitId = " + str);
                AdMobRewardedVideoAdapter.this.mAdUnitIdToAdsAvailability.put(str, Boolean.FALSE);
                AdMobRewardedVideoAdLoadListener adMobRewardedVideoAdLoadListener = new AdMobRewardedVideoAdLoadListener(AdMobRewardedVideoAdapter.this, str, rewardedVideoSmashListener);
                if (str2 != null) {
                    ironLog.verbose("loading with serverData");
                    RewardedAd.loadFromAdResponse(str2, adMobRewardedVideoAdLoadListener);
                } else {
                    RewardedAd.load(AdMobRewardedVideoAdapter.this.getAdapter().createAdRequest(str, jSONObject), adMobRewardedVideoAdLoadListener);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(final JSONObject jSONObject, final RewardedVideoSmashListener rewardedVideoSmashListener) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.rewardedvideo.AdMobRewardedVideoAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                AdMobRewardedVideoAdapter adMobRewardedVideoAdapter = AdMobRewardedVideoAdapter.this;
                String configStringValueFromKey = adMobRewardedVideoAdapter.getConfigStringValueFromKey(jSONObject, adMobRewardedVideoAdapter.getAdapter().getAdUnitIdKey());
                RewardedAd rewardedVideoAd = AdMobRewardedVideoAdapter.this.getRewardedVideoAd(configStringValueFromKey);
                IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
                if (rewardedVideoAd != null && AdMobRewardedVideoAdapter.this.isRewardedVideoAvailableForAdUnitId(configStringValueFromKey)) {
                    AdMobRewardedVideoAdShowListener adMobRewardedVideoAdShowListener = new AdMobRewardedVideoAdShowListener(configStringValueFromKey, rewardedVideoSmashListener);
                    rewardedVideoAd.setAdEventCallback(adMobRewardedVideoAdShowListener);
                    rewardedVideoAd.show(ContextProvider.getInstance().getCurrentActiveActivity(), adMobRewardedVideoAdShowListener);
                } else {
                    rewardedVideoSmashListener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                AdMobRewardedVideoAdapter.this.mAdUnitIdToAdsAvailability.put(configStringValueFromKey, Boolean.FALSE);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject jSONObject) {
        return isRewardedVideoAvailableForAdUnitId(getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRewardedVideoAvailableForAdUnitId(String str) {
        return !TextUtils.isEmpty(str) && this.mAdUnitIdToAdsAvailability.containsKey(str) && this.mAdUnitIdToAdsAvailability.get(str).booleanValue();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.ironsource.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void collectRewardedVideoBiddingData(JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback) {
        getAdapter().collectBiddingData(biddingDataCallback, AdFormat.REWARDED, null);
    }

    public void onRewardedVideoAdLoaded(String str, RewardedAd rewardedAd) {
        this.mAdUnitIdToAd.put(str, rewardedAd);
        this.mAdUnitIdToAdsAvailability.put(str, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RewardedAd getRewardedVideoAd(String str) {
        if (TextUtils.isEmpty(str) || !this.mAdUnitIdToAd.containsKey(str)) {
            return null;
        }
        return this.mAdUnitIdToAd.get(str);
    }
}
