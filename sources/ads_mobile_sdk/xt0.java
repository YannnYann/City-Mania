package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xt0 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        to1 interstitialPropertiesGmsgHandler = (to1) this.a.get();
        Intrinsics.checkNotNullParameter(interstitialPropertiesGmsgHandler, "interstitialPropertiesGmsgHandler");
        return new i50(interstitialPropertiesGmsgHandler);
    }

    public xt0(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
