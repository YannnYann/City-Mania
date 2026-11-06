package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ai2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ai2(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new zh2((Context) this.a.get(), ((Integer) this.b.get()).intValue(), (ja1) this.c.get());
    }
}
