package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gq2 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        i2 adConfiguration = (i2) this.a.get();
        av canOpenIntentsGmsgHandler = (av) this.b.get();
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(canOpenIntentsGmsgHandler, "canOpenIntentsGmsgHandler");
        return new eq2(adConfiguration, canOpenIntentsGmsgHandler);
    }

    public gq2(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
