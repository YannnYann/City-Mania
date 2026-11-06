package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class u52 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public u52(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, zk3 zk3Var) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = zk3Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new t52((CoroutineScope) this.a.get(), (CoroutineScope) this.b.get(), (ex0) this.c.get(), (iz3) this.d.get(), (g83) this.e.get(), this.f, (nk3) this.g.get());
    }
}
