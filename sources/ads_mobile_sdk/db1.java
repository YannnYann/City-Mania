package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class db1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw2 preconnectTask = this.a;
        Intrinsics.checkNotNullParameter(preconnectTask, "preconnectTask");
        return new gp2(preconnectTask);
    }

    public db1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
