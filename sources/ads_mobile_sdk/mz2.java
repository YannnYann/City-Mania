package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.gson.Gson;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class mz2 extends yx2 {
    public final cw2 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mz2(dw2 componentProvider, yf3 signalGenerationMap, p70 cryptoUtil, String adString, CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, Gson gson, e01 httpClient, vw3 urlPinger, SharedFlow cancellationChannel, qn appState) {
        super(signalGenerationMap, cryptoUtil, adString, gson, httpClient, urlPinger, loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(signalGenerationMap, "signalGenerationMap");
        Intrinsics.checkNotNullParameter(cryptoUtil, "cryptoUtil");
        Intrinsics.checkNotNullParameter(adString, "adString");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.y = componentProvider;
    }

    @Override // ads_mobile_sdk.yx2
    public final Object a(String str, tf3 tf3Var, vx2 vx2Var) {
        SignalRequest signalRequest = tf3Var.b;
        if (!(signalRequest instanceof InterstitialSignalRequest)) {
            return FlowKt.flowOf(new Pair(yx2.v, null));
        }
        Object obj = this.y.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        og0 og0Var = (og0) ((rk1) a((mj1) obj, signalRequest, str, tf3Var));
        kq2.a(og0Var.b, tf3.class);
        kq2.a(og0Var.c, String.class);
        kq2.a(og0Var.d, BaseRequest.class);
        kq2.a(og0Var.e, j53.class);
        kq2.a(og0Var.f, Boolean.class);
        kq2.a(og0Var.g, n03.class);
        kq2.a(og0Var.h, tn1.class);
        kq2.a(og0Var.i, md1.class);
        return ((si1) ((mi1) new pg0(og0Var.a, og0Var.b, og0Var.c, og0Var.d, og0Var.e, og0Var.f, og0Var.g, og0Var.h, og0Var.i).A.get())).a(vx2Var);
    }
}
