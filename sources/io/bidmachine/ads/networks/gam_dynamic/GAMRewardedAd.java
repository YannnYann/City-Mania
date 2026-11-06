package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;

/* JADX INFO: loaded from: classes4.dex */
public class GAMRewardedAd extends GAMFullscreenAd {
    public InternalRewardedAdListener listener;

    public GAMRewardedAd(GAMNetwork gamNetwork) {
        super(gamNetwork);
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, UnifiedFullscreenAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        Listener listener = new Listener(callback, this);
        this.listener = listener;
        this.gamNetwork.loadRewarded(networkAdUnit, listener);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.GAMFullscreenAd, io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        super.onDestroy();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.GAMFullscreenAd
    public InternalFullscreenAdPresentListener getPresentListener() {
        return this.listener;
    }

    public static final class Listener extends GAMFullscreenAdListener<InternalRewardedAd> implements InternalRewardedAdListener {
        public Listener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, GAMFullscreenAd gamFullscreenAd) {
            super(unifiedFullscreenAdCallback, gamFullscreenAd);
        }
    }
}
