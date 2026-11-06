package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class b04 extends yr1 implements a04 {
    public final r31 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b04(r31 gmaWebView, g83 rootTraceCreator, ks3 traceMetaSet, o21 gmaUtil, CoroutineScope backgroundScope, ex0 flags) {
        super(rootTraceCreator, traceMetaSet, gmaUtil, backgroundScope, flags);
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.j = gmaWebView;
    }

    @Override // ads_mobile_sdk.a04
    public final r31 a() {
        return this.j;
    }
}
