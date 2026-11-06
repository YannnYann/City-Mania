package io.bidmachine.ads.networks.adaptiverendering;

import android.content.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.ad.view.AdViewListener;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingBannerAdListener implements AdViewListener {
    public final UnifiedBannerAdCallback callback;

    public AdaptiveRenderingBannerAdListener(UnifiedBannerAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdAppeared(AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdDisappeared(AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdFinished(AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdShown(AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdClicked(AdView adView, SystemComponent systemComponent, ClickData clickData) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.callback.onAdClicked(systemComponent, clickData);
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdExpired(AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.callback.onAdExpired();
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdFailToLoad(AdView adView, Error error) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(error, "error");
        UnifiedBannerAdCallback unifiedBannerAdCallback = this.callback;
        BMError NoFill = BMError.NoFill;
        Intrinsics.checkNotNullExpressionValue(NoFill, "NoFill");
        unifiedBannerAdCallback.onAdLoadFailed(AdaptiveRenderingAdapterKt.toBMError(error, NoFill));
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdFailToShow(AdView adView, Error error) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(error, "error");
        UnifiedBannerAdCallback unifiedBannerAdCallback = this.callback;
        BMError InternalUnknownError = BMError.InternalUnknownError;
        Intrinsics.checkNotNullExpressionValue(InternalUnknownError, "InternalUnknownError");
        unifiedBannerAdCallback.onAdShowFailed(AdaptiveRenderingAdapterKt.toBMError(error, InternalUnknownError));
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onAdLoaded(AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.callback.onAdLoaded(adView);
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onBrokenCreativeEvent(AdView adView, BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
        this.callback.onBrokenCreativeEvent(AdaptiveRenderingAdapterKt.toEventParams(brokenCreativeEvent));
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onOpenPrivacySheet(AdView adView, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        PrivacySheetDialog.Companion companion = PrivacySheetDialog.Companion;
        Context contextFindDialogContext = Utils.findDialogContext(adView.getContext(), adView);
        Intrinsics.checkNotNullExpressionValue(contextFindDialogContext, "findDialogContext(adView.context, adView)");
        companion.show(contextFindDialogContext, privacySheetParams);
    }

    @Override // io.bidmachine.rendering.ad.AdListener
    public void onViewabilityEvent(AdView adView, ActionEvent actionEvent, Error error) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        this.callback.onAdViewabilityEvent(actionEvent, error != null ? AdaptiveRenderingAdapterKt.toBMError(error) : null);
    }
}
