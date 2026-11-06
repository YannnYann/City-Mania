package io.bidmachine.unified;

import io.bidmachine.ContextProvider;
import io.bidmachine.RendererConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UnifiedFullscreenAd extends UnifiedAd<UnifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams> {
    public void onClosed(boolean z) {
    }

    public void onFinished() {
    }

    public abstract void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, RendererConfiguration rendererConfiguration) throws Throwable;
}
