package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class un0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public un0(vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = vh1Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new tn0((Context) this.a.get(), (na) this.b.get(), (hl3) this.c.get(), (ts3) this.d.get());
    }
}
