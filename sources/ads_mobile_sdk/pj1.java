package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pj1 implements jr0 {
    public final dw2 a;

    public pj1(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        md1 listener = (md1) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (gj1) kq2.b(listener);
    }
}
