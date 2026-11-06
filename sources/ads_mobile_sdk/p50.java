package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p50 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ll0 delayPageLoadedGmsgHandler = (ll0) this.a.get();
        Intrinsics.checkNotNullParameter(delayPageLoadedGmsgHandler, "delayPageLoadedGmsgHandler");
        return new i50(delayPageLoadedGmsgHandler);
    }

    public p50(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
