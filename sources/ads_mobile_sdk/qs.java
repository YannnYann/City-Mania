package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class qs implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public qs(dw2 dw2Var, vh1 vh1Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = ol0Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ps((ex0) this.a.get(), (Context) this.b.get(), (CoroutineScope) this.c.get(), (tx) this.d.get(), (g83) this.e.get(), (f0) this.f.get());
    }
}
