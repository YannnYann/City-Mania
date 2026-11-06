package io.bidmachine.ads.networks.gam;

import io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;

/* JADX INFO: loaded from: classes4.dex */
public class GAMFullscreenAdListener<GAMAdType extends InternalGAMFullscreenAd> extends GAMBaseAdListener<GAMAdType, UnifiedFullscreenAdCallback> implements InternalGAMAdLoadListener<GAMAdType>, InternalGAMFullscreenAdPresentListener {
    public GAMFullscreenAdListener(UnifiedFullscreenAdCallback callback) {
        super(callback);
    }

    public void onAdLoaded(GAMAdType internalGAMAd) {
        getCallback().onAdLoaded();
    }
}
