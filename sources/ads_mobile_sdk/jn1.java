package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jn1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        bd0 listener = (bd0) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (li1) kq2.b(listener);
    }

    public jn1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
