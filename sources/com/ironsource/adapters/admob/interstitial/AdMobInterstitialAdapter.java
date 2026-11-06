package com.ironsource.adapters.admob.interstitial;

import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobInterstitialAdapter extends AbstractInterstitialAdapter<AdMobAdapter> {
    private final ConcurrentHashMap<String, InterstitialAd> mAdUnitIdToAd;
    private final ConcurrentHashMap<String, Boolean> mAdUnitIdToAdsAvailability;
    private final ConcurrentHashMap<String, InterstitialSmashListener> mAdUnitIdToListener;

    public AdMobInterstitialAdapter(AdMobAdapter adMobAdapter) {
        super(adMobAdapter);
        this.mAdUnitIdToListener = new ConcurrentHashMap<>();
        this.mAdUnitIdToAd = new ConcurrentHashMap<>();
        this.mAdUnitIdToAdsAvailability = new ConcurrentHashMap<>();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        initInterstitialInternal(jSONObject, interstitialSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        initInterstitialInternal(jSONObject, interstitialSmashListener);
    }

    private void initInterstitialInternal(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(adUnitIdKey), "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mAdUnitIdToListener.put(configStringValueFromKey, interstitialSmashListener);
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("onInterstitialInitSuccess - adUnitId = " + configStringValueFromKey);
            interstitialSmashListener.onInterstitialInitSuccess();
            return;
        }
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.verbose("onInterstitialInitFailed - adUnitId = " + configStringValueFromKey);
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("AdMob sdk init failed", "Interstitial"));
            return;
        }
        getAdapter().initSDK(jSONObject);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        Iterator<InterstitialSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String str) {
        Iterator<InterstitialSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(str, "Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        loadInterstitialInternal(jSONObject, jSONObject2, null, interstitialSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, InterstitialSmashListener interstitialSmashListener) {
        loadInterstitialInternal(jSONObject, jSONObject2, str, interstitialSmashListener);
    }

    private void loadInterstitialInternal(final JSONObject jSONObject, final JSONObject jSONObject2, final String str, final InterstitialSmashListener interstitialSmashListener) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.interstitial.AdMobInterstitialAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                AdMobInterstitialAdapter adMobInterstitialAdapter = AdMobInterstitialAdapter.this;
                String configStringValueFromKey = adMobInterstitialAdapter.getConfigStringValueFromKey(jSONObject, adMobInterstitialAdapter.getAdapter().getAdUnitIdKey());
                IronLog ironLog = IronLog.ADAPTER_API;
                ironLog.verbose("adUnitId = " + configStringValueFromKey);
                AdMobInterstitialAdapter.this.mAdUnitIdToAdsAvailability.put(configStringValueFromKey, Boolean.FALSE);
                AdMobInterstitialAdLoadListener adMobInterstitialAdLoadListener = new AdMobInterstitialAdLoadListener(AdMobInterstitialAdapter.this, configStringValueFromKey, interstitialSmashListener);
                if (str != null) {
                    ironLog.verbose("loading with serverData");
                    InterstitialAd.loadFromAdResponse(str, adMobInterstitialAdLoadListener);
                } else {
                    InterstitialAd.load(AdMobInterstitialAdapter.this.getAdapter().createAdRequest(configStringValueFromKey, jSONObject2), adMobInterstitialAdLoadListener);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(final JSONObject jSONObject, final InterstitialSmashListener interstitialSmashListener) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.interstitial.AdMobInterstitialAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                AdMobInterstitialAdapter adMobInterstitialAdapter = AdMobInterstitialAdapter.this;
                String configStringValueFromKey = adMobInterstitialAdapter.getConfigStringValueFromKey(jSONObject, adMobInterstitialAdapter.getAdapter().getAdUnitIdKey());
                IronLog ironLog = IronLog.ADAPTER_API;
                ironLog.verbose("adUnitId = " + configStringValueFromKey);
                InterstitialAd interstitialAd = AdMobInterstitialAdapter.this.getInterstitialAd(configStringValueFromKey);
                if (AdMobInterstitialAdapter.this.isInterstitialReadyForAdUnitId(configStringValueFromKey) && interstitialAd != null) {
                    interstitialAd.setAdEventCallback(new AdMobInterstitialAdShowListener(configStringValueFromKey, interstitialSmashListener));
                    interstitialAd.show(ContextProvider.getInstance().getCurrentActiveActivity());
                } else {
                    ironLog.error("Ad not ready to display");
                    interstitialSmashListener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
                }
                AdMobInterstitialAdapter.this.mAdUnitIdToAdsAvailability.put(configStringValueFromKey, Boolean.FALSE);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public final boolean isInterstitialReady(JSONObject jSONObject) {
        return isInterstitialReadyForAdUnitId(getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInterstitialReadyForAdUnitId(String str) {
        return !TextUtils.isEmpty(str) && this.mAdUnitIdToAdsAvailability.containsKey(str) && this.mAdUnitIdToAdsAvailability.get(str).booleanValue();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractInterstitialAdapter, com.ironsource.mediationsdk.sdk.InterstitialAdapterInterface
    public void collectInterstitialBiddingData(JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback) {
        getAdapter().collectBiddingData(biddingDataCallback, AdFormat.INTERSTITIAL, null);
    }

    public void onInterstitialAdLoaded(String str, InterstitialAd interstitialAd) {
        this.mAdUnitIdToAd.put(str, interstitialAd);
        this.mAdUnitIdToAdsAvailability.put(str, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterstitialAd getInterstitialAd(String str) {
        if (TextUtils.isEmpty(str) || !this.mAdUnitIdToAd.containsKey(str)) {
            return null;
        }
        return this.mAdUnitIdToAd.get(str);
    }
}
