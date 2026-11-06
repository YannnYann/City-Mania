package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s82 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        k83 renderer = (k83) this.a.get();
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        return (j2) kq2.b(renderer);
    }

    public s82(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
