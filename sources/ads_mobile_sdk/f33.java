package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class f33 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public f33(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new e33((CoroutineScope) this.a.get(), (tx) this.b.get(), (ex0) this.c.get());
    }
}
