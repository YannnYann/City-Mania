package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bl2 implements jr0 {
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

    public bl2(ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var, nu1 nu1Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, ol0 ol0Var3, ol0 ol0Var4) {
        this.a = ol0Var;
        this.b = ol0Var2;
        this.c = dw2Var;
        this.d = nu1Var;
        this.e = dw2Var2;
        this.f = dw2Var3;
        this.g = dw2Var4;
        this.h = dw2Var5;
        this.i = dw2Var6;
        this.j = dw2Var7;
        this.k = ol0Var3;
        this.l = ol0Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new al2((CoroutineScope) this.a.get(), (im2) this.b.get(), (cl2) this.c.get(), (Map) this.d.get(), (v8) this.e.get(), (g83) this.f.get(), (f13) this.g.get(), (du1) this.h.get(), (c63) this.i.get(), (ca2) this.j.get(), (ur3) this.k.get(), this.l);
    }
}
