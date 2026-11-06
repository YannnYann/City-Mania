package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class sw0 implements jr0 {
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

    public sw0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, dw2 dw2Var10) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = dw2Var7;
        this.i = dw2Var8;
        this.j = dw2Var9;
        this.k = dw2Var10;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rw0((Context) this.a.get(), ((Integer) this.b.get()).intValue(), (String) this.c.get(), (String) this.d.get(), ((Integer) this.e.get()).intValue(), (ja1) this.f.get(), (String) this.g.get(), (String) this.h.get(), (an0) this.i.get(), (kd2) this.j.get(), (cn0) this.k.get());
    }
}
