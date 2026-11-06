package io.bidmachine.unified;

import io.bidmachine.RendererConfiguration;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedAdRequestParams;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UnifiedViewAd<UnifiedAdCallbackType extends UnifiedAdCallback, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> extends UnifiedAd<UnifiedAdCallbackType, UnifiedAdRequestParamsType> {
    public void prepareToShow(RendererConfiguration rendererConfiguration) throws Throwable {
    }
}
