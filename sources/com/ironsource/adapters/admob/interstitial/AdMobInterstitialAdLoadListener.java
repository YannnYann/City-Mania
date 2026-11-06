package com.ironsource.adapters.admob.interstitial;

import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobInterstitialAdLoadListener implements AdLoadCallback<InterstitialAd> {
    private final String mAdUnitId;
    private final WeakReference<AdMobInterstitialAdapter> mAdapter;
    private final InterstitialSmashListener mListener;

    public AdMobInterstitialAdLoadListener(AdMobInterstitialAdapter adMobInterstitialAdapter, String str, InterstitialSmashListener interstitialSmashListener) {
        this.mAdapter = new WeakReference<>(adMobInterstitialAdapter);
        this.mAdUnitId = str;
        this.mListener = interstitialSmashListener;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdLoaded(InterstitialAd interstitialAd) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<AdMobInterstitialAdapter> weakReference = this.mAdapter;
        if (weakReference == null || weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        this.mAdapter.get().onInterstitialAdLoaded(this.mAdUnitId, interstitialAd);
        ResponseInfo responseInfo = interstitialAd.getResponseInfo();
        String responseId = responseInfo != null ? responseInfo.getResponseId() : null;
        if (TextUtils.isEmpty(responseId)) {
            this.mListener.onInterstitialAdReady();
            return;
        }
        HashMap map = new HashMap();
        map.put("creativeId", responseId);
        ironLog.verbose("creativeId = " + responseId);
        this.mListener.onInterstitialAdReady(map);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        int i;
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        String str = loadAdError.getMessage() + "( " + loadAdError.getCode() + " ) ";
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        if (AdMobAdapter.isNoFillError(loadAdError.getCode())) {
            i = 1158;
            str = "No Fill";
        } else {
            i = 510;
        }
        ironLog.error("adapterError = " + str);
        this.mListener.onInterstitialAdLoadFailed(new IronSourceError(i, str));
    }
}
