package io.bidmachine;

import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.internal.AbstractC4221e;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class FullScreenAdObject<AdRequestType extends FullScreenAdRequest<AdRequestType>> extends AdObjectImpl<AdRequestType, AdObjectParams, UnifiedFullscreenAd, UnifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams> {
    private final AtomicBoolean isShowing;

    public static final class a extends AbstractC4221e implements UnifiedFullscreenAdCallback {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
            Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public void onAdClosed() {
            a().processClosed();
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public void onAdFinished() {
            a().processFinished();
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public void onAdLoaded() {
            a().processLoadSuccess();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenAdObject(ContextProvider contextProvider, AdProcessCallback adProcessCallback, AdRequestType adRequest, AdObjectParams adObjectParams, UnifiedFullscreenAd unifiedAd) {
        super(contextProvider, adProcessCallback, adRequest, adObjectParams, unifiedAd);
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adObjectParams, "adObjectParams");
        Intrinsics.checkNotNullParameter(unifiedAd, "unifiedAd");
        this.isShowing = new AtomicBoolean(false);
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public void onClosed(boolean z) {
        this.isShowing.set(false);
        super.onClosed(z);
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public void onShowFailed() {
        this.isShowing.set(false);
        super.onShowFailed();
    }

    public final void show(ContextProvider contextProvider, RendererConfiguration rendererConfiguration) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        if (this.isShowing.get()) {
            Logger.d("Fullscreen ad already showing, please wait until the ad closes");
            return;
        }
        this.isShowing.set(true);
        getUnifiedAd().show(contextProvider, getUnifiedAdCallback(), rendererConfiguration);
        getAdProcessCallback().processFillAd();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public UnifiedFullscreenAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback) {
        Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        return new a(adProcessCallback);
    }
}
