package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ep implements rf {
    public final BaseRequest a;
    public final BannerRequest b;
    public final l43 c;
    public final Context d;
    public final f0 e;
    public final hm0 f;
    public final cw2 g;
    public final g33 h;

    public ep(BaseRequest baseRequest, BannerRequest bannerRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 bannerAdComponentProvider, g33 refreshListener) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(bannerRequest, "bannerRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(bannerAdComponentProvider, "bannerAdComponentProvider");
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = baseRequest;
        this.b = bannerRequest;
        this.c = requestConfigurationWrapper;
        this.d = context;
        this.e = activityTracker;
        this.f = delegatingThirdPartyEventEmitter;
        this.g = bannerAdComponentProvider;
        this.h = refreshListener;
    }

    @Override // ads_mobile_sdk.rf
    public final void a(ec3 transaction, i2 config, jf jfVar, do3 listener) {
        qv1 adapter = (qv1) jfVar;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        AdSize adSize = this.b.getAdSize();
        if (adSize == null) {
            listener.a(new AdError(0, "No AdSize available for banner mediation. This may happen when a server-to-server ad response triggers mediation but no AdSize was provided in the signal request.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
            return;
        }
        Context contextG = this.e.g();
        if (contextG == null) {
            contextG = this.d;
        }
        Context context = contextG;
        BaseRequest baseRequest = this.a;
        RequestConfiguration requestConfiguration = this.c.a();
        JsonObject serverParameterData = config.c;
        hm0 delegatingThirdPartyEventEmitter = this.f;
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        Intrinsics.checkNotNullParameter(serverParameterData, "serverParameterData");
        Intrinsics.checkNotNullParameter(listener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Adapter adapter2 = adapter.a;
        Bundle bundleA = hw1.a(serverParameterData);
        Bundle bundleA2 = hw1.a(baseRequest, adapter.a);
        boolean zIsTestDevice = requestConfiguration.isTestDevice(context);
        int value = requestConfiguration.getTagForChildDirectedTreatment().getValue();
        int value2 = requestConfiguration.getTagForUnderAgeOfConsent().getValue();
        String strA = hw1.a(serverParameterData, requestConfiguration);
        int width = adSize.getWidth();
        int height = adSize.getHeight();
        String formatString = adSize.getFormatString();
        boolean zIsAnchoredAdaptiveBanner = adSize.isAnchoredAdaptiveBanner();
        boolean zIsInlineAdaptiveBanner = adSize.isInlineAdaptiveBanner();
        int height2 = adSize.getHeight();
        Intrinsics.checkNotNullParameter(formatString, "formatString");
        MediationBannerAdConfiguration mediationBannerAdConfiguration = new MediationBannerAdConfiguration(context, "", bundleA, bundleA2, zIsTestDevice, null, value, value2, strA, new com.google.android.gms.ads.AdSize(width, height, formatString, zIsAnchoredAdaptiveBanner, zIsInlineAdaptiveBanner, height2), "");
        kv1 setAdView = new kv1(adapter);
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(setAdView, "setAdView");
        adapter2.loadBannerAd(mediationBannerAdConfiguration, new yv1(delegatingThirdPartyEventEmitter, listener, setAdView));
    }

    @Override // ads_mobile_sdk.rf
    public final void a(x1 x1Var) {
        mo3 adComponent = (mo3) x1Var;
        Intrinsics.checkNotNullParameter(adComponent, "adComponent");
        ((od) ((fj0) adComponent).Q.get()).getClass();
    }

    @Override // ads_mobile_sdk.rf
    public final w1 a(ec3 transaction, i2 config, Object obj) {
        qv1 adapter = (qv1) obj;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        lo3 lo3Var = (lo3) this.g.get();
        View view = adapter.b;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("view");
            view = null;
        }
        ej0 ej0Var = (ej0) lo3Var;
        ej0Var.getClass();
        view.getClass();
        ej0Var.q = view;
        g33 g33Var = this.h;
        g33Var.getClass();
        ej0Var.p = g33Var;
        return ej0Var;
    }
}
