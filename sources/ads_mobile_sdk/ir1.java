package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ir1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ht1 logGmsgHandler = (ht1) this.a.get();
        Intrinsics.checkNotNullParameter(logGmsgHandler, "logGmsgHandler");
        return new er1(logGmsgHandler);
    }

    public ir1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
