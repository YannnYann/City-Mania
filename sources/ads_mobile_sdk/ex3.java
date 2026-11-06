package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ex3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ex3(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new dx3((Context) this.a.get(), (String) this.b.get(), (jw0) this.c.get());
    }
}
