package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ru2 implements jr0 {
    public final dw2 a;

    public ru2(wh2 wh2Var) {
        this.a = wh2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        vh2 outOfContextTestingGmsgHandler = (vh2) this.a.get();
        Intrinsics.checkNotNullParameter(outOfContextTestingGmsgHandler, "outOfContextTestingGmsgHandler");
        return new mf1(outOfContextTestingGmsgHandler);
    }
}
