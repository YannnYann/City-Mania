package com.ironsource.adapters.bidmachine.rewarded;

import com.ironsource.adapters.bidmachine.BidMachineAdapter;
import com.ironsource.adapters.bidmachine.BidMachineConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.rewarded.RewardedAd;
import io.bidmachine.rewarded.RewardedListener;
import io.bidmachine.utils.BMError;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BidMachineRewardedListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineRewardedListener implements RewardedListener {
    private final RewardedVideoAdListener listener;

    public BidMachineRewardedListener(RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // io.bidmachine.AdListener
    public void onAdLoaded(RewardedAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        AuctionResult auctionResult = ad.getAuctionResult();
        String creativeId = auctionResult != null ? auctionResult.getCreativeId() : null;
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("creativeId = %s", Arrays.copyOf(new Object[]{creativeId == null ? "" : creativeId}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (creativeId == null || creativeId.length() == 0) {
            this.listener.onAdLoadSuccess();
        } else {
            this.listener.onAdLoadSuccess(MapsKt__MapsJVMKt.mapOf(TuplesKt.to("creativeId", creativeId)));
        }
    }

    @Override // io.bidmachine.AdListener
    public void onAdLoadFailed(RewardedAd ad, BMError error) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(error.getCode()), error.getMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(BidMachineAdapter.Companion.getLoadErrorType(error), error.getCode(), error.getMessage());
    }

    @Override // io.bidmachine.AdListener
    public void onAdImpression(RewardedAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // io.bidmachine.AdListener
    public void onAdShowFailed(RewardedAd ad, BMError error) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to show, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(error.getCode()), error.getMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdShowFailed(error.getCode(), error.getMessage());
    }

    @Override // io.bidmachine.AdListener
    public void onAdClicked(RewardedAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // io.bidmachine.AdRewardedListener
    public void onAdRewarded(RewardedAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdRewarded();
    }

    @Override // io.bidmachine.AdFullScreenListener
    public void onAdClosed(RewardedAd ad, boolean z) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }

    @Override // io.bidmachine.AdListener
    public void onAdExpired(RewardedAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1001, BidMachineConstants.AD_EXPIRED);
    }
}
