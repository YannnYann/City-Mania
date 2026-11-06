package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class bo0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public bo0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ao0((Context) this.a.get(), (f0) this.b.get(), (ex0) this.c.get());
    }
}
