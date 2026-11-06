package com.ironsource.adapters.bidmachine.banner;

import android.widget.FrameLayout;
import com.ironsource.adapters.bidmachine.BidMachineAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerView;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.utils.BMError;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BidMachineBannerListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineBannerListener implements BannerListener {
    private final FrameLayout.LayoutParams layoutParams;
    private final BannerAdListener listener;

    public BidMachineBannerListener(BannerAdListener listener, FrameLayout.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        this.listener = listener;
        this.layoutParams = layoutParams;
    }

    @Override // io.bidmachine.AdListener
    public void onAdLoaded(BannerView ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        AuctionResult auctionResult = ad.getAuctionResult();
        String creativeId = auctionResult != null ? auctionResult.getCreativeId() : null;
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("creativeId = %s", Arrays.copyOf(new Object[]{creativeId == null ? "" : creativeId}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (creativeId == null || creativeId.length() == 0) {
            this.listener.onAdLoadSuccess(ad, this.layoutParams);
        } else {
            this.listener.onAdLoadSuccess(ad, this.layoutParams, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("creativeId", creativeId)));
        }
    }

    @Override // io.bidmachine.AdListener
    public void onAdLoadFailed(BannerView ad, BMError error) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(error.getCode()), error.getMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(BidMachineAdapter.Companion.getLoadErrorType(error), error.getCode(), error.getMessage());
    }

    @Override // io.bidmachine.AdListener
    public void onAdImpression(BannerView ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // io.bidmachine.AdListener
    public void onAdShowFailed(BannerView ad, BMError error) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to show, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(error.getCode()), error.getMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
    }

    @Override // io.bidmachine.AdListener
    public void onAdClicked(BannerView ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // io.bidmachine.AdListener
    public void onAdExpired(BannerView ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
    }
}
