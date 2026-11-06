package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zt0 implements jr0 {
    public final dw2 a;

    public zt0(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        zy commonConfiguration = (zy) this.a.get();
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        return new qt0(commonConfiguration);
    }
}
