package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class eu1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public eu1(vh1 vh1Var, dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = ol0Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new du1((Context) this.a.get(), (String) this.b.get(), (g30) this.c.get(), (o21) this.d.get(), (ex0) this.e.get());
    }
}
