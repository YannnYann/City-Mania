package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ay3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ay3(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new zx3((Context) this.a.get(), (f0) this.b.get());
    }
}
