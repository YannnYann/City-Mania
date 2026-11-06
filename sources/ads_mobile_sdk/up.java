package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class up implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ip wrapper = (ip) this.a.get();
        Intrinsics.checkNotNullParameter(wrapper, "wrapper");
        return (rf) kq2.b(wrapper);
    }

    public up(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
