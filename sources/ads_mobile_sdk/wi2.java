package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class wi2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public wi2(ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = ol0Var;
        this.b = ol0Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new vi2((CoroutineScope) this.a.get(), (CoroutineContext) this.b.get(), (u43) this.c.get(), (tx) this.d.get(), (v33) this.e.get(), (k8) this.f.get());
    }
}
