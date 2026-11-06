package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class uh1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public uh1(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new th1((CoroutineScope) this.a.get(), (CoroutineScope) this.b.get(), (ex0) this.c.get(), (zd3) this.d.get(), (g83) this.e.get(), (eh1) this.f.get());
    }
}
