package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x63 implements rf {
    public final j53 a;
    public final BaseRequest b;
    public final l43 c;
    public final Context d;
    public final f0 e;
    public final hm0 f;
    public final cw2 g;

    public x63(j53 requestType, BaseRequest baseRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 rewardedAdComponentProvider) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(rewardedAdComponentProvider, "rewardedAdComponentProvider");
        this.a = requestType;
        this.b = baseRequest;
        this.c = requestConfigurationWrapper;
        this.d = context;
        this.e = activityTracker;
        this.f = delegatingThirdPartyEventEmitter;
        this.g = rewardedAdComponentProvider;
    }

    @Override // ads_mobile_sdk.rf
    public final void a(ec3 transaction, i2 config, jf jfVar, do3 listener) {
        qv1 adapter = (qv1) jfVar;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.a == j53.k) {
            Context context = this.d;
            BaseRequest baseRequest = this.b;
            RequestConfiguration requestConfiguration = this.c.a();
            JsonObject serverParameterData = config.c;
            hm0 delegatingThirdPartyEventEmitter = this.f;
            adapter.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
            Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
            Intrinsics.checkNotNullParameter(serverParameterData, "serverParameterData");
            Intrinsics.checkNotNullParameter(listener, "mediationAdLoadListener");
            Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
            Adapter adapter2 = adapter.a;
            MediationRewardedAdConfiguration mediationRewardedAdConfiguration = new MediationRewardedAdConfiguration(context, "", hw1.a(serverParameterData), hw1.a(baseRequest, adapter.a), requestConfiguration.isTestDevice(context), null, requestConfiguration.getTagForChildDirectedTreatment().getValue(), requestConfiguration.getTagForUnderAgeOfConsent().getValue(), hw1.a(serverParameterData, requestConfiguration), "");
            pv1 setRewardedAd = new pv1(adapter);
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
            Intrinsics.checkNotNullParameter(setRewardedAd, "setRewardedAd");
            adapter2.loadRewardedInterstitialAd(mediationRewardedAdConfiguration, new ew1(delegatingThirdPartyEventEmitter, listener, setRewardedAd));
            return;
        }
        Context contextG = this.e.g();
        if (contextG == null) {
            contextG = this.d;
        }
        Context context2 = contextG;
        BaseRequest baseRequest2 = this.b;
        RequestConfiguration requestConfiguration2 = this.c.a();
        JsonObject serverParameterData2 = config.c;
        hm0 delegatingThirdPartyEventEmitter2 = this.f;
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context2, "context");
        Intrinsics.checkNotNullParameter(baseRequest2, "baseRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration2, "requestConfiguration");
        Intrinsics.checkNotNullParameter(serverParameterData2, "serverParameterData");
        Intrinsics.checkNotNullParameter(listener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter2, "delegatingThirdPartyEventEmitter");
        Adapter adapter3 = adapter.a;
        MediationRewardedAdConfiguration mediationRewardedAdConfiguration2 = new MediationRewardedAdConfiguration(context2, "", hw1.a(serverParameterData2), hw1.a(baseRequest2, adapter.a), requestConfiguration2.isTestDevice(context2), null, requestConfiguration2.getTagForChildDirectedTreatment().getValue(), requestConfiguration2.getTagForUnderAgeOfConsent().getValue(), hw1.a(serverParameterData2, requestConfiguration2), "");
        ov1 setRewardedAd2 = new ov1(adapter);
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter2, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(setRewardedAd2, "setRewardedAd");
        adapter3.loadRewardedAd(mediationRewardedAdConfiguration2, new ew1(delegatingThirdPartyEventEmitter2, listener, setRewardedAd2));
    }

    @Override // ads_mobile_sdk.rf
    public final hq3 a(ec3 transaction, i2 config, final qv1 adapter) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        hq3 hq3Var = (hq3) this.g.get();
        np3 np3Var = new np3() { // from class: ads_mobile_sdk.x63$$ExternalSyntheticLambda0
            @Override // ads_mobile_sdk.np3
            public final void showAd(Context context) {
                x63.a(adapter, this, context);
            }
        };
        kj0 kj0Var = (kj0) hq3Var;
        kj0Var.getClass();
        kj0Var.p = np3Var;
        return kj0Var;
    }

    public static final void a(qv1 adapter, x63 this$0, Context context) {
        Intrinsics.checkNotNullParameter(adapter, "$adapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "showContext");
        MediationRewardedAd mediationRewardedAd = null;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            context = activity;
        } else {
            Activity activityG = this$0.e.g();
            if (activityG != null) {
                context = activityG;
            }
        }
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        MediationRewardedAd mediationRewardedAd2 = adapter.e;
        if (mediationRewardedAd2 != null) {
            mediationRewardedAd = mediationRewardedAd2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("rewardedAd");
        }
        mediationRewardedAd.showAd(context);
    }
}
