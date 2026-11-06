package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.mraid.MraidView;
import io.bidmachine.iab.mraid.MraidViewListener;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.utils.UrlHandler;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.SafeExecutable;
import io.bidmachine.utils.ClickPostMethod;
import io.bidmachine.utils.IabUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidBannerAdListener implements MraidViewListener {
    public final UnifiedBannerAdCallback callback;

    public MraidBannerAdListener(UnifiedBannerAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onCalendarEvent(MraidView mraidView, String url, final IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        this.callback.onAdClicked();
        Context context = mraidView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mraidView.context");
        UrlHandler.openCalendar(context, url, new SafeExecutable<ProcessUrlResult>() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAdListener.onCalendarEvent.1
            @Override // io.bidmachine.util.SafeExecutable
            public void onExecute(ProcessUrlResult input) {
                Intrinsics.checkNotNullParameter(input, "input");
                iabClickCallback.clickHandled();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onClose(MraidView mraidView) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onExpand(MraidView mraidView) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onExpired(MraidView mraidView, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdExpired();
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onLoadFailed(MraidView mraidView, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdLoadFailed(IabUtilsKt.toBMError(iabError));
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onLoaded(MraidView mraidView) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        this.callback.onAdLoaded(mraidView);
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onOpenPrivacySheet(MraidView mraidView, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        PrivacySheetDialog.Companion companion = PrivacySheetDialog.Companion;
        Context contextFindDialogContext = Utils.findDialogContext(mraidView.peekContext(), mraidView);
        Intrinsics.checkNotNullExpressionValue(contextFindDialogContext, "findDialogContext(\n     …  mraidView\n            )");
        companion.show(contextFindDialogContext, privacySheetParams);
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onOpenUrl(MraidView mraidView, String url, IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        Context context = mraidView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mraidView.context");
        UrlHandler.openUrl(context, url, new ClickPostMethod(this.callback, iabClickCallback));
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onPlayVideo(MraidView mraidView, String url) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onShowFailed(MraidView mraidView, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdShowFailed(IabUtilsKt.toBMError(iabError));
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onShown(MraidView mraidView) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        this.callback.onAdShown();
    }

    @Override // io.bidmachine.iab.mraid.MraidViewListener
    public void onStorePicture(MraidView mraidView, String url, final IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(mraidView, "mraidView");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        this.callback.onAdClicked();
        Context context = mraidView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mraidView.context");
        UrlHandler.storePicture(context, url, new SafeExecutable<ProcessUrlResult>() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAdListener.onStorePicture.1
            @Override // io.bidmachine.util.SafeExecutable
            public void onExecute(ProcessUrlResult input) {
                Intrinsics.checkNotNullParameter(input, "input");
                iabClickCallback.clickHandled();
            }
        });
    }
}
