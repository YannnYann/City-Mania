package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class cm implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public cm(vh1 vh1Var, ol0 ol0Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = ol0Var;
        this.c = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new bm((Context) this.a.get(), (ur3) this.b.get(), (tx) this.c.get());
    }
}
