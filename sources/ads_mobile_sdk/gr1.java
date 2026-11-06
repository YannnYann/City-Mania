package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gr1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        lw3 updateConsentAllowlistGmsgHandler = (lw3) this.a.get();
        Intrinsics.checkNotNullParameter(updateConsentAllowlistGmsgHandler, "updateConsentAllowlistGmsgHandler");
        return new er1(updateConsentAllowlistGmsgHandler);
    }

    public gr1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
