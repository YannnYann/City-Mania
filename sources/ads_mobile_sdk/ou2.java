package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ou2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public ou2(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new nu2((xf) this.a.get(), (yw1) this.b.get(), (Context) this.c.get(), (ts3) this.d.get());
    }
}
