package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h60 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public h60(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        i2 adConfiguration = (i2) this.a.get();
        dw2 clearLocalStorageGmsgHandler = this.b;
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(clearLocalStorageGmsgHandler, "clearLocalStorageGmsgHandler");
        return new v40(adConfiguration, clearLocalStorageGmsgHandler);
    }
}
