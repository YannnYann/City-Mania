package io.bidmachine.ads.networks.vast;

import io.bidmachine.iab.IabError;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.iab.vast.VastActivityListener;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.activity.VastActivity;
import io.bidmachine.internal.C4233q;
import io.bidmachine.internal.P;
import io.bidmachine.rendering.utils.UrlHandler;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.ClickPostMethod;
import io.bidmachine.utils.IabUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VastFullScreenAdShowListener implements VastActivityListener {
    public final UnifiedFullscreenAdCallback callback;
    public final C4233q postBannerAdMeasurer;
    public final P vastOMSDKAdMeasurer;

    public VastFullScreenAdShowListener(UnifiedFullscreenAdCallback callback, P p, C4233q c4233q) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        this.vastOMSDKAdMeasurer = p;
        this.postBannerAdMeasurer = c4233q;
    }

    @Override // io.bidmachine.iab.vast.VastActivityListener
    public void onVastClick(VastActivity vastActivity, VastRequest vastRequest, IabClickCallback iabClickCallback, String url) {
        Intrinsics.checkNotNullParameter(vastActivity, "vastActivity");
        Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        Intrinsics.checkNotNullParameter(url, "url");
        UrlHandler.openUrl(vastActivity, url, new ClickPostMethod(this.callback, iabClickCallback));
    }

    @Override // io.bidmachine.iab.vast.VastActivityListener
    public void onVastComplete(VastActivity vastActivity, VastRequest vastRequest) {
        Intrinsics.checkNotNullParameter(vastActivity, "vastActivity");
        Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
        P p = this.vastOMSDKAdMeasurer;
        if (p != null) {
            p.a();
        }
        this.callback.onAdFinished();
    }

    @Override // io.bidmachine.iab.vast.VastActivityListener
    public void onVastDismiss(VastActivity vastActivity, VastRequest vastRequest, boolean z) {
        Intrinsics.checkNotNullParameter(vastActivity, "vastActivity");
        C4233q c4233q = this.postBannerAdMeasurer;
        if (c4233q != null) {
            c4233q.a();
        }
        this.callback.onAdClosed();
    }

    @Override // io.bidmachine.iab.vast.VastActivityListener
    public void onVastShowFailed(VastRequest vastRequest, IabError iabError) {
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        this.callback.onAdShowFailed(IabUtilsKt.toBMError(iabError));
    }

    @Override // io.bidmachine.iab.vast.VastActivityListener
    public void onVastShown(VastActivity vastActivity, VastRequest vastRequest) {
        Intrinsics.checkNotNullParameter(vastActivity, "vastActivity");
        Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
        this.callback.onAdShown();
    }
}
