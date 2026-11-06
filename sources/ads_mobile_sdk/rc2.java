package ads_mobile_sdk;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rc2 implements jf {
    public final MediationAdapter a;
    public View b;
    public p12 c;
    public MediationInterstitialAdapter d;

    public rc2(MediationAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.a = adapter;
    }

    public final void a(Context context, AdSize adSize, BaseRequest baseRequest, RequestConfiguration requestConfiguration, JsonObject serverParameterData, bv1 mediationAdLoadListener, hm0 delegatingThirdPartyEventEmitter) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        Intrinsics.checkNotNullParameter(serverParameterData, "serverParameterData");
        Intrinsics.checkNotNullParameter(mediationAdLoadListener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        if (this.a instanceof MediationBannerAdapter) {
            ((MediationBannerAdapter) this.a).requestBannerAd(context, new nc2(delegatingThirdPartyEventEmitter, (do3) mediationAdLoadListener, this), hw1.a(serverParameterData), iv1.a(adSize.getWidth(), adSize.getHeight(), adSize.getFormatString(), adSize.isAnchoredAdaptiveBanner(), adSize.isInlineAdaptiveBanner(), adSize.getHeight()), new hv1(baseRequest.getKeywords(), requestConfiguration.isTestDevice(context), requestConfiguration.getTagForChildDirectedTreatment().getValue(), requestConfiguration.getTagForUnderAgeOfConsent().getValue(), hw1.a(serverParameterData, requestConfiguration)), hw1.a(baseRequest, this.a));
            return;
        }
        ((do3) mediationAdLoadListener).a(new AdError(0, "Failed to cast " + this.a.getClass().getCanonicalName() + " to " + MediationBannerAdapter.class.getCanonicalName() + ". Does " + this.a.getClass().getCanonicalName() + " implement " + MediationBannerAdapter.class.getCanonicalName() + "?", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
    }

    public final void a(Context context, BaseRequest baseRequest, RequestConfiguration requestConfiguration, JsonObject serverParameterData, bv1 mediationAdLoadListener, hm0 delegatingThirdPartyEventEmitter) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        Intrinsics.checkNotNullParameter(serverParameterData, "serverParameterData");
        Intrinsics.checkNotNullParameter(mediationAdLoadListener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        if (!(this.a instanceof MediationInterstitialAdapter)) {
            ((do3) mediationAdLoadListener).a(new AdError(0, "Failed to cast " + this.a.getClass().getCanonicalName() + " to " + MediationInterstitialAdapter.class.getCanonicalName() + ". Does " + this.a.getClass().getCanonicalName() + " implement " + MediationInterstitialAdapter.class.getCanonicalName() + "?", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
            return;
        }
        ((MediationInterstitialAdapter) this.a).requestInterstitialAd(context, new oc2(delegatingThirdPartyEventEmitter, (do3) mediationAdLoadListener, this), hw1.a(serverParameterData), new hv1(baseRequest.getKeywords(), requestConfiguration.isTestDevice(context), requestConfiguration.getTagForChildDirectedTreatment().getValue(), requestConfiguration.getTagForUnderAgeOfConsent().getValue(), hw1.a(serverParameterData, requestConfiguration)), hw1.a(baseRequest, this.a));
    }

    public final void a(Context context, BaseRequest baseRequest, NativeRequest nativeRequest, RequestConfiguration requestConfiguration, JsonObject adapterData, bv1 mediationAdLoadListener, hm0 delegatingThirdPartyEventEmitter) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        Intrinsics.checkNotNullParameter(mediationAdLoadListener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        if (!(this.a instanceof MediationNativeAdapter)) {
            ((do3) mediationAdLoadListener).a(new AdError(0, "Failed to cast " + this.a.getClass().getCanonicalName() + " to " + MediationNativeAdapter.class.getCanonicalName() + ". Does " + this.a.getClass().getCanonicalName() + " implement " + MediationNativeAdapter.class.getCanonicalName() + "?", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
            return;
        }
        ((MediationNativeAdapter) this.a).requestNativeAd(context, new pc2(delegatingThirdPartyEventEmitter, (do3) mediationAdLoadListener, new qc2(this)), hw1.a(adapterData), new a72(baseRequest.getKeywords(), requestConfiguration.isTestDevice(context), requestConfiguration.getTagForChildDirectedTreatment().getValue(), requestConfiguration.getTagForUnderAgeOfConsent().getValue(), hw1.a(adapterData, requestConfiguration), hw1.a(nativeRequest)), hw1.a(baseRequest, this.a));
    }

    @Override // ads_mobile_sdk.jf
    public final Object a(Context context, be beVar, Continuation continuation) {
        return new m01("Old mediation adapters do not implement initialize method.", kk1.a);
    }
}
