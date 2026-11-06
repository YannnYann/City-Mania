package com.ironsource.adapters.bidmachine.interstitial;

import com.ironsource.adapters.bidmachine.BidMachineAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.utils.BMError;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BidMachineInterstitialListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineInterstitialListener implements InterstitialListener {
    private final InterstitialAdListener listener;

    public BidMachineInterstitialListener(InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // io.bidmachine.AdListener
    public void onAdLoaded(InterstitialAd interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        AuctionResult auctionResult = interstitialAd.getAuctionResult();
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
    public void onAdLoadFailed(InterstitialAd interstitialAd, BMError error) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(error.getCode()), error.getMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(BidMachineAdapter.Companion.getLoadErrorType(error), error.getCode(), error.getMessage());
    }

    @Override // io.bidmachine.AdListener
    public void onAdImpression(InterstitialAd interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // io.bidmachine.AdListener
    public void onAdShowFailed(InterstitialAd interstitialAd, BMError error) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to show, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(error.getCode()), error.getMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdShowFailed(error.getCode(), error.getMessage());
    }

    @Override // io.bidmachine.AdListener
    public void onAdClicked(InterstitialAd interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // io.bidmachine.AdFullScreenListener
    public void onAdClosed(InterstitialAd interstitialAd, boolean z) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }

    @Override // io.bidmachine.AdListener
    public void onAdExpired(InterstitialAd interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }
}
