package io.bidmachine.ads.networks.gam;

import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;

/* JADX INFO: loaded from: classes4.dex */
public class GAMBanner extends UnifiedBannerAd {
    public InternalGAMBannerAd gamBannerAd;
    public final GAMNetwork gamNetwork;
    public InternalGAMBannerAdListener listener;

    public GAMBanner(GAMNetwork gamNetwork) {
        this.gamNetwork = gamNetwork;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedBannerAdCallback callback, UnifiedBannerAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        if (new GAMParams(unifiedMediationParams).isValid(callback)) {
            if (!this.gamNetwork.isOverrideCallbacks()) {
                callback.setVisibilitySource(VisibilitySource.BidMachine);
            }
            Listener listener = new Listener(callback);
            this.listener = listener;
            this.gamNetwork.loadBanner(networkAdUnit, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onShown() {
        super.onShown();
        InternalGAMBannerAd internalGAMBannerAd = this.gamBannerAd;
        if (internalGAMBannerAd != null) {
            internalGAMBannerAd.onAdShown();
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InternalGAMBannerAd internalGAMBannerAd = this.gamBannerAd;
        if (internalGAMBannerAd != null) {
            internalGAMBannerAd.destroy();
            this.gamBannerAd = null;
        }
    }

    public static final class Listener extends GAMBaseAdListener<InternalGAMBannerAd, UnifiedBannerAdCallback> implements InternalGAMBannerAdListener {
        public final GAMBanner gamBanner;

        public Listener(GAMBanner gamBanner, UnifiedBannerAdCallback callback) {
            super(callback);
            this.gamBanner = gamBanner;
        }

        @Override // io.bidmachine.ads.networks.gam.InternalGAMAdLoadListener
        public void onAdLoaded(InternalGAMBannerAd gamAd) {
            this.gamBanner.gamBannerAd = gamAd;
            getCallback().onAdLoaded(gamAd.getAdView());
        }
    }
}
