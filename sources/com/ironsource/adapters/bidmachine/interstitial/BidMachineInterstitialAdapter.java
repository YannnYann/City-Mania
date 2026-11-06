package com.ironsource.adapters.bidmachine.interstitial;

import android.app.Activity;
import android.content.Context;
import com.ironsource.adapters.bidmachine.BidMachineAdapter;
import com.ironsource.adapters.bidmachine.BidMachineConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialRequest;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BidMachineInterstitialAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineInterstitialAdapter extends LevelPlayBaseInterstitial<BidMachineAdapter> {
    private InterstitialAd interstitialAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BidMachineInterstitialAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString("placementId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        InterstitialAd interstitialAd = new InterstitialAd(context.getApplicationContext());
        interstitialAd.setListener(new BidMachineInterstitialListener(listener));
        this.interstitialAd = interstitialAd;
        AdRequest adRequestBuild = ((InterstitialRequest.Builder) new InterstitialRequest.Builder(createInterstitialPlacementConfig(string)).setBidPayload(adData.getServerData())).build();
        Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
        InterstitialRequest interstitialRequest = (InterstitialRequest) adRequestBuild;
        InterstitialAd interstitialAd2 = this.interstitialAd;
        if (interstitialAd2 != null) {
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose();
        if (!isAdAvailable(adData)) {
            ironLog.error(BidMachineConstants.AD_NOT_READY);
            listener.onAdShowFailed(1001, BidMachineConstants.AD_NOT_READY);
        } else {
            InterstitialAd interstitialAd = this.interstitialAd;
            if (interstitialAd != null) {
                interstitialAd.show();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        InterstitialAd interstitialAd = this.interstitialAd;
        return (interstitialAd == null || !interstitialAd.canShow() || interstitialAd.isExpired()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
        }
        InterstitialAd interstitialAd2 = this.interstitialAd;
        if (interstitialAd2 != null) {
            interstitialAd2.destroy();
        }
        this.interstitialAd = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial, com.ironsource.InterfaceC3940y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        String string = adData != null ? adData.getString("placementId") : null;
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        BidMachineAdapter bidMachineAdapter = (BidMachineAdapter) getNetworkAdapter();
        if (bidMachineAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        } else {
            bidMachineAdapter.collectBiddingData$bidmachineadapter_release(context, biddingDataCallback, createInterstitialPlacementConfig(string));
        }
    }

    private final AdPlacementConfig createInterstitialPlacementConfig(String str) {
        AdPlacementConfig.Builder builderInterstitialBuilder$default = AdPlacementConfig.Companion.interstitialBuilder$default(AdPlacementConfig.Companion, null, 1, null);
        if (str != null && str.length() != 0) {
            builderInterstitialBuilder$default.withPlacementId(str);
        }
        return builderInterstitialBuilder$default.build();
    }
}
