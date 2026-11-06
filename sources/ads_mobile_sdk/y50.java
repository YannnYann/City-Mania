package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y50 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        l53 resetPaidGmsgHandler = (l53) this.a.get();
        Intrinsics.checkNotNullParameter(resetPaidGmsgHandler, "resetPaidGmsgHandler");
        return new i50(resetPaidGmsgHandler);
    }

    public y50(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
