package ads_mobile_sdk;

import android.content.Context;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class l70 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;

    public l70(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, vh1 vh1Var, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = vh1Var;
        this.g = dw2Var5;
        this.h = dw2Var6;
        this.i = dw2Var7;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new k70((CoroutineScope) this.a.get(), (CoroutineContext) this.b.get(), (ex0) this.c.get(), (sz) this.d.get(), (zw3) this.e.get(), (Context) this.f.get(), (g83) this.g.get(), (ja1) this.h.get(), (cn0) this.i.get());
    }
}
