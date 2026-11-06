package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g60 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        od adViewabilityMonitor = (od) this.a.get();
        Intrinsics.checkNotNullParameter(adViewabilityMonitor, "adViewabilityMonitor");
        return new t40(adViewabilityMonitor);
    }

    public g60(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
