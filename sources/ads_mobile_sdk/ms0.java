package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ms0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public ms0(vh1 vh1Var, ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = ol0Var;
        this.c = dw2Var;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ls0((Context) this.a.get(), (ur3) this.b.get(), (g83) this.c.get(), (ex0) this.d.get());
    }
}
