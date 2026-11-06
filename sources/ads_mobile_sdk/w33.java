package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class w33 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public w33(ol0 ol0Var, dw2 dw2Var, f63 f63Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = f63Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new v33((CoroutineScope) this.a.get(), (tx) this.b.get(), (c63) this.c.get(), (du1) this.d.get(), (ji1) this.e.get(), (pb) this.f.get(), ((Integer) this.g.get()).intValue());
    }
}
