package com.google.android.libraries.ads.mobile.sdk.internal.nativead;

import ads_mobile_sdk.b42;
import ads_mobile_sdk.bn2;
import ads_mobile_sdk.ci1;
import ads_mobile_sdk.eo2;
import ads_mobile_sdk.ex0;
import ads_mobile_sdk.fm0;
import ads_mobile_sdk.hl1;
import ads_mobile_sdk.i2;
import ads_mobile_sdk.j12;
import ads_mobile_sdk.ks3;
import ads_mobile_sdk.nr3;
import ads_mobile_sdk.q02;
import ads_mobile_sdk.s02;
import ads_mobile_sdk.s93;
import ads_mobile_sdk.t32;
import ads_mobile_sdk.ur3;
import ads_mobile_sdk.v3;
import ads_mobile_sdk.yr;
import ads_mobile_sdk.zy;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.Optional;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public class InternalNativeAd extends ci1 {

    @Keep
    private final Optional<PerAdNativeJavscriptEngineJsContext> jsEngineContext;

    @Keep
    private PerAdNativeJavscriptEngineJsContext localJsEngineContext;
    public final CoroutineScope n;
    public final s02 o;
    public final j12 p;
    public final t32 q;
    public final b42 r;
    public final hl1 s;
    public final Gson t;
    public final ur3 u;
    public final ex0 v;
    public final nr3 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalNativeAd(CoroutineScope uiScope, String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional webView, v3 adEventEmitter, fm0 delegatingAdListener, s02 nativeAdAssets, j12 nativeAdCore, t32 nativeAdViewPopulator, b42 nativeAdViewabilityTracker, hl1 internalMediaContent, Optional jsEngineContext, bn2 phantomReferences, s93 safeBrowsingManager, Gson gson, ur3 traceLogger, eo2 placementIdWrapper, ex0 flags, BaseRequest baseRequest, nr3 nr3Var) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, webView, adEventEmitter, delegatingAdListener, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(delegatingAdListener, "delegatingAdListener");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeAdViewPopulator, "nativeAdViewPopulator");
        Intrinsics.checkNotNullParameter(nativeAdViewabilityTracker, "nativeAdViewabilityTracker");
        Intrinsics.checkNotNullParameter(internalMediaContent, "internalMediaContent");
        Intrinsics.checkNotNullParameter(jsEngineContext, "jsEngineContext");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.n = uiScope;
        this.o = nativeAdAssets;
        this.p = nativeAdCore;
        this.q = nativeAdViewPopulator;
        this.r = nativeAdViewabilityTracker;
        this.s = internalMediaContent;
        this.jsEngineContext = jsEngineContext;
        this.t = gson;
        this.u = traceLogger;
        this.v = flags;
        this.w = nr3Var;
        this.localJsEngineContext = (PerAdNativeJavscriptEngineJsContext) OptionalsKt.getOrNull(jsEngineContext);
    }

    @Override // ads_mobile_sdk.ci1, ads_mobile_sdk.zh1
    public final Object a(Continuation continuation) {
        this.localJsEngineContext = (PerAdNativeJavscriptEngineJsContext) OptionalsKt.getOrNull(this.jsEngineContext);
        Object objA = super.a(continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ci1, ads_mobile_sdk.zh1
    public final void destroy() {
        super.destroy();
        this.p.a();
    }

    @Override // ads_mobile_sdk.ci1, ads_mobile_sdk.zh1
    public final JsonObject g() {
        return this.o.w;
    }

    public final void m() {
        List list = this.o.p;
    }

    public final void v() {
        this.p.k();
    }

    public final boolean w() {
        ex0 ex0Var = this.v;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native_ad_view:on_intercept_touch_event:enabled", C3522b4.i.W);
        return ((Boolean) ex0Var.a("gads:native_ad_view:on_intercept_touch_event:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean y() {
        ex0 ex0Var = this.v;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:report_touch_event_on_intercept_touch:enabled", C3522b4.i.W);
        return ((Boolean) ex0Var.a("gads:report_touch_event_on_intercept_touch:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final void a(ViewGroup mediaViewContainer) {
        Intrinsics.checkNotNullParameter(mediaViewContainer, "mediaViewContainer");
        if (this.o.b != q02.b || this.q.a(mediaViewContainer)) {
            return;
        }
        mediaViewContainer.removeAllViews();
    }

    public final s02 q() {
        return this.o;
    }

    public final j12 r() {
        return this.p;
    }

    public final t32 s() {
        return this.q;
    }

    public final b42 t() {
        return this.r;
    }

    public final hl1 p() {
        return this.s;
    }

    public final nr3 o() {
        return this.w;
    }
}
