package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class x24 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public x24(vh1 vh1Var, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new w24((Context) this.a.get(), (ur3) this.b.get());
    }
}
