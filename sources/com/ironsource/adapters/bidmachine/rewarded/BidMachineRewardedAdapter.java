package com.ironsource.adapters.bidmachine.rewarded;

import android.app.Activity;
import android.content.Context;
import com.ironsource.adapters.bidmachine.BidMachineAdapter;
import com.ironsource.adapters.bidmachine.BidMachineConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import io.bidmachine.rewarded.RewardedAd;
import io.bidmachine.rewarded.RewardedRequest;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BidMachineRewardedAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineRewardedAdapter extends LevelPlayBaseRewardedVideo<BidMachineAdapter> {
    private RewardedAd rewardedAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BidMachineRewardedAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString("placementId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("placementId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        RewardedAd rewardedAd = new RewardedAd(context.getApplicationContext());
        rewardedAd.setListener(new BidMachineRewardedListener(listener));
        this.rewardedAd = rewardedAd;
        AdRequest adRequestBuild = ((RewardedRequest.Builder) new RewardedRequest.Builder(createRewardedPlacementConfig(string)).setBidPayload(adData.getServerData())).build();
        Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
        RewardedRequest rewardedRequest = (RewardedRequest) adRequestBuild;
        RewardedAd rewardedAd2 = this.rewardedAd;
        if (rewardedAd2 != null) {
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose();
        if (!isAdAvailable(adData)) {
            ironLog.error(BidMachineConstants.AD_NOT_READY);
            listener.onAdShowFailed(1001, BidMachineConstants.AD_NOT_READY);
        } else {
            RewardedAd rewardedAd = this.rewardedAd;
            if (rewardedAd != null) {
                rewardedAd.show();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        RewardedAd rewardedAd = this.rewardedAd;
        return (rewardedAd == null || !rewardedAd.canShow() || rewardedAd.isExpired()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd != null) {
        }
        RewardedAd rewardedAd2 = this.rewardedAd;
        if (rewardedAd2 != null) {
            rewardedAd2.destroy();
        }
        this.rewardedAd = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo, com.ironsource.InterfaceC3940y3
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
            bidMachineAdapter.collectBiddingData$bidmachineadapter_release(context, biddingDataCallback, createRewardedPlacementConfig(string));
        }
    }

    private final AdPlacementConfig createRewardedPlacementConfig(String str) {
        AdPlacementConfig.Builder builderRewardedBuilder$default = AdPlacementConfig.Companion.rewardedBuilder$default(AdPlacementConfig.Companion, null, 1, null);
        if (str != null && str.length() != 0) {
            builderRewardedBuilder$default.withPlacementId(str);
        }
        return builderRewardedBuilder$default.build();
    }
}
