package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class dx1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public dx1(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = vh1Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new cx1((Context) this.a.get(), (ts3) this.b.get(), (a) this.c.get(), (na) this.d.get());
    }
}
