package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class c22 extends n2 {
    public final mb0 l;
    public final cw2 m;
    public final cw2 n;
    public final t52 o;
    public final g12 p;
    public final NativeRequest q;
    public final bq2 r;
    public final g83 s;
    public final CoroutineScope t;
    public final int u;
    public final cw2 v;

    /* JADX WARN: Illegal instructions before constructor call */
    public c22(mb0 csiTicker, dw2 adComponentProvider, dw2 mediaAdComponentProvider, t52 nativeJavascriptEngineFactory, g12 nativeAdAssetsFactory, NativeRequest nativeRequest, bq2 preRenderNativeJavascriptEngineConfigurator, g83 rootTraceCreator, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, CoroutineScope backgroundScope, int i2, dw2 placementIdWrapperProvider) {
        Intrinsics.checkNotNullParameter(csiTicker, "csiTicker");
        Intrinsics.checkNotNullParameter(adComponentProvider, "adComponentProvider");
        Intrinsics.checkNotNullParameter(mediaAdComponentProvider, "mediaAdComponentProvider");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngineFactory, "nativeJavascriptEngineFactory");
        Intrinsics.checkNotNullParameter(nativeAdAssetsFactory, "nativeAdAssetsFactory");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(preRenderNativeJavascriptEngineConfigurator, "preRenderNativeJavascriptEngineConfigurator");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(placementIdWrapperProvider, "placementIdWrapperProvider");
        Object obj = placementIdWrapperProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, (eo2) obj);
        this.l = csiTicker;
        this.m = adComponentProvider;
        this.n = mediaAdComponentProvider;
        this.o = nativeJavascriptEngineFactory;
        this.p = nativeAdAssetsFactory;
        this.q = nativeRequest;
        this.r = preRenderNativeJavascriptEngineConfigurator;
        this.s = rootTraceCreator;
        this.t = backgroundScope;
        this.u = i2;
        this.v = placementIdWrapperProvider;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.q52 r6, ads_mobile_sdk.i2 r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.c22.a(ads_mobile_sdk.q52, ads_mobile_sdk.i2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        vc1 vc1Var = this.f.J;
        return (vc1Var != null ? vc1Var.d : null) != null;
    }

    @Override // ads_mobile_sdk.n2
    public final Object a(boolean z, Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00de, code lost:
    
        if (r12 == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f8, code lost:
    
        if (r12 == r1) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.c22 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.c22.a(ads_mobile_sdk.c22, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0275, code lost:
    
        if (r6.a(r5, r3) != r4) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonObject r17, ads_mobile_sdk.q52 r18, com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 648
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.c22.a(com.google.gson.JsonObject, ads_mobile_sdk.q52, com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
