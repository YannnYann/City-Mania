package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class o8 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public o8(dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new n8((ex0) this.a.get(), (e01) this.b.get(), (CoroutineScope) this.c.get());
    }
}
