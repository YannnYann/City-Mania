package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class qz2 extends px2 {
    public final NativeAdRequest n;
    public final cw2 o;
    public final int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qz2(CoroutineScope loadScope, CoroutineScope backgroundScope, NativeAdRequest nativeAdRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, dw2 componentProvider, int i, SharedFlow cancellationChannel, qn appState) {
        super(loadScope, backgroundScope, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, nativeAdRequest, z, initializationConfigWrapper, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeAdRequest, "nativeAdRequest");
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
        this.n = nativeAdRequest;
        this.o = componentProvider;
        this.p = i;
    }

    @Override // ads_mobile_sdk.px2
    public final Object b(Continuation continuation) {
        Object obj = this.o.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        ug0 ug0VarD = ((ug0) ((sm1) a((bn1) obj, this.n))).a((NativeRequest) this.n).a(this.p).d(false);
        ug0VarD.o = new pz2();
        return ((si1) ((mi1) ug0VarD.a().K0.get())).a(continuation);
    }
}
