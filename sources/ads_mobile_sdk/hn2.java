package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class hn2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public hn2(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new gn2((Context) this.a.get(), (ao0) this.b.get(), (ex0) this.c.get(), (zd3) this.d.get());
    }
}
