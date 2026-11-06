package io.bidmachine.ads.networks.adaptiverendering;

import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.rendering.ad.fullscreen.FullScreenAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingFullscreenAd extends UnifiedFullscreenAd {
    public FullScreenAd fullScreenAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        FullScreenAd fullScreenAd = this.fullScreenAd;
        if (fullScreenAd != null) {
            fullScreenAd.destroy();
        }
        this.fullScreenAd = null;
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, RendererConfiguration rendererConfiguration) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        FullScreenAd fullScreenAd = this.fullScreenAd;
        if (fullScreenAd == null) {
            BMError bMErrorInternal = BMError.internal("AdaptiveRendering fullscreen object is null");
            Intrinsics.checkNotNullExpressionValue(bMErrorInternal, "internal(\"AdaptiveRender…llscreen object is null\")");
            callback.onAdShowFailed(bMErrorInternal);
            return;
        }
        if (!fullScreenAd.isLoaded()) {
            BMError bMErrorInternal2 = BMError.internal("AdaptiveRendering fullscreen object not loaded");
            Intrinsics.checkNotNullExpressionValue(bMErrorInternal2, "internal(\"AdaptiveRender…creen object not loaded\")");
            callback.onAdShowFailed(bMErrorInternal2);
        } else {
            if (fullScreenAd.isFinished()) {
                BMError bMErrorInternal3 = BMError.internal("AdaptiveRendering fullscreen object already is finished");
                Intrinsics.checkNotNullExpressionValue(bMErrorInternal3, "internal(\"AdaptiveRender…ect already is finished\")");
                callback.onAdShowFailed(bMErrorInternal3);
                return;
            }
            if (rendererConfiguration != null) {
                Context applicationContext = contextProvider.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.applicationContext");
                Drawable watermarkDrawable = rendererConfiguration.getWatermarkDrawable(applicationContext);
                if (watermarkDrawable != null) {
                    fullScreenAd.setWatermark(watermarkDrawable);
                }
            }
            Context applicationContext2 = contextProvider.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "contextProvider.getApplicationContext()");
            fullScreenAd.show(applicationContext2);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, UnifiedFullscreenAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Intrinsics.checkNotNullParameter(networkAdUnit, "networkAdUnit");
        Context applicationContext = contextProvider.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.getApplicationContext()");
        AdaptiveRenderingParams adaptiveRenderingParams = new AdaptiveRenderingParams(unifiedMediationParams, callback);
        if (adaptiveRenderingParams.isValid(callback)) {
            if (adaptiveRenderingParams.getAdParams() == null) {
                throw new IllegalStateException("Required value was null.");
            }
            FullScreenAd fullScreenAd = new FullScreenAd(applicationContext, adaptiveRenderingParams.getAdParams());
            fullScreenAd.setFullScreenAdListener(new AdaptiveRenderingFullscreenAdListener(applicationContext, callback));
            this.fullScreenAd = fullScreenAd;
            fullScreenAd.load();
        }
    }
}
