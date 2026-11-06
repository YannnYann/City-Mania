package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bf3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public bf3(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, ge0 ge0Var) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = ge0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xe3((CoroutineScope) this.a.get(), (ex0) this.b.get(), (tx) this.c.get(), (g83) this.d.get(), this.e);
    }
}
