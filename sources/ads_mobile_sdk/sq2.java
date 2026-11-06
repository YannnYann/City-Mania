package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class sq2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public sq2(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rq2((tq2) this.a.get(), (CoroutineScope) this.b.get(), (j53) this.c.get(), (ex0) this.d.get(), (g83) this.e.get());
    }
}
