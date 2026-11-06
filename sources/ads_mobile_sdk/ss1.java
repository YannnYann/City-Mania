package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ss1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ss1(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rs1((ex0) this.a.get(), (Context) this.b.get(), (cn0) this.c.get());
    }
}
