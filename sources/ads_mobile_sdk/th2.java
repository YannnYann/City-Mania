package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class th2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;

    public th2(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, bf0 bf0Var, mf0 mf0Var, pf0 pf0Var, qf0 qf0Var, rf0 rf0Var) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = ol0Var;
        this.e = bf0Var;
        this.f = mf0Var;
        this.g = pf0Var;
        this.h = qf0Var;
        this.i = rf0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new sh2((Context) this.a.get(), (o21) this.b.get(), (f0) this.c.get(), (if1) this.d.get(), this.e, this.f, this.g, this.h, this.i);
    }
}
