package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vt0 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        jc0 customCloseGmsgHandler = (jc0) this.a.get();
        Intrinsics.checkNotNullParameter(customCloseGmsgHandler, "customCloseGmsgHandler");
        return new i50(customCloseGmsgHandler);
    }

    public vt0(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
