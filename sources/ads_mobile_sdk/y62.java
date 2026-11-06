package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y62 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        zx3 viewLocationGmsgHandler = (zx3) this.a.get();
        Intrinsics.checkNotNullParameter(viewLocationGmsgHandler, "viewLocationGmsgHandler");
        return new q62(viewLocationGmsgHandler);
    }

    public y62(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
