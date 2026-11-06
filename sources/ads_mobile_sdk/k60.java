package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k60 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        c24 webViewViewabilityMonitor = (c24) this.a.get();
        Intrinsics.checkNotNullParameter(webViewViewabilityMonitor, "webViewViewabilityMonitor");
        return new c50(webViewViewabilityMonitor);
    }

    public k60(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
