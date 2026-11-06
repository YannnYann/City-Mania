package com.google.android.libraries.ads.mobile.sdk;

import ads_mobile_sdk.a01;
import ads_mobile_sdk.ag0;
import ads_mobile_sdk.aj0;
import ads_mobile_sdk.au;
import ads_mobile_sdk.bu;
import ads_mobile_sdk.cm1;
import ads_mobile_sdk.ee0;
import ads_mobile_sdk.eh3;
import ads_mobile_sdk.h01;
import ads_mobile_sdk.i01;
import ads_mobile_sdk.jl1;
import ads_mobile_sdk.l43;
import ads_mobile_sdk.q01;
import ads_mobile_sdk.qh0;
import ads_mobile_sdk.rf3;
import ads_mobile_sdk.ui0;
import ads_mobile_sdk.ul1;
import ads_mobile_sdk.vf0;
import ads_mobile_sdk.zz0;
import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.VersionInfo;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalError;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialSignalRequest;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
public final class MobileAds {
    public static final Companion Companion = new Companion(0);
    public static final Object a = new Object();
    public static volatile boolean b;

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        public final RequestConfiguration getRequestConfiguration() {
            a01.a.getClass();
            return ((l43) ((vf0) zz0.a()).J0.get()).a();
        }

        public final VersionInfo getVersion() {
            bu buVar = au.a;
            return new VersionInfo(1, 5, 0);
        }

        public final void initialize(Context context, InitializationConfig initializationConfig) throws InterruptedException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(initializationConfig, "initializationConfig");
            initialize(context, initializationConfig, null);
        }

        public final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
            Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
            a01.a.getClass();
            ((l43) ((vf0) zz0.a()).J0.get()).a(requestConfiguration);
        }

        public Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static eh3 a(SignalRequest signalRequest) {
            rf3 ui0Var;
            if (signalRequest instanceof BannerSignalRequest) {
                a01.a.getClass();
                ee0 ee0Var = new ee0(((vf0) zz0.a()).c);
                BannerRequest bannerRequest = (BannerRequest) signalRequest;
                bannerRequest.getClass();
                ee0Var.f = bannerRequest;
                ui0Var = ee0Var;
            } else if (signalRequest instanceof NativeSignalRequest) {
                a01.a.getClass();
                qh0 qh0Var = new qh0(((vf0) zz0.a()).c);
                NativeRequest nativeRequest = (NativeRequest) signalRequest;
                nativeRequest.getClass();
                qh0Var.f = nativeRequest;
                ui0Var = qh0Var;
            } else if (signalRequest instanceof IconSignalRequest) {
                a01.a.getClass();
                ag0 ag0Var = new ag0(((vf0) zz0.a()).c);
                IconRequest iconRequest = (IconRequest) signalRequest;
                iconRequest.getClass();
                ag0Var.g = iconRequest;
                IconSignalRequest iconSignalRequest = (IconSignalRequest) signalRequest;
                Intrinsics.checkNotNullParameter(iconSignalRequest, "<this>");
                NativeSignalRequest.Builder nativeAdTypes = new NativeSignalRequest.Builder(iconSignalRequest.getSignalType()).setNativeAdTypes(CollectionsKt__CollectionsJVMKt.listOf(NativeAd.NativeAdType.NATIVE));
                if (iconSignalRequest.isImageLoadingDisabled()) {
                    nativeAdTypes.disableImageDownloading();
                }
                nativeAdTypes.setAdChoicesPlacement(iconSignalRequest.getAdChoicesPlacement());
                NativeSignalRequest nativeSignalRequestBuild = nativeAdTypes.build();
                nativeSignalRequestBuild.getClass();
                ag0Var.f = nativeSignalRequestBuild;
                ui0Var = ag0Var;
            } else if (signalRequest instanceof SwipeableInterstitialSignalRequest) {
                a01.a.getClass();
                aj0 aj0Var = new aj0(((vf0) zz0.a()).c);
                SwipeableInterstitialRequest swipeableInterstitialRequest = (SwipeableInterstitialRequest) signalRequest;
                swipeableInterstitialRequest.getClass();
                aj0Var.f = swipeableInterstitialRequest;
                ui0Var = aj0Var;
            } else {
                a01.a.getClass();
                ui0Var = new ui0(((vf0) zz0.a()).c);
            }
            return ui0Var.a((BaseRequest) signalRequest).a(signalRequest).c().b().a().a();
        }

        public final void initialize(Context context, InitializationConfig initializationConfig, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener) throws InterruptedException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(initializationConfig, "initializationConfig");
            a01.a.getClass();
            vf0 vf0Var = (vf0) zz0.a(context, initializationConfig, true);
            ((l43) vf0Var.J0.get()).a(initializationConfig.getRequestConfiguration());
            cm1 cm1Var = (cm1) vf0Var.q3.get();
            cm1Var.getClass();
            BuildersKt__BuildersKt.runBlocking$default(null, new ul1(cm1Var, onAdapterInitializationCompleteListener, null), 1, null);
            synchronized (MobileAds.a) {
                MobileAds.b = true;
                Unit unit = Unit.INSTANCE;
            }
        }

        public final void generateSignal(SignalRequest request, SignalGenerationCallback callback) {
            Object objA;
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(callback, "callback");
            a01.a.getClass();
            ((cm1) ((vf0) zz0.a()).q3.get()).getClass();
            Intrinsics.checkNotNullParameter(request, "request");
            if (!(request instanceof NativeSignalRequest)) {
                objA = new q01(Unit.INSTANCE);
            } else {
                NativeSignalRequest nativeSignalRequest = (NativeSignalRequest) request;
                List<NativeAd.NativeAdType> nativeAdTypes = nativeSignalRequest.getNativeAdTypes();
                if (nativeAdTypes.isEmpty()) {
                    objA = new q01(Unit.INSTANCE);
                } else {
                    objA = jl1.a(nativeAdTypes, nativeSignalRequest.getCustomFormatIds(), nativeSignalRequest.getAdSize(), null);
                }
            }
            if (objA instanceof i01) {
                callback.onFailure(new SignalError(SignalError.ErrorCode.INVALID_REQUEST, h01.a((i01) objA)));
                return;
            }
            ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new b(a(request), callback, null));
        }
    }

    public static final void generateSignal(SignalRequest signalRequest, SignalGenerationCallback signalGenerationCallback) {
        Companion.generateSignal(signalRequest, signalGenerationCallback);
    }

    public static final VersionInfo getVersion() {
        return Companion.getVersion();
    }

    public static final void initialize(Context context, InitializationConfig initializationConfig) throws InterruptedException {
        Companion.initialize(context, initializationConfig);
    }

    public static final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        Companion.setRequestConfiguration(requestConfiguration);
    }

    public static final void initialize(Context context, InitializationConfig initializationConfig, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener) throws InterruptedException {
        Companion.initialize(context, initializationConfig, onAdapterInitializationCompleteListener);
    }
}
