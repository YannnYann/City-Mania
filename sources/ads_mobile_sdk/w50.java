package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w50 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        jy1 mraidLoadedGmsgHandler = (jy1) this.a.get();
        Intrinsics.checkNotNullParameter(mraidLoadedGmsgHandler, "mraidLoadedGmsgHandler");
        return new i50(mraidLoadedGmsgHandler);
    }

    public w50(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
