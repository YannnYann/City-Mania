package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gv0 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        fm0 listener = (fm0) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (q4) kq2.b(listener);
    }

    public gv0(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
