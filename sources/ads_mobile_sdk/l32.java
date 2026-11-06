package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class l32 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public l32(vh1 vh1Var, dw2 dw2Var, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new k32((Context) this.a.get(), (ex0) this.b.get(), (ur3) this.c.get());
    }
}
