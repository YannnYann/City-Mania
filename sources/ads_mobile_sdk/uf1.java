package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uf1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        td1 backButtonGmsgHandler = (td1) this.a.get();
        Intrinsics.checkNotNullParameter(backButtonGmsgHandler, "backButtonGmsgHandler");
        return new mf1(backButtonGmsgHandler);
    }

    public uf1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
