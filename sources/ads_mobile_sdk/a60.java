package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a60 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        tc3 paidPersonalizationEnabledGmsgHandler = (tc3) this.a.get();
        Intrinsics.checkNotNullParameter(paidPersonalizationEnabledGmsgHandler, "paidPersonalizationEnabledGmsgHandler");
        return new i50(paidPersonalizationEnabledGmsgHandler);
    }

    public a60(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
