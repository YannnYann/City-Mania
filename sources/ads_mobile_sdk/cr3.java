package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class cr3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public cr3(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new br3((s02) this.a.get(), (CoroutineScope) this.b.get());
    }
}
