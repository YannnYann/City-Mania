package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class bs {
    public final String a;
    public final int b;
    public final ks3 c;
    public final ej1 d;

    public bs(String requestId, int i, ks3 traceMetaSet, ej1 internalAdRequestEventEmitter) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        this.a = requestId;
        this.b = i;
        this.c = traceMetaSet;
        this.d = internalAdRequestEventEmitter;
    }
}
