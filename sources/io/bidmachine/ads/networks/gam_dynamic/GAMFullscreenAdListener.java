package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;

/* JADX INFO: loaded from: classes4.dex */
public class GAMFullscreenAdListener<InternalAdType extends InternalFullscreenAd> extends GAMBaseAdListener<InternalAdType, UnifiedFullscreenAdCallback> implements InternalAdLoadListener<InternalAdType>, InternalFullscreenAdPresentListener {
    public final GAMFullscreenAd gamFullscreenAd;

    public GAMFullscreenAdListener(UnifiedFullscreenAdCallback callback, GAMFullscreenAd gamFullscreenAd) {
        super(callback);
        this.gamFullscreenAd = gamFullscreenAd;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdLoadListener
    public void onAdLoaded(InternalAdType internalAd) {
        this.gamFullscreenAd.internalFullscreenAd = internalAd;
        getCallback().onAdLoaded();
    }
}
