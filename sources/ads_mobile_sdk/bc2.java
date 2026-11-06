package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bc2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ac2((Context) this.a.get(), (CoroutineScope) this.b.get(), ((Integer) this.c.get()).intValue(), (tx) this.d.get(), (lc2) this.e.get(), (vw3) this.f.get());
    }

    public bc2(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
        this.e = dw2Var5;
        this.f = dw2Var6;
    }
}
