package com.google.android.gms.ads.mediation;

import ads_mobile_sdk.q2;
import android.content.Context;
import com.google.android.gms.ads.AdError;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Adapter implements MediationExtrasReceiver {
    public static final Companion Companion = new Companion(0);
    public static final String ERROR_MESSAGE_METHOD_NOT_FOUND = "Method is not found";

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    public abstract com.google.android.gms.ads.VersionInfo getSDKVersionInfo();

    public abstract com.google.android.gms.ads.VersionInfo getVersionInfo();

    public abstract void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list);

    public void loadAppOpenAd(MediationAppOpenAdConfiguration adConfiguration, MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support app open ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public void loadBannerAd(MediationBannerAdConfiguration adConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support banner ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public void loadInterscrollerAd(MediationBannerAdConfiguration adConfiguration, MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support interscroller ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public void loadInterstitialAd(MediationInterstitialAdConfiguration adConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support interstitial ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public void loadNativeAd(MediationNativeAdConfiguration adConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support native ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public void loadNativeAdMapper(MediationNativeAdConfiguration adConfiguration, MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        throw new IllegalStateException(ERROR_MESSAGE_METHOD_NOT_FOUND);
    }

    public void loadRewardedAd(MediationRewardedAdConfiguration adConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support rewarded ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public void loadRewardedInterstitialAd(MediationRewardedAdConfiguration adConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.a.d(), getClass().getSimpleName() + " does not support rewarded interstitial ads.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }
}
