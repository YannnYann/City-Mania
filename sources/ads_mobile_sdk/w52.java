package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class w52 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public w52(dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = ol0Var;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new v52((g83) this.a.get(), (o21) this.b.get(), (CoroutineScope) this.c.get(), (ex0) this.d.get());
    }
}
