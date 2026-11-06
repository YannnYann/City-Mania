package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class q61 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public q61(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new p61((Context) this.a.get(), (ex0) this.b.get());
    }
}
