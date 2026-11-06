package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o50 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw clickGmsgHandler = (dw) this.a.get();
        Intrinsics.checkNotNullParameter(clickGmsgHandler, "clickGmsgHandler");
        return new i50(clickGmsgHandler);
    }

    public o50(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
