package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hl implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        tk appOpenAdRenderer = (tk) this.a.get();
        Intrinsics.checkNotNullParameter(appOpenAdRenderer, "appOpenAdRenderer");
        return (j2) kq2.b(appOpenAdRenderer);
    }

    public hl(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
