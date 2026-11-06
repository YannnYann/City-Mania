package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hq2 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public hq2(dw2 dw2Var) {
        ev evVar = dv.a;
        this.a = dw2Var;
        this.b = evVar;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        i2 adConfiguration = (i2) this.a.get();
        cv canOpenUrlsGmsgHandler = (cv) this.b.get();
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(canOpenUrlsGmsgHandler, "canOpenUrlsGmsgHandler");
        return new eq2(adConfiguration, canOpenUrlsGmsgHandler);
    }
}
