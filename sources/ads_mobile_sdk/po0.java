package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class po0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public po0(vh1 vh1Var, dw2 dw2Var, vh1 vh1Var2, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = vh1Var2;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new oo0((xf) this.a.get(), (yw1) this.b.get(), (Context) this.c.get(), (ts3) this.d.get());
    }
}
