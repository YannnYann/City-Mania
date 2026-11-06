package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gc1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public gc1(ol0 ol0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        if1 inspectorManager = (if1) this.a.get();
        e01 httpClient = (e01) this.b.get();
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        return new pa1(inspectorManager, httpClient);
    }
}
