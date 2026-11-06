package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.core.Logger;
import io.bidmachine.iab.mraid.MraidInterstitial;
import io.bidmachine.iab.mraid.MraidType;
import io.bidmachine.internal.C4233q;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.util.UiUtils;
import io.bidmachine.utils.BMError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidFullScreenAd extends UnifiedFullscreenAd {
    public MraidInterstitial mraidInterstitial;
    public C4233q mraidOMSDKAdMeasurer;
    public final MraidType mraidType;

    public MraidFullScreenAd(MraidType mraidType) {
        Intrinsics.checkNotNullParameter(mraidType, "mraidType");
        this.mraidType = mraidType;
    }

    public static final void load$lambda$0(MraidFullScreenAd this$0, MraidParams mraidParams, Context applicationContext, UnifiedFullscreenAdCallback callback, String creativeAdm) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(mraidParams, "$mraidParams");
        Intrinsics.checkNotNullParameter(applicationContext, "$applicationContext");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(creativeAdm, "$creativeAdm");
        try {
            MraidInterstitial mraidInterstitialBuild = MraidInterstitial.newBuilder().setCacheControl(mraidParams.getCacheControl()).setPlaceholderTimeoutSec(mraidParams.getPlaceholderTimeoutSec()).setCloseTime(mraidParams.getSkipOffset()).forceUseNativeCloseButton(mraidParams.getUseNativeClose()).setListener(new MraidFullScreenAdListener(applicationContext, callback, this$0.mraidOMSDKAdMeasurer)).setR1(mraidParams.getR1()).setR2(mraidParams.getR2()).setDurationSec(mraidParams.getProgressDuration()).setProductLink(mraidParams.getStoreUrl()).setCloseStyle(mraidParams.getCloseableViewStyle()).setCountDownStyle(mraidParams.getCountDownStyle()).setProgressStyle(mraidParams.getProgressStyle()).setAdMeasurer(this$0.mraidOMSDKAdMeasurer).setAutoViewabilityCheck(true).setEngagedClickParams(mraidParams.createEngagedClickParams(callback)).build(applicationContext);
            this$0.mraidInterstitial = mraidInterstitialBuild;
            Intrinsics.checkNotNull(mraidInterstitialBuild);
            mraidInterstitialBuild.load(creativeAdm);
        } catch (Throwable th) {
            Logger.w(th);
            BMError bMErrorThrowable = BMError.throwable("Exception loading MRAID fullscreen object", th);
            Intrinsics.checkNotNullExpressionValue(bMErrorThrowable, "throwable(\"Exception loa…ID fullscreen object\", t)");
            callback.onAdLoadFailed(bMErrorThrowable);
        }
    }

    public static final void onDestroy$lambda$1(MraidFullScreenAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.destroyMraidInterstitial();
    }

    public final void destroyMraidInterstitial() {
        try {
            MraidInterstitial mraidInterstitial = this.mraidInterstitial;
            if (mraidInterstitial != null) {
                mraidInterstitial.destroy();
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
        this.mraidInterstitial = null;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        C4233q c4233q = this.mraidOMSDKAdMeasurer;
        if (c4233q == null) {
            destroyMraidInterstitial();
        } else {
            c4233q.destroy(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAd$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MraidFullScreenAd.onDestroy$lambda$1(this.f$0);
                }
            });
            this.mraidOMSDKAdMeasurer = null;
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, RendererConfiguration rendererConfiguration) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MraidInterstitial mraidInterstitial = this.mraidInterstitial;
        if (mraidInterstitial == null) {
            BMError bMErrorInternal = BMError.internal("MRAID fullscreen object is null");
            Intrinsics.checkNotNullExpressionValue(bMErrorInternal, "internal(\"MRAID fullscreen object is null\")");
            callback.onAdShowFailed(bMErrorInternal);
        } else if (!mraidInterstitial.isReady()) {
            BMError bMErrorInternal2 = BMError.internal("MRAID fullscreen object is not ready");
            Intrinsics.checkNotNullExpressionValue(bMErrorInternal2, "internal(\"MRAID fullscreen object is not ready\")");
            callback.onAdShowFailed(bMErrorInternal2);
        } else {
            if (!mraidInterstitial.isShown()) {
                mraidInterstitial.show(contextProvider.getContext(), this.mraidType);
                return;
            }
            BMError bMErrorInternal3 = BMError.internal("MRAID fullscreen object is already was shown");
            Intrinsics.checkNotNullExpressionValue(bMErrorInternal3, "internal(\"MRAID fullscre…ct is already was shown\")");
            callback.onAdShowFailed(bMErrorInternal3);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, final UnifiedFullscreenAdCallback callback, UnifiedFullscreenAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
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
            final Context applicationContext = contextProvider.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.getApplicationContext()");
            if (mraidParams.getOmsdkEnabled()) {
                C4233q c4233q = new C4233q();
                this.mraidOMSDKAdMeasurer = c4233q;
                creativeAdm = c4233q.prepareCreativeForMeasure(mraidParams.getCreativeAdm());
                Intrinsics.checkNotNullExpressionValue(creativeAdm, "{\n            val mraidO…ms.creativeAdm)\n        }");
            } else {
                creativeAdm = mraidParams.getCreativeAdm();
            }
            final String str = creativeAdm;
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MraidFullScreenAd.load$lambda$0(this.f$0, mraidParams, applicationContext, callback, str);
                }
            });
        }
    }
}
