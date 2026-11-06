package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jp1 implements rf {
    public final BaseRequest a;
    public final l43 b;
    public final Context c;
    public final f0 d;
    public final hm0 e;
    public final cw2 f;

    public jp1(BaseRequest baseRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 interstitialAdComponentProvider) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(interstitialAdComponentProvider, "interstitialAdComponentProvider");
        this.a = baseRequest;
        this.b = requestConfigurationWrapper;
        this.c = context;
        this.d = activityTracker;
        this.e = delegatingThirdPartyEventEmitter;
        this.f = interstitialAdComponentProvider;
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
        BaseRequest baseRequest = this.a;
        RequestConfiguration requestConfiguration = this.b.a();
        hm0 delegatingThirdPartyEventEmitter = this.e;
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        RtbAdapter rtbAdapter = adapter.b;
        MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration = new MediationInterstitialAdConfiguration(context, config.r, hw1.a(config.c), hw1.a(baseRequest, adapter.a), requestConfiguration.isTestDevice(context), null, requestConfiguration.getTagForChildDirectedTreatment().getValue(), requestConfiguration.getTagForUnderAgeOfConsent().getValue(), hw1.a(config.c, requestConfiguration), "");
        p83 setInterstitialAd = new p83(adapter);
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(setInterstitialAd, "setInterstitialAd");
        rtbAdapter.loadRtbInterstitialAd(mediationInterstitialAdConfiguration, new aw1(delegatingThirdPartyEventEmitter, listener, setInterstitialAd));
    }

    @Override // ads_mobile_sdk.rf
    public final op3 a(ec3 transaction, i2 config, final u83 adapter) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        op3 op3Var = (op3) this.f.get();
        np3 np3Var = new np3() { // from class: ads_mobile_sdk.jp1$$ExternalSyntheticLambda0
            @Override // ads_mobile_sdk.np3
            public final void showAd(Context context) {
                jp1.a(adapter, this, context);
            }
        };
        gj0 gj0Var = (gj0) op3Var;
        gj0Var.getClass();
        gj0Var.p = np3Var;
        return gj0Var;
    }

    public static final void a(u83 adapter, jp1 this$0, Context context) {
        Intrinsics.checkNotNullParameter(adapter, "$adapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "showContext");
        MediationInterstitialAd mediationInterstitialAd = null;
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
            MediationInterstitialAd mediationInterstitialAd2 = adapter.e;
            if (mediationInterstitialAd2 != null) {
                mediationInterstitialAd = mediationInterstitialAd2;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("interstitialAd");
            }
            mediationInterstitialAd.showAd(context);
            Unit unit = Unit.INSTANCE;
        }
    }
}
