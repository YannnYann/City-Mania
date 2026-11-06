package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lr1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        y91 inMemorySdkCoreDataGmsgHandler = (y91) this.a.get();
        Intrinsics.checkNotNullParameter(inMemorySdkCoreDataGmsgHandler, "inMemorySdkCoreDataGmsgHandler");
        return new er1(inMemorySdkCoreDataGmsgHandler);
    }

    public lr1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
