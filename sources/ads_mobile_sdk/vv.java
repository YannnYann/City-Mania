package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class vv implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public vv(ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = ol0Var;
        this.b = ol0Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new uv((CoroutineScope) this.a.get(), (dz3) this.b.get(), (g83) this.c.get(), (ex0) this.d.get(), (o21) this.e.get());
    }
}
