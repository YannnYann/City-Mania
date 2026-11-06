package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ky1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public ky1(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new jy1((Context) this.a.get(), (f0) this.b.get(), (ix1) this.c.get(), (String) this.d.get(), (CoroutineScope) this.e.get(), (an0) this.f.get());
    }
}
