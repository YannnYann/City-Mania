package io.bidmachine.ads.networks.gam;

import android.annotation.SuppressLint;
import android.content.Context;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.ads.networks.gam.versions.VersionWrapper;
import io.bidmachine.core.Logger;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import io.bidmachine.utils.version.Version;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class GAMNetwork {
    public final GAMLoader gamLoader;
    public final AtomicBoolean isInitialized = new AtomicBoolean(false);
    public final boolean overrideCallbacks;
    public final Tag tag;
    public final VersionWrapper versionWrapper;

    public GAMNetwork(Context applicationContext, VersionWrapper versionWrapper, String networkName, Map<AdsFormat, GAMTypeConfig> gamTypeConfigMap, String requestAgent, long expirationTimeMs, boolean overrideCallbacks) {
        this.tag = new Tag(networkName + AndroidInitializeBoldSDK.MSG_NETWORK);
        this.versionWrapper = versionWrapper;
        this.gamLoader = new GAMLoader(applicationContext, versionWrapper, networkName, gamTypeConfigMap, requestAgent, expirationTimeMs);
        this.overrideCallbacks = overrideCallbacks;
    }

    public String getVersion() {
        try {
            Version version = this.versionWrapper.getVersion();
            if (version != null) {
                return version.toString();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean isOverrideCallbacks() {
        return this.overrideCallbacks;
    }

    @SuppressLint({"MissingPermission"})
    public void init(Context applicationContext) {
        if (this.isInitialized.getAndSet(true)) {
            return;
        }
        try {
            this.versionWrapper.initialize(applicationContext);
        } catch (Throwable unused) {
        }
    }

    public void cache() {
        this.gamLoader.load();
    }

    public void cache(AdsFormat adsFormat) {
        AdsFormat parent;
        if (this.gamLoader.load(adsFormat) || (parent = adsFormat.getParent()) == null) {
            return;
        }
        this.gamLoader.load(parent);
    }

    public boolean isInitialized() {
        return this.isInitialized.get();
    }

    public GAMUnitData reserveMostExpensiveGAMAd(NetworkAdUnit networkAdUnit, String adUnitId) {
        return this.gamLoader.reserveMostExpensiveGAMAd(networkAdUnit, adUnitId);
    }

    public void unReserveGAMAd(NetworkAdUnit networkAdUnit) {
        this.gamLoader.unReserveGAMAd(networkAdUnit);
    }

    public void loadBanner(final NetworkAdUnit networkAdUnit, InternalGAMBannerAdListener gamListener) {
        InternalGAMAd reservedGAMAd = this.gamLoader.getReservedGAMAd(networkAdUnit);
        if (reservedGAMAd == null) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.GAMNetwork$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("Fail to load banner (Can't find reserved GAMAd by network ad unit id - %s)", networkAdUnit.getId());
                }
            });
            onAdLoadFailed(gamListener, null, BMError.internal("Can't find reserved GAMAd by NetworkAdUnit"));
        } else if (reservedGAMAd instanceof InternalGAMBannerAd) {
            reservedGAMAd.setAdPresentListener(gamListener);
            gamListener.onAdLoaded((InternalGAMBannerAd) reservedGAMAd);
        } else {
            onAdLoadFailed(gamListener, reservedGAMAd, BMError.internal("InternalGAM object has an incompatible ad type"));
        }
    }

    public void loadInterstitial(final NetworkAdUnit networkAdUnit, InternalGAMInterstitialAdListener gamListener) {
        InternalGAMAd reservedGAMAd = this.gamLoader.getReservedGAMAd(networkAdUnit);
        if (reservedGAMAd == null) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.GAMNetwork$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("Fail to load interstitial (Can't find reserved GAMAd by network ad unit id - %s)", networkAdUnit.getId());
                }
            });
            onAdLoadFailed(gamListener, null, BMError.internal("Can't find reserved GAMAd by NetworkAdUnit"));
        } else if (reservedGAMAd instanceof InternalGAMInterstitialAd) {
            reservedGAMAd.setAdPresentListener(gamListener);
            gamListener.onAdLoaded((InternalGAMInterstitialAd) reservedGAMAd);
        } else {
            onAdLoadFailed(gamListener, reservedGAMAd, BMError.internal("InternalGAM object has an incompatible ad type"));
        }
    }

    public void loadRewarded(final NetworkAdUnit networkAdUnit, InternalGAMRewardedAdListener gamListener) {
        InternalGAMAd reservedGAMAd = this.gamLoader.getReservedGAMAd(networkAdUnit);
        if (reservedGAMAd == null) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.GAMNetwork$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("Fail to load rewarded (Can't find reserved GAMAd by network ad unit id - %s)", networkAdUnit.getId());
                }
            });
            onAdLoadFailed(gamListener, null, BMError.internal("Can't find reserved GAMAd by NetworkAdUnit"));
        } else if (reservedGAMAd instanceof InternalGAMRewardedAd) {
            reservedGAMAd.setAdPresentListener(gamListener);
            gamListener.onAdLoaded((InternalGAMRewardedAd) reservedGAMAd);
        } else {
            onAdLoadFailed(gamListener, reservedGAMAd, BMError.internal("InternalGAM object has an incompatible ad type"));
        }
    }

    public final void onAdLoadFailed(InternalGAMAdLoadListener<?> gamLoadListener, InternalGAMAd internalGAMAd, BMError bmError) {
        if (internalGAMAd != null) {
            try {
                internalGAMAd.destroy();
            } catch (Throwable unused) {
            }
        }
        if (bmError == null) {
            bmError = BMError.NoFill;
        }
        gamLoadListener.onAdLoadFailed(bmError);
    }
}
