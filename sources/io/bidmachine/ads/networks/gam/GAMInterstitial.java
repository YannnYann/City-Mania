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
public class GAMInterstitial extends UnifiedFullscreenAd {
    public InternalGAMInterstitialAd gamInterstitialAd;
    public final GAMNetwork gamNetwork;
    public Listener listener;

    public GAMInterstitial(GAMNetwork gamNetwork) {
        this.gamNetwork = gamNetwork;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, UnifiedFullscreenAdRequestParams requestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        if (new GAMParams(unifiedMediationParams).isValid(callback)) {
            Listener listener = new Listener(callback, this);
            this.listener = listener;
            this.gamNetwork.loadInterstitial(networkAdUnit, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback callback, RendererConfiguration rendererConfiguration) throws Throwable {
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            callback.onAdShowFailed(BMError.internal("Activity is null"));
            return;
        }
        InternalGAMInterstitialAd internalGAMInterstitialAd = this.gamInterstitialAd;
        if (internalGAMInterstitialAd == null) {
            callback.onAdShowFailed(BMError.internal("InternalGAM interstitial object is null"));
            return;
        }
        if (internalGAMInterstitialAd.isExpired()) {
            callback.onAdShowFailed(BMError.internal("InternalGAM interstitial object is expired"));
            return;
        }
        if (!this.gamInterstitialAd.isLoaded()) {
            callback.onAdShowFailed(BMError.internal("InternalGAM interstitial object not loaded"));
            return;
        }
        Listener listener = this.listener;
        if (listener == null) {
            callback.onAdShowFailed(BMError.internal("InternalGAM interstitial listener is null"));
        } else {
            this.gamInterstitialAd.show(activity, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onShown() {
        super.onShown();
        InternalGAMInterstitialAd internalGAMInterstitialAd = this.gamInterstitialAd;
        if (internalGAMInterstitialAd != null) {
            internalGAMInterstitialAd.onAdShown();
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InternalGAMInterstitialAd internalGAMInterstitialAd = this.gamInterstitialAd;
        if (internalGAMInterstitialAd != null) {
            internalGAMInterstitialAd.destroy();
            this.gamInterstitialAd = null;
        }
    }

    public static final class Listener extends GAMFullscreenAdListener<InternalGAMInterstitialAd> implements InternalGAMInterstitialAdListener {
        public final GAMInterstitial gamInterstitial;

        public Listener(UnifiedFullscreenAdCallback callback, GAMInterstitial gamInterstitial) {
            super(callback);
            this.gamInterstitial = gamInterstitial;
        }

        @Override // io.bidmachine.ads.networks.gam.InternalGAMAdLoadListener
        public void onAdLoaded(InternalGAMInterstitialAd gamInterstitialAd) {
            this.gamInterstitial.gamInterstitialAd = gamInterstitialAd;
            super.onAdLoaded(gamInterstitialAd);
        }
    }
}
