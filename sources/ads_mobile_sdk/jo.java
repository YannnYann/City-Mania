package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class jo implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public jo(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = ol0Var;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new io((Context) this.a.get(), (ex0) this.b.get(), (km) this.c.get(), (CoroutineScope) this.d.get(), (tx) this.e.get(), (g83) this.f.get(), (f0) this.g.get());
    }
}
