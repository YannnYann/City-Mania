package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class b4 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public b4(ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = ol0Var;
        this.b = ol0Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        CoroutineScope coroutineScope = (CoroutineScope) this.a.get();
        g30 g30Var = (g30) this.b.get();
        tx txVar = (tx) this.c.get();
        return new a4(g30Var, (ex0) this.d.get(), (f0) this.f.get(), (g83) this.e.get(), txVar, coroutineScope);
    }
}
