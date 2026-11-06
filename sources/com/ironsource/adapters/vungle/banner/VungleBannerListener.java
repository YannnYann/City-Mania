package com.ironsource.adapters.vungle.banner;

import android.content.Context;
import android.widget.FrameLayout;
import com.ironsource.adapters.vungle.VungleAdapter;
import com.ironsource.adapters.vungle.VungleConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.vungle.ads.BannerAdListener;
import com.vungle.ads.BaseAd;
import com.vungle.ads.VungleBannerView;
import com.vungle.ads.VungleError;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VungleBannerListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class VungleBannerListener implements BannerAdListener {
    private final VungleBannerView bannerView;
    private final com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener listener;

    public VungleBannerListener(com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener listener, VungleBannerView bannerView) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        this.listener = listener;
        this.bannerView = bannerView;
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLoaded(BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Context context = this.bannerView.getContext();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, this.bannerView.getAdViewSize().getWidth()), AdapterUtils.dpToPixels(context, this.bannerView.getAdViewSize().getHeight()), 17);
        String creativeId = baseAd.getCreativeId();
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("creativeId = %s", Arrays.copyOf(new Object[]{creativeId == null ? "" : creativeId}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (creativeId == null || creativeId.length() == 0) {
            this.listener.onAdLoadSuccess(this.bannerView, layoutParams);
        } else {
            this.listener.onAdLoadSuccess(this.bannerView, layoutParams, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("creativeId", creativeId)));
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToLoad(BaseAd baseAd, VungleError adError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(adError.getCode()), adError.getErrorMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(VungleAdapter.Companion.getLoadErrorType(adError), adError.getCode(), adError.getErrorMessage());
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdStart(BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdImpression(BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToPlay(BaseAd baseAd, VungleError adError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(VungleConstants.Logs.FAILED_TO_PLAY, Arrays.copyOf(new Object[]{Integer.valueOf(adError.getCode()), adError.getErrorMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdClicked(BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLeftApplication(BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdLeftApplication();
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdEnd(BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }
}
