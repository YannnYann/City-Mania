package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bt1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public bt1(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new at1((ex0) this.a.get(), (j12) this.b.get(), (q52) this.c.get(), (k32) this.d.get(), (CoroutineScope) this.e.get(), (f82) this.f.get());
    }
}
