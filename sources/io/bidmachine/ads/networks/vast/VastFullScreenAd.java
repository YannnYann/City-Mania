package io.bidmachine.ads.networks.vast;

import android.content.Context;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.VideoType;
import io.bidmachine.iab.vast.activity.VastView;
import io.bidmachine.internal.C4233q;
import io.bidmachine.internal.P;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VastFullScreenAd extends UnifiedFullscreenAd {
    public C4233q postBannerAdMeasurer;
    public VastFullScreenAdLoadListener vastAdLoadListener;
    public VastFullScreenAdShowListener vastAdShowListener;
    public P vastOMSDKAdMeasurer;
    public VastRequest vastRequest;
    public VastView vastView;
    public final VideoType videoType;

    public VastFullScreenAd(VideoType videoType) {
        Intrinsics.checkNotNullParameter(videoType, "videoType");
        this.videoType = videoType;
    }

    public static final void onDestroy$lambda$0(VastFullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.destroyVastView();
    }

    public final void destroyVastView() {
        VastView vastView = this.vastView;
        if (vastView != null) {
            vastView.destroy();
        }
        this.vastView = null;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        Unit unit;
        this.vastAdLoadListener = null;
        this.vastAdShowListener = null;
        P p = this.vastOMSDKAdMeasurer;
        if (p != null) {
            p.a();
        }
        this.vastOMSDKAdMeasurer = null;
        C4233q c4233q = this.postBannerAdMeasurer;
        if (c4233q != null) {
            c4233q.destroy(new Runnable() { // from class: io.bidmachine.ads.networks.vast.VastFullScreenAd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VastFullScreenAd.onDestroy$lambda$0(this.f$0);
                }
            });
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            destroyVastView();
        }
        this.postBannerAdMeasurer = null;
        if (this.vastRequest != null) {
            this.vastRequest = null;
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, RendererConfiguration rendererConfiguration) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        VastRequest vastRequest = this.vastRequest;
        if (vastRequest != null && vastRequest.canDisplay()) {
            this.vastAdShowListener = new VastFullScreenAdShowListener(callback, this.vastOMSDKAdMeasurer, this.postBannerAdMeasurer);
            vastRequest.display(contextProvider.getContext(), this.videoType, this.vastAdShowListener, this.vastView, this.vastOMSDKAdMeasurer, this.postBannerAdMeasurer);
        } else {
            BMError bMErrorInternal = BMError.internal("VAST fullscreen object is null or can not find video file");
            Intrinsics.checkNotNullExpressionValue(bMErrorInternal, "internal(\"VAST fullscree…can not find video file\")");
            callback.onAdShowFailed(bMErrorInternal);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, UnifiedFullscreenAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Intrinsics.checkNotNullParameter(networkAdUnit, "networkAdUnit");
        VastParams vastParams = new VastParams(unifiedMediationParams);
        if (vastParams.isValid(callback)) {
            if (vastParams.getCreativeAdm() == null) {
                throw new IllegalStateException("Required value was null.");
            }
            if (vastParams.getOmsdkEnabled()) {
                this.vastOMSDKAdMeasurer = new P();
                this.postBannerAdMeasurer = new C4233q();
            }
            Context applicationContext = contextProvider.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.getApplicationContext()");
            this.vastAdLoadListener = new VastFullScreenAdLoadListener(callback);
            this.vastView = new VastView(applicationContext);
            VastRequest vastRequestBuild = VastRequest.newBuilder().setCacheControl(vastParams.getCacheControl()).setPlaceholderTimeoutSec(vastParams.getPlaceholderTimeoutSec()).setVideoCloseTime(vastParams.getSkipOffset()).setCompanionCloseTime(vastParams.getCompanionSkipOffset()).forceUseNativeCloseTime(vastParams.getUseNativeClose()).setAdMeasurer(this.vastOMSDKAdMeasurer).build();
            this.vastRequest = vastRequestBuild;
            if (vastRequestBuild != null) {
                vastRequestBuild.loadVideoWithData(applicationContext, vastParams.getCreativeAdm(), this.vastAdLoadListener);
            }
        }
    }
}
