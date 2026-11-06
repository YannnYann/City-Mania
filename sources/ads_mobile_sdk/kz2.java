package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class kz2 extends px2 {
    public final AdRequest n;
    public final cw2 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kz2(AdRequest adRequest, qn appState, j53 requestType, ex0 flags, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, g83 rootTraceCreator, ks3 traceMetaSet, String publisherRequestId, dw2 componentProvider, CoroutineScope loadScope, CoroutineScope backgroundScope, SharedFlow cancellationChannel, boolean z) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, adRequest, z, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.n = adRequest;
        this.o = componentProvider;
    }

    @Override // ads_mobile_sdk.px2
    public final Object b(Continuation continuation) {
        Object obj = this.o.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return ((si1) ((mi1) ((qg0) ((tk1) a((bn1) obj, this.n))).a().D0.get())).a(continuation);
    }
}
