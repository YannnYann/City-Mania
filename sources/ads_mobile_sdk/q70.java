package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class q70 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public q70(ol0 ol0Var, dw2 dw2Var, ol0 ol0Var2, dw2 dw2Var2) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = ol0Var2;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new p70((CoroutineScope) this.a.get(), (g83) this.b.get(), (ur3) this.c.get(), (ex0) this.d.get());
    }
}
