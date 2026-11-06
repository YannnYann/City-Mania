package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.core.Logger;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.mraid.MraidView;
import io.bidmachine.internal.C4233q;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.util.UiUtils;
import io.bidmachine.utils.BMError;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidBannerAd extends UnifiedBannerAd {
    public final AtomicBoolean isPrepareToShowExecuted = new AtomicBoolean(false);
    public C4233q mraidOMSDKAdMeasurer;
    public MraidView mraidView;

    public static final void load$lambda$1(MraidParams mraidParams, UnifiedBannerAdCallback callback, MraidBannerAd this$0, Context applicationContext, String creativeAdm) {
        Intrinsics.checkNotNullParameter(mraidParams, "$mraidParams");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(applicationContext, "$applicationContext");
        Intrinsics.checkNotNullParameter(creativeAdm, "$creativeAdm");
        try {
            MraidView mraidViewBuild = new MraidView.Builder().setCacheControl(mraidParams.getCacheControl()).setPlaceholderTimeoutSec(mraidParams.getPlaceholderTimeoutSec()).setListener(new MraidBannerAdListener(callback)).setAdMeasurer(this$0.mraidOMSDKAdMeasurer).setEngagedClickParams(mraidParams.createEngagedClickParams(callback)).build(applicationContext);
            this$0.mraidView = mraidViewBuild;
            mraidViewBuild.load(creativeAdm);
        } catch (Throwable th) {
            Logger.w(th);
            BMError bMErrorThrowable = BMError.throwable("Exception loading MRAID banner object", th);
            Intrinsics.checkNotNullExpressionValue(bMErrorThrowable, "throwable(\"Exception loa… MRAID banner object\", t)");
            callback.onAdLoadFailed(bMErrorThrowable);
        }
    }

    public static final void onDestroy$lambda$3(MraidBannerAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.destroyMraidView();
    }

    public static final void onViewabilityChanged$lambda$2(MraidBannerAd this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            MraidView mraidView = this$0.mraidView;
            if (mraidView != null) {
                mraidView.onViewabilityChanged(z);
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public final void destroyMraidView() {
        try {
            MraidView mraidView = this.mraidView;
            if (mraidView != null) {
                mraidView.destroy();
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
        this.mraidView = null;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        C4233q c4233q = this.mraidOMSDKAdMeasurer;
        if (c4233q == null) {
            destroyMraidView();
        } else {
            c4233q.destroy(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MraidBannerAd.onDestroy$lambda$3(this.f$0);
                }
            });
            this.mraidOMSDKAdMeasurer = null;
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onShown() {
        super.onShown();
        C4233q c4233q = this.mraidOMSDKAdMeasurer;
        if (c4233q != null) {
            c4233q.c();
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onViewabilityChanged(final boolean z) {
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MraidBannerAd.onViewabilityChanged$lambda$2(this.f$0, z);
            }
        });
    }

    @Override // io.bidmachine.unified.UnifiedViewAd
    public void prepareToShow(RendererConfiguration rendererConfiguration) throws Throwable {
        MraidView mraidView;
        super.prepareToShow(rendererConfiguration);
        if (this.isPrepareToShowExecuted.compareAndSet(false, true) && (mraidView = this.mraidView) != null) {
            mraidView.show(null);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, final UnifiedBannerAdCallback callback, UnifiedBannerAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        String creativeAdm;
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Intrinsics.checkNotNullParameter(networkAdUnit, "networkAdUnit");
        final MraidParams mraidParams = new MraidParams(unifiedMediationParams);
        if (mraidParams.isValid(callback)) {
            if (mraidParams.getCreativeAdm() == null) {
                throw new IllegalStateException("Required value was null.");
            }
            callback.setVisibilitySource(mraidParams.getCacheControl() == CacheControl.FullLoad ? VisibilitySource.BidMachine : VisibilitySource.All);
            final Context applicationContext = contextProvider.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.getApplicationContext()");
            if (mraidParams.getOmsdkEnabled()) {
                C4233q c4233q = new C4233q(true);
                this.mraidOMSDKAdMeasurer = c4233q;
                creativeAdm = c4233q.prepareCreativeForMeasure(mraidParams.getCreativeAdm());
                Intrinsics.checkNotNullExpressionValue(creativeAdm, "{\n            val mraidO…ms.creativeAdm)\n        }");
            } else {
                creativeAdm = mraidParams.getCreativeAdm();
            }
            final String str = creativeAdm;
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MraidBannerAd.load$lambda$1(mraidParams, callback, this, applicationContext, str);
                }
            });
        }
    }
}
