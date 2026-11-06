package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qf1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        hk3 singleAdSourceTestingGmsgHandler = (hk3) this.a.get();
        Intrinsics.checkNotNullParameter(singleAdSourceTestingGmsgHandler, "singleAdSourceTestingGmsgHandler");
        return new mf1(singleAdSourceTestingGmsgHandler);
    }

    public qf1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
