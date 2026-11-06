package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ny1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        gx1 mraidAdEventListener = (gx1) this.a.get();
        Intrinsics.checkNotNullParameter(mraidAdEventListener, "mraidAdEventListener");
        return (ai1) kq2.b(mraidAdEventListener);
    }

    public ny1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
