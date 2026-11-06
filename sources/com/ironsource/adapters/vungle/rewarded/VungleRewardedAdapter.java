package com.ironsource.adapters.vungle.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.adapters.vungle.VungleAdapter;
import com.ironsource.adapters.vungle.VungleConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo;
import com.vungle.ads.AdConfig;
import com.vungle.ads.FullscreenAd;
import com.vungle.ads.RewardedAd;
import com.vungle.ads.VungleMediationLogger;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VungleRewardedAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class VungleRewardedAdapter extends LevelPlayBaseRewardedVideo<VungleAdapter> {
    private final Handler mainHandler;
    private RewardedAd rewardedVideoAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleRewardedAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, RewardedVideoAdListener listener) {
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
            VungleMediationLogger.logError(null, VungleConstants.Logs.NO_PLACEMENT_ID_REWARDED);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str2);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        RewardedAd rewardedAd = new RewardedAd(applicationContext, string, new AdConfig());
        rewardedAd.setAdListener(new VungleRewardedListener(listener));
        rewardedAd.setAdapterAdFormat(VungleConstants.ADAPTER_FORMAT_REWARDED);
        this.rewardedVideoAd = rewardedAd;
        rewardedAd.load(adData.getServerData());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, RewardedVideoAdListener listener) {
        RewardedAd rewardedAd;
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (!isAdAvailable(adData)) {
            IronLog.INTERNAL.error("Ad is not available");
            VungleMediationLogger.logError(this.rewardedVideoAd, VungleConstants.Logs.NO_ADS_TO_SHOW_REWARDED);
            listener.onAdShowFailed(1001, "Ad is not available");
        } else {
            String dynamicUserId = getDynamicUserId();
            if (dynamicUserId != null && dynamicUserId.length() > 0 && (rewardedAd = this.rewardedVideoAd) != null) {
                rewardedAd.setUserId(dynamicUserId);
            }
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.vungle.rewarded.VungleRewardedAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VungleRewardedAdapter.showAd$lambda$2(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAd$lambda$2(VungleRewardedAdapter vungleRewardedAdapter) {
        RewardedAd rewardedAd = vungleRewardedAdapter.rewardedVideoAd;
        if (rewardedAd != null) {
            FullscreenAd.DefaultImpls.play$default(rewardedAd, null, 1, null);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        RewardedAd rewardedAd = this.rewardedVideoAd;
        return rewardedAd != null && rewardedAd.canPlayAd().booleanValue();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.rewardedVideoAd = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo, com.ironsource.InterfaceC3940y3
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
