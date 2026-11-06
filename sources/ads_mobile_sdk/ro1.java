package ads_mobile_sdk;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ro1 implements rf {
    public final BaseRequest a;
    public final l43 b;
    public final Context c;
    public final f0 d;
    public final hm0 e;
    public final cw2 f;

    public ro1(BaseRequest baseRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 interstitialAdComponentProvider) {
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
        rc2 adapter = (rc2) jfVar;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Context contextG = this.d.g();
        if (contextG == null) {
            contextG = this.c;
        }
        adapter.a(contextG, this.a, this.b.a(), config.c, listener, this.e);
    }

    @Override // ads_mobile_sdk.rf
    public final op3 a(ec3 transaction, i2 config, final rc2 adapter) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        op3 op3Var = (op3) this.f.get();
        np3 np3Var = new np3() { // from class: ads_mobile_sdk.ro1$$ExternalSyntheticLambda0
            @Override // ads_mobile_sdk.np3
            public final void showAd(Context context) {
                ro1.a(adapter, context);
            }
        };
        gj0 gj0Var = (gj0) op3Var;
        gj0Var.getClass();
        gj0Var.p = np3Var;
        return gj0Var;
    }

    public static final void a(rc2 adapter, Context context) {
        Intrinsics.checkNotNullParameter(adapter, "$adapter");
        Intrinsics.checkNotNullParameter(context, "<anonymous parameter 0>");
        MediationInterstitialAdapter mediationInterstitialAdapter = adapter.d;
        if (mediationInterstitialAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("interstitialAd");
            mediationInterstitialAdapter = null;
        }
        mediationInterstitialAdapter.showInterstitial();
    }
}
