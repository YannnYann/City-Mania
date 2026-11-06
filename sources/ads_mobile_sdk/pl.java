package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pl implements rf {
    public final BaseRequest a;
    public final l43 b;
    public final Context c;
    public final f0 d;
    public final hm0 e;
    public final cw2 f;

    public pl(BaseRequest adRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 appOpenAdComponentProvider) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(appOpenAdComponentProvider, "appOpenAdComponentProvider");
        this.a = adRequest;
        this.b = requestConfigurationWrapper;
        this.c = context;
        this.d = activityTracker;
        this.e = delegatingThirdPartyEventEmitter;
        this.f = appOpenAdComponentProvider;
    }

    @Override // ads_mobile_sdk.rf
    public final void a(ec3 transaction, i2 config, jf jfVar, do3 listener) {
        u83 adapter = (u83) jfVar;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Context contextG = this.d.g();
        if (contextG == null) {
            contextG = this.c;
        }
        Context context = contextG;
        BaseRequest adRequest = this.a;
        RequestConfiguration requestConfiguration = this.b.a();
        hm0 delegatingThirdPartyEventEmitter = this.e;
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        RtbAdapter rtbAdapter = adapter.b;
        MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration = new MediationAppOpenAdConfiguration(context, config.r, hw1.a(config.c), hw1.a(adRequest, adapter.a), requestConfiguration.isTestDevice(context), null, requestConfiguration.getTagForChildDirectedTreatment().getValue(), requestConfiguration.getTagForUnderAgeOfConsent().getValue(), hw1.a(config.c, requestConfiguration), "");
        n83 setAppOpenAd = new n83(adapter);
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(setAppOpenAd, "setAppOpenAd");
        rtbAdapter.loadRtbAppOpenAd(mediationAppOpenAdConfiguration, new wv1(delegatingThirdPartyEventEmitter, listener, setAppOpenAd));
    }

    @Override // ads_mobile_sdk.rf
    public final ko3 a(ec3 transaction, i2 config, final u83 adapter) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        ko3 ko3Var = (ko3) this.f.get();
        np3 np3Var = new np3() { // from class: ads_mobile_sdk.pl$$ExternalSyntheticLambda0
            @Override // ads_mobile_sdk.np3
            public final void showAd(Context context) {
                pl.a(adapter, this, context);
            }
        };
        cj0 cj0Var = (cj0) ko3Var;
        cj0Var.getClass();
        cj0Var.p = np3Var;
        return cj0Var;
    }

    public static final void a(u83 adapter, pl this$0, Context context) {
        Intrinsics.checkNotNullParameter(adapter, "$adapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "showContext");
        MediationAppOpenAd mediationAppOpenAd = null;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            context = activity;
        } else {
            Activity activityG = this$0.d.g();
            if (activityG != null) {
                context = activityG;
            }
        }
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        synchronized (adapter) {
            MediationAppOpenAd mediationAppOpenAd2 = adapter.g;
            if (mediationAppOpenAd2 != null) {
                mediationAppOpenAd = mediationAppOpenAd2;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("appOpenAd");
            }
            mediationAppOpenAd.showAd(context);
            Unit unit = Unit.INSTANCE;
        }
    }
}
