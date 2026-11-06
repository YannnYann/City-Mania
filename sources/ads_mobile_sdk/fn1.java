package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fn1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        n04 webViewPrefetchAdRequestListener = (n04) this.a.get();
        Intrinsics.checkNotNullParameter(webViewPrefetchAdRequestListener, "webViewPrefetchAdRequestListener");
        return (gj1) kq2.b(webViewPrefetchAdRequestListener);
    }

    public fn1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
