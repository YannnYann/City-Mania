package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class um implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public um(vh1 vh1Var, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new km((Context) this.a.get(), (ur3) this.b.get());
    }
}
