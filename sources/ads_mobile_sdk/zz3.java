package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class zz3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public zz3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, ol0 ol0Var, dw2 dw2Var4, dw2 dw2Var5, ol0 ol0Var2, dw2 dw2Var6) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = ol0Var;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = ol0Var2;
        this.h = dw2Var6;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new yz3((dz3) this.a.get(), (sz) this.b.get(), (ex0) this.c.get(), (CoroutineScope) this.d.get(), (CoroutineScope) this.e.get(), (g83) this.f.get(), this.g, (zw3) this.h.get());
    }
}
