package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class sb implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public sb(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rb((Context) this.a.get(), (ex0) this.b.get(), (o21) this.c.get(), (f0) this.d.get(), (sz) this.e.get(), (String) this.f.get(), (g83) this.g.get());
    }
}
