package io.bidmachine.ads.networks.gam;

import android.app.Activity;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public class GAMRewarded extends UnifiedFullscreenAd {
    public final GAMNetwork gamNetwork;
    public InternalGAMRewardedAd gamRewardedAd;
    public Listener listener;

    public GAMRewarded(GAMNetwork gamNetwork) {
        this.gamNetwork = gamNetwork;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, UnifiedFullscreenAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        if (new GAMParams(unifiedMediationParams).isValid(callback)) {
            Listener listener = new Listener(callback, this);
            this.listener = listener;
            this.gamNetwork.loadRewarded(networkAdUnit, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, RendererConfiguration rendererConfiguration) throws Throwable {
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            callback.onAdShowFailed(BMError.internal("Activity is null"));
            return;
        }
        InternalGAMRewardedAd internalGAMRewardedAd = this.gamRewardedAd;
        if (internalGAMRewardedAd == null) {
            callback.onAdShowFailed(BMError.internal("InternalGAM rewarded object is null"));
            return;
        }
        if (internalGAMRewardedAd.isExpired()) {
            callback.onAdShowFailed(BMError.internal("InternalGAM rewarded object is expired"));
            return;
        }
        if (!this.gamRewardedAd.isLoaded()) {
            callback.onAdShowFailed(BMError.internal("InternalGAM rewarded object not loaded"));
            return;
        }
        Listener listener = this.listener;
        if (listener == null) {
            callback.onAdShowFailed(BMError.internal("InternalGAM rewarded listener is null"));
        } else {
            this.gamRewardedAd.show(activity, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onShown() {
        super.onShown();
        InternalGAMRewardedAd internalGAMRewardedAd = this.gamRewardedAd;
        if (internalGAMRewardedAd != null) {
            internalGAMRewardedAd.onAdShown();
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InternalGAMRewardedAd internalGAMRewardedAd = this.gamRewardedAd;
        if (internalGAMRewardedAd != null) {
            internalGAMRewardedAd.destroy();
            this.gamRewardedAd = null;
        }
    }

    public static final class Listener extends GAMFullscreenAdListener<InternalGAMRewardedAd> implements InternalGAMRewardedAdListener {
        public final GAMRewarded gamRewarded;

        public Listener(UnifiedFullscreenAdCallback callback, GAMRewarded gamRewarded) {
            super(callback);
            this.gamRewarded = gamRewarded;
        }

        @Override // io.bidmachine.ads.networks.gam.InternalGAMAdLoadListener
        public void onAdLoaded(InternalGAMRewardedAd gamRewardedAd) {
            this.gamRewarded.gamRewardedAd = gamRewardedAd;
            super.onAdLoaded(gamRewardedAd);
        }
    }
}
