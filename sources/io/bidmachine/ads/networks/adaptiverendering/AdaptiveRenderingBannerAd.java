package io.bidmachine.ads.networks.adaptiverendering;

import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingBannerAd extends UnifiedBannerAd {
    public AdView adView;

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        AdView adView = this.adView;
        if (adView != null) {
            adView.destroy();
        }
        this.adView = null;
    }

    @Override // io.bidmachine.unified.UnifiedViewAd
    public void prepareToShow(RendererConfiguration rendererConfiguration) throws Throwable {
        super.prepareToShow(rendererConfiguration);
        AdView adView = this.adView;
        if (adView == null || rendererConfiguration == null) {
            return;
        }
        Context context = adView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "adView.context");
        Drawable watermarkDrawable = rendererConfiguration.getWatermarkDrawable(context);
        if (watermarkDrawable != null) {
            adView.setWatermark(watermarkDrawable);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedBannerAdCallback callback, UnifiedBannerAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
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
            AdView adView = new AdView(applicationContext, adaptiveRenderingParams.getAdParams());
            adView.setAdViewListener(new AdaptiveRenderingBannerAdListener(callback));
            this.adView = adView;
            adView.load();
        }
    }
}
