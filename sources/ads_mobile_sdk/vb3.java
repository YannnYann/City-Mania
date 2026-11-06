package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class vb3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public vb3(ol0 ol0Var, ol0 ol0Var2) {
        this.a = ol0Var;
        this.b = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ub3((ur3) this.b.get(), (CoroutineScope) this.a.get());
    }
}
