package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gn1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        qc listener = (qc) this.a.get();
        Intrinsics.checkNotNullParameter(listener, "listener");
        return (li1) kq2.b(listener);
    }

    public gn1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
