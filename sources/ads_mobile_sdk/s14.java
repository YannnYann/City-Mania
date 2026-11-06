package ads_mobile_sdk;

import android.content.Context;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class s14 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;
    public final dw2 j;
    public final dw2 k;
    public final dw2 l;

    public s14(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, ol0 ol0Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = ol0Var;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = dw2Var5;
        this.h = dw2Var6;
        this.i = dw2Var7;
        this.j = dw2Var8;
        this.k = dw2Var9;
        this.l = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new r14((Context) this.a.get(), (ex0) this.b.get(), (CoroutineContext) this.c.get(), (CoroutineScope) this.d.get(), (g83) this.e.get(), (zw3) this.f.get(), (sz) this.g.get(), this.h, (rz3) this.i.get(), (t04) this.j.get(), (tx) this.k.get(), this.l);
    }
}
