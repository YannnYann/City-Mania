package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class si1 extends bs implements mi1 {
    public final pb e;
    public final nt3 f;
    public final vi2 g;
    public final ks3 h;
    public final ex0 i;
    public final ji1 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si1(String requestId, int i, pb adSourceResponseInfoCollector, nt3 transactionRequester, vi2 transactionRenderer, ks3 traceMetaSet, ej1 internalAdRequestEventEmitter, ex0 flags, ji1 internalAdLoadEventEmitter) {
        super(requestId, i, traceMetaSet, internalAdRequestEventEmitter);
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        Intrinsics.checkNotNullParameter(transactionRequester, "transactionRequester");
        Intrinsics.checkNotNullParameter(transactionRenderer, "transactionRenderer");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(internalAdLoadEventEmitter, "internalAdLoadEventEmitter");
        this.e = adSourceResponseInfoCollector;
        this.f = transactionRequester;
        this.g = transactionRenderer;
        this.h = traceMetaSet;
        this.i = flags;
        this.j = internalAdLoadEventEmitter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v8, types: [ads_mobile_sdk.si1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.si1.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
