package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n82 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        c22 nativeAdRenderer = (c22) this.a.get();
        Intrinsics.checkNotNullParameter(nativeAdRenderer, "nativeAdRenderer");
        return (j2) kq2.b(nativeAdRenderer);
    }

    public n82(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
