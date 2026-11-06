package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class so2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public so2(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, fu2 fu2Var, dw2 dw2Var3) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = fu2Var;
        this.e = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ro2((CoroutineScope) this.a.get(), (tx) this.b.get(), (ex0) this.c.get(), (eu2) this.d.get(), (g83) this.e.get());
    }
}
