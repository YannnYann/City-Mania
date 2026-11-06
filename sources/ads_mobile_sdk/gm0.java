package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class gm0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public gm0(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new fm0((CoroutineScope) this.a.get(), (ex0) this.b.get(), (ks3) this.c.get(), (g83) this.d.get());
    }
}
