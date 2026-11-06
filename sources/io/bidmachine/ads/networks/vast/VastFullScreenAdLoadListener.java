package io.bidmachine.ads.networks.vast;

import io.bidmachine.iab.IabError;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.VastRequestListener;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.IabUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VastFullScreenAdLoadListener implements VastRequestListener {
    public final UnifiedFullscreenAdCallback callback;

    public VastFullScreenAdLoadListener(UnifiedFullscreenAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // io.bidmachine.iab.vast.VastRequestListener
    public void onVastLoadFailed(VastRequest vastRequest, IabError iabError) {
        Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        if (iabError.getCode() == 6) {
            this.callback.onAdExpired();
        } else {
            this.callback.onAdLoadFailed(IabUtilsKt.toBMError(iabError));
        }
    }

    @Override // io.bidmachine.iab.vast.VastRequestListener
    public void onVastLoaded(VastRequest vastRequest) {
        Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
        this.callback.onAdLoaded();
    }
}
