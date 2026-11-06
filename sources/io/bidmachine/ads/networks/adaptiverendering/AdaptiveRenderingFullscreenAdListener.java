package io.bidmachine.ads.networks.adaptiverendering;

import android.content.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.rendering.ad.fullscreen.FullScreenAd;
import io.bidmachine.rendering.ad.fullscreen.FullScreenAdListener;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingFullscreenAdListener implements FullScreenAdListener {
    public final Context applicationContext;
    public final UnifiedFullscreenAdCallback callback;

    public AdaptiveRenderingFullscreenAdListener(Context context, UnifiedFullscreenAdCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdAppeared(FullScreenAd fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdDisappeared(FullScreenAd fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdShown(FullScreenAd fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdClicked(FullScreenAd fullScreenAd, SystemComponent systemComponent, ClickData clickData) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.callback.onAdClicked(systemComponent, clickData);
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdExpired(FullScreenAd fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.callback.onAdExpired();
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdFailToLoad(FullScreenAd fullScreenAd, Error error) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(error, "error");
        UnifiedFullscreenAdCallback unifiedFullscreenAdCallback = this.callback;
        BMError NoFill = BMError.NoFill;
        Intrinsics.checkNotNullExpressionValue(NoFill, "NoFill");
        unifiedFullscreenAdCallback.onAdLoadFailed(AdaptiveRenderingAdapterKt.toBMError(error, NoFill));
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdFailToShow(FullScreenAd fullScreenAd, Error error) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(error, "error");
        UnifiedFullscreenAdCallback unifiedFullscreenAdCallback = this.callback;
        BMError InternalUnknownError = BMError.InternalUnknownError;
        Intrinsics.checkNotNullExpressionValue(InternalUnknownError, "InternalUnknownError");
        unifiedFullscreenAdCallback.onAdShowFailed(AdaptiveRenderingAdapterKt.toBMError(error, InternalUnknownError));
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdFinished(FullScreenAd fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        if (fullScreenAd.isCompleted()) {
            this.callback.onAdFinished();
        }
        this.callback.onAdClosed();
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdLoaded(FullScreenAd fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.callback.onAdLoaded();
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onBrokenCreativeEvent(FullScreenAd fullScreenAd, BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
        this.callback.onBrokenCreativeEvent(AdaptiveRenderingAdapterKt.toEventParams(brokenCreativeEvent));
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onOpenPrivacySheet(FullScreenAd fullScreenAd, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        PrivacySheetDialog.Companion companion = PrivacySheetDialog.Companion;
        Context contextFindDialogContext = Utils.findDialogContext(this.applicationContext);
        Intrinsics.checkNotNullExpressionValue(contextFindDialogContext, "findDialogContext(applicationContext)");
        companion.show(contextFindDialogContext, privacySheetParams);
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onViewabilityEvent(FullScreenAd fullScreenAd, ActionEvent actionEvent, Error error) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        this.callback.onAdViewabilityEvent(actionEvent, error != null ? AdaptiveRenderingAdapterKt.toBMError(error) : null);
    }
}
