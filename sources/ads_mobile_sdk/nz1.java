package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class nz1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public nz1(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, ol0 ol0Var, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = ol0Var;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = dw2Var7;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new mz1((an0) this.a.get(), (ix1) this.b.get(), (CoroutineScope) this.c.get(), (CoroutineScope) this.d.get(), (e01) this.e.get(), (f0) this.f.get(), (g83) this.g.get(), (ks3) this.h.get());
    }
}
