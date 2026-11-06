package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kl implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        q13 recursiveAppOpenAdRenderer = (q13) this.a.get();
        Intrinsics.checkNotNullParameter(recursiveAppOpenAdRenderer, "recursiveAppOpenAdRenderer");
        return (j2) kq2.b(recursiveAppOpenAdRenderer);
    }

    public kl(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
