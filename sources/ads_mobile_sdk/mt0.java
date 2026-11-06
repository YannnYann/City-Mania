package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mt0 implements jr0 {
    public final dw2 a;

    public mt0(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        g33 refreshListener = (g33) this.a.get();
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        return new kt0(refreshListener);
    }
}
