package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class wx3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public wx3(ol0 ol0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new vx3((ur3) this.a.get(), (CoroutineScope) this.b.get());
    }
}
