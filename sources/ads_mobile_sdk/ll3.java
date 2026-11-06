package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ll3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public ll3(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new kl3((Context) this.a.get(), (an0) this.b.get(), (ex0) this.c.get(), (o21) this.d.get());
    }
}
