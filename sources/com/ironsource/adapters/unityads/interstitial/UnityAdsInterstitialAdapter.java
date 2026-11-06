package com.ironsource.adapters.unityads.interstitial;

import android.app.Activity;
import android.content.Context;
import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.InterstitialAd;
import com.unity3d.ads.LoadConfiguration;
import com.unity3d.ads.ShowConfiguration;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsInterstitialAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsInterstitialAdapter extends LevelPlayBaseInterstitial<UnityAdsAdapter> {
    private InterstitialAd interstitialAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsInterstitialAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString(UnityAdsConstants.ZONE_ID_KEY);
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(UnityAdsConstants.Logs.ZONE_ID, Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (string == null || string.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{UnityAdsConstants.ZONE_ID_KEY}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            IronLog.INTERNAL.error(str2);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str2);
            return;
        }
        LoadConfiguration.Builder builderWithMediationInfo = new LoadConfiguration.Builder(string).withMediationInfo(UnityAdsAdapter.Companion.getMediationInfo$unityadsadapter_release());
        String serverData = adData.getServerData();
        if (serverData != null && serverData.length() > 0) {
            builderWithMediationInfo.withAdMarkup(serverData);
        }
        InterstitialAd.Companion.load(builderWithMediationInfo.build(), new UnityAdsInterstitialLoadListener(listener, new WeakReference(this)));
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (!isAdAvailable(adData)) {
            IronLog.INTERNAL.error("Ad is not available");
            listener.onAdShowFailed(1001, "Ad is not available");
            return;
        }
        ShowConfiguration showConfigurationBuild = new ShowConfiguration.Builder().build();
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.show(activity, showConfigurationBuild, new UnityAdsInterstitialShowListener(listener));
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.interstitialAd != null;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.interstitialAd = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial, com.ironsource.InterfaceC3940y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        IronLog.ADAPTER_API.verbose();
        UnityAdsAdapter unityAdsAdapter = (UnityAdsAdapter) getNetworkAdapter();
        if (unityAdsAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        } else {
            UnityAdsAdapter.collectBiddingData$unityadsadapter_release$default(unityAdsAdapter, adData, biddingDataCallback, AdFormat.INTERSTITIAL, null, 8, null);
        }
    }

    public final void setInterstitialAd$unityadsadapter_release(InterstitialAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.interstitialAd = ad;
    }
}
