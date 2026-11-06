package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class av3 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ck appEventGmsgHandler = (ck) this.a.get();
        Intrinsics.checkNotNullParameter(appEventGmsgHandler, "appEventGmsgHandler");
        return new yu3(appEventGmsgHandler);
    }

    public av3(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
