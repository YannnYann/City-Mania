package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.mraid.MraidInterstitial;
import io.bidmachine.iab.mraid.MraidInterstitialListener;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.internal.C4233q;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.utils.UrlHandler;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.SafeExecutable;
import io.bidmachine.utils.ClickPostMethod;
import io.bidmachine.utils.IabUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidFullScreenAdListener implements MraidInterstitialListener {
    public final Context applicationContext;
    public final UnifiedFullscreenAdCallback callback;
    public final C4233q mraidOMSDKAdMeasurer;

    public MraidFullScreenAdListener(Context applicationContext, UnifiedFullscreenAdCallback callback, C4233q c4233q) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.applicationContext = applicationContext;
        this.callback = callback;
        this.mraidOMSDKAdMeasurer = c4233q;
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onCalendarEvent(MraidInterstitial mraidInterstitial, String url, final IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        this.callback.onAdClicked();
        UrlHandler.openCalendar(this.applicationContext, url, new SafeExecutable<ProcessUrlResult>() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener.onCalendarEvent.1
            @Override // io.bidmachine.util.SafeExecutable
            public void onExecute(ProcessUrlResult input) {
                Intrinsics.checkNotNullParameter(input, "input");
                iabClickCallback.clickHandled();
            }
        });
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onClose(MraidInterstitial mraidInterstitial) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        if (mraidInterstitial.isShown()) {
            C4233q c4233q = this.mraidOMSDKAdMeasurer;
            if (c4233q != null) {
                c4233q.a();
            }
            if (mraidInterstitial.isCompleted()) {
                this.callback.onAdFinished();
            }
        }
        this.callback.onAdClosed();
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onExpired(MraidInterstitial mraidInterstitial, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdExpired();
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onLoadFailed(MraidInterstitial mraidInterstitial, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdLoadFailed(IabUtilsKt.toBMError(iabError));
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onLoaded(MraidInterstitial mraidInterstitial) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        this.callback.onAdLoaded();
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onOpenPrivacySheet(MraidInterstitial mraidInterstitial, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        PrivacySheetDialog.Companion companion = PrivacySheetDialog.Companion;
        Context contextPeekContext = mraidInterstitial.peekContext();
        if (contextPeekContext == null) {
            contextPeekContext = this.applicationContext;
        }
        Context contextFindDialogContext = Utils.findDialogContext(contextPeekContext);
        Intrinsics.checkNotNullExpressionValue(contextFindDialogContext, "findDialogContext(mraidI…() ?: applicationContext)");
        companion.show(contextFindDialogContext, privacySheetParams);
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onOpenUrl(MraidInterstitial mraidInterstitial, String url, IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        UrlHandler.openUrl(this.applicationContext, url, new ClickPostMethod(this.callback, iabClickCallback));
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onPlayVideo(MraidInterstitial mraidInterstitial, String url) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onShowFailed(MraidInterstitial mraidInterstitial, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdShowFailed(IabUtilsKt.toBMError(iabError));
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onShown(MraidInterstitial mraidInterstitial) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        this.callback.onAdShown();
    }

    @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
    public void onStorePicture(MraidInterstitial mraidInterstitial, String url, final IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(mraidInterstitial, "mraidInterstitial");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        this.callback.onAdClicked();
        UrlHandler.storePicture(this.applicationContext, url, new SafeExecutable<ProcessUrlResult>() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener.onStorePicture.1
            @Override // io.bidmachine.util.SafeExecutable
            public void onExecute(ProcessUrlResult input) {
                Intrinsics.checkNotNullParameter(input, "input");
                iabClickCallback.clickHandled();
            }
        });
    }
}
