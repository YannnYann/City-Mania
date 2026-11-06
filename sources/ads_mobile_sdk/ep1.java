package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ep1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        x13 recursiveInterstitialAdRenderer = (x13) this.a.get();
        Intrinsics.checkNotNullParameter(recursiveInterstitialAdRenderer, "recursiveInterstitialAdRenderer");
        return (j2) kq2.b(recursiveInterstitialAdRenderer);
    }

    public ep1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
