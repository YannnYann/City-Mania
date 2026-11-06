package com.ironsource.adapters.vungle.interstitial;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.adapters.vungle.VungleAdapter;
import com.ironsource.adapters.vungle.VungleConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial;
import com.vungle.ads.AdConfig;
import com.vungle.ads.FullscreenAd;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.VungleMediationLogger;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VungleInterstitialAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class VungleInterstitialAdapter extends LevelPlayBaseInterstitial<VungleAdapter> {
    private InterstitialAd interstitialAd;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleInterstitialAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString(VungleConstants.PLACEMENT_ID_KEY);
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (string == null || string.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{VungleConstants.PLACEMENT_ID_KEY}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            IronLog.INTERNAL.error(str2);
            VungleMediationLogger.logError(null, VungleConstants.Logs.NO_PLACEMENT_ID_INTERSTITIAL);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str2);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        InterstitialAd interstitialAd = new InterstitialAd(applicationContext, string, new AdConfig());
        interstitialAd.setAdListener(new VungleInterstitialListener(listener));
        interstitialAd.setAdapterAdFormat(VungleConstants.ADAPTER_FORMAT_INTERSTITIAL);
        this.interstitialAd = interstitialAd;
        interstitialAd.load(adData.getServerData());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (!isAdAvailable(adData)) {
            IronLog.INTERNAL.error("Ad is not available");
            VungleMediationLogger.logError(this.interstitialAd, VungleConstants.Logs.NO_ADS_TO_SHOW_INTERSTITIAL);
            listener.onAdShowFailed(1001, "Ad is not available");
            return;
        }
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.vungle.interstitial.VungleInterstitialAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VungleInterstitialAdapter.showAd$lambda$1(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAd$lambda$1(VungleInterstitialAdapter vungleInterstitialAdapter) {
        InterstitialAd interstitialAd = vungleInterstitialAdapter.interstitialAd;
        if (interstitialAd != null) {
            FullscreenAd.DefaultImpls.play$default(interstitialAd, null, 1, null);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        InterstitialAd interstitialAd = this.interstitialAd;
        return interstitialAd != null && interstitialAd.canPlayAd().booleanValue();
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
        VungleAdapter vungleAdapter = (VungleAdapter) getNetworkAdapter();
        if (vungleAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        } else {
            vungleAdapter.collectBiddingData$vungleadapter_release(context, biddingDataCallback);
        }
    }
}
