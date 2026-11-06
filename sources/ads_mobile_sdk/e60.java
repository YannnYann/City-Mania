package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e60 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        kt1 logScionEventGmsgHandler = (kt1) this.a.get();
        Intrinsics.checkNotNullParameter(logScionEventGmsgHandler, "logScionEventGmsgHandler");
        return new i50(logScionEventGmsgHandler);
    }

    public e60(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
