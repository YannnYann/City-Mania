package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class jx1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public jx1(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ix1((Context) this.a.get(), (f0) this.b.get(), (ao0) this.c.get());
    }
}
