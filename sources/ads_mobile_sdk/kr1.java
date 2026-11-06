package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kr1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        tm2 persistentSdkCoreDataGmsgHandler = (tm2) this.a.get();
        Intrinsics.checkNotNullParameter(persistentSdkCoreDataGmsgHandler, "persistentSdkCoreDataGmsgHandler");
        return new er1(persistentSdkCoreDataGmsgHandler);
    }

    public kr1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
