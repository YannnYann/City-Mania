package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class cu3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public cu3(dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, dw2 dw2Var4, ol0 ol0Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = ol0Var;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ex0 ex0Var = (ex0) this.a.get();
        tx txVar = (tx) this.b.get();
        CoroutineScope coroutineScope = (CoroutineScope) this.c.get();
        g83 g83Var = (g83) this.d.get();
        return new bu3((g30) this.f.get(), ex0Var, (f0) this.e.get(), g83Var, txVar, coroutineScope);
    }
}
