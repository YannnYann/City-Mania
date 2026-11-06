package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r82 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        a23 recursiveNativeAdRenderer = (a23) this.a.get();
        Intrinsics.checkNotNullParameter(recursiveNativeAdRenderer, "recursiveNativeAdRenderer");
        return (j2) kq2.b(recursiveNativeAdRenderer);
    }

    public r82(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
