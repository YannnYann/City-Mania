package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class b13 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public b13(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new a13((CoroutineScope) this.a.get(), (qn) this.b.get(), (xe3) this.c.get(), (pw2) this.d.get());
    }
}
