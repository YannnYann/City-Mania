package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class d42 implements rf {
    public final BaseRequest a;
    public final NativeRequest b;
    public final l43 c;
    public final Context d;
    public final f0 e;
    public final hm0 f;
    public final cw2 g;

    public d42(BaseRequest baseRequest, NativeRequest nativeRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 nativeAdComponentProvider) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(nativeAdComponentProvider, "nativeAdComponentProvider");
        this.a = baseRequest;
        this.b = nativeRequest;
        this.c = requestConfigurationWrapper;
        this.d = context;
        this.e = activityTracker;
        this.f = delegatingThirdPartyEventEmitter;
        this.g = nativeAdComponentProvider;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    @Override // ads_mobile_sdk.rf
    public final void a(ec3 transaction, i2 config, jf jfVar, do3 listener) {
        BaseRequest baseRequest;
        NativeRequest nativeRequest;
        RequestConfiguration requestConfiguration;
        JsonObject jsonObject;
        hm0 hm0Var;
        String str;
        qv1 adapter = (qv1) jfVar;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Context contextG = this.e.g();
        if (contextG == null) {
            contextG = this.d;
        }
        Context context = contextG;
        BaseRequest baseRequest2 = this.a;
        NativeRequest nativeRequest2 = this.b;
        RequestConfiguration requestConfiguration2 = this.c.a();
        JsonObject adapterData = config.c;
        hm0 delegatingThirdPartyEventEmitter = this.f;
        adapter.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(baseRequest2, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeRequest2, "nativeRequest");
        Intrinsics.checkNotNullParameter(requestConfiguration2, "requestConfiguration");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        Intrinsics.checkNotNullParameter(listener, "mediationAdLoadListener");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        try {
            Adapter adapter2 = adapter.a;
            try {
                Bundle bundleA = hw1.a(adapterData);
                Bundle bundleA2 = hw1.a(baseRequest2, adapter.a);
                try {
                    try {
                        requestConfiguration = requestConfiguration2;
                        try {
                            nativeRequest = nativeRequest2;
                            jsonObject = adapterData;
                            hm0Var = delegatingThirdPartyEventEmitter;
                            baseRequest = baseRequest2;
                            str = "delegatingThirdPartyEventEmitter";
                            try {
                                MediationNativeAdConfiguration mediationNativeAdConfiguration = new MediationNativeAdConfiguration(context, "", bundleA, bundleA2, requestConfiguration2.isTestDevice(context), null, requestConfiguration2.getTagForChildDirectedTreatment().getValue(), requestConfiguration2.getTagForUnderAgeOfConsent().getValue(), hw1.a(adapterData, requestConfiguration2), "", hw1.a(nativeRequest2));
                                mv1 setNativeAdMapper = new mv1(adapter);
                                Intrinsics.checkNotNullParameter(listener, "listener");
                                Intrinsics.checkNotNullParameter(hm0Var, str);
                                Intrinsics.checkNotNullParameter(setNativeAdMapper, "setNativeAdMapper");
                                adapter2.loadNativeAdMapper(mediationNativeAdConfiguration, new cw1(hm0Var, listener, setNativeAdMapper));
                            } catch (IllegalStateException e) {
                                e = e;
                                if (!StringsKt__StringsJVMKt.equals$default(e.getMessage(), Adapter.ERROR_MESSAGE_METHOD_NOT_FOUND, false, 2, null)) {
                                    throw e;
                                }
                                Adapter adapter3 = adapter.a;
                                RequestConfiguration requestConfiguration3 = requestConfiguration;
                                MediationNativeAdConfiguration mediationNativeAdConfiguration2 = new MediationNativeAdConfiguration(context, "", hw1.a(jsonObject), hw1.a(baseRequest, adapter.a), requestConfiguration3.isTestDevice(context), null, requestConfiguration3.getTagForChildDirectedTreatment().getValue(), requestConfiguration3.getTagForUnderAgeOfConsent().getValue(), hw1.a(jsonObject, requestConfiguration3), "", hw1.a(nativeRequest));
                                nv1 setUnifiedNativeAdMapper = new nv1(adapter);
                                Intrinsics.checkNotNullParameter(listener, "listener");
                                Intrinsics.checkNotNullParameter(hm0Var, str);
                                Intrinsics.checkNotNullParameter(setUnifiedNativeAdMapper, "setUnifiedNativeAdMapper");
                                adapter3.loadNativeAd(mediationNativeAdConfiguration2, new gw1(hm0Var, listener, setUnifiedNativeAdMapper));
                            }
                        } catch (IllegalStateException e2) {
                            e = e2;
                            baseRequest = baseRequest2;
                            jsonObject = adapterData;
                            nativeRequest = nativeRequest2;
                            hm0Var = delegatingThirdPartyEventEmitter;
                            str = "delegatingThirdPartyEventEmitter";
                        }
                    } catch (IllegalStateException e3) {
                        e = e3;
                        baseRequest = baseRequest2;
                        requestConfiguration = requestConfiguration2;
                        jsonObject = adapterData;
                        nativeRequest = nativeRequest2;
                        str = "delegatingThirdPartyEventEmitter";
                        hm0Var = delegatingThirdPartyEventEmitter;
                    }
                } catch (IllegalStateException e4) {
                    e = e4;
                    baseRequest = baseRequest2;
                    requestConfiguration = requestConfiguration2;
                    jsonObject = adapterData;
                    hm0Var = delegatingThirdPartyEventEmitter;
                    nativeRequest = nativeRequest2;
                    str = "delegatingThirdPartyEventEmitter";
                }
            } catch (IllegalStateException e5) {
                e = e5;
                baseRequest = baseRequest2;
                requestConfiguration = requestConfiguration2;
                jsonObject = adapterData;
                hm0Var = delegatingThirdPartyEventEmitter;
                str = "delegatingThirdPartyEventEmitter";
                nativeRequest = nativeRequest2;
            }
        } catch (IllegalStateException e6) {
            e = e6;
            baseRequest = baseRequest2;
            nativeRequest = nativeRequest2;
            requestConfiguration = requestConfiguration2;
            jsonObject = adapterData;
            hm0Var = delegatingThirdPartyEventEmitter;
            str = "delegatingThirdPartyEventEmitter";
        }
    }

    @Override // ads_mobile_sdk.rf
    public final w1 a(ec3 transaction, i2 config, Object obj) {
        qv1 adapter = (qv1) obj;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        pp3 pp3Var = (pp3) this.g.get();
        p12 p12Var = adapter.c;
        p12 p12Var2 = null;
        if (p12Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdMapper");
            p12Var = null;
        }
        ij0 ij0Var = (ij0) pp3Var;
        ij0Var.getClass();
        p12Var.getClass();
        ij0Var.p = p12Var;
        p12 p12Var3 = adapter.c;
        if (p12Var3 != null) {
            p12Var2 = p12Var3;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdMapper");
        }
        ij0Var.q = r02.a(p12Var2, this.b.getAdChoicesPlacement());
        return ij0Var;
    }
}
