package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i60 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ry1 mraidRequestHandler = (ry1) this.a.get();
        Intrinsics.checkNotNullParameter(mraidRequestHandler, "mraidRequestHandler");
        return new y40(mraidRequestHandler);
    }

    public i60(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
