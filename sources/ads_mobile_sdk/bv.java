package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class bv implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public bv(vh1 vh1Var, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new av((Context) this.a.get(), (ur3) this.b.get());
    }
}
