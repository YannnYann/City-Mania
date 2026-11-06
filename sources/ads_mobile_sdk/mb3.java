package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mb3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public mb3(ol0 ol0Var, dw2 dw2Var, ol0 ol0Var2) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new lb3((CoroutineScope) this.a.get(), (ex0) this.b.get(), (jb3) this.c.get());
    }
}
