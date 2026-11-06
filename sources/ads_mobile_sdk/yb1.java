package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yb1 implements jr0 {
    public final dw2 a;

    public yb1(mb3 mb3Var) {
        this.a = mb3Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw2 sdkCorePostInitializationTask = this.a;
        Intrinsics.checkNotNullParameter(sdkCorePostInitializationTask, "sdkCorePostInitializationTask");
        return new gp2(sdkCorePostInitializationTask);
    }
}
