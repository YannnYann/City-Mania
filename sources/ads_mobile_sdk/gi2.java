package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class gi2 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public gi2(dw2 dw2Var, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new fi2((Context) this.b.get(), (ex0) this.a.get());
    }
}
