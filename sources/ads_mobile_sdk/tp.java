package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tp implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        zo bannerAdRenderer = (zo) this.a.get();
        Intrinsics.checkNotNullParameter(bannerAdRenderer, "bannerAdRenderer");
        return (j2) kq2.b(bannerAdRenderer);
    }

    public tp(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
