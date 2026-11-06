package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class jx0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public jx0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ix0((Context) this.a.get(), (ex0) this.b.get(), (tx) this.c.get(), (CoroutineScope) this.d.get());
    }
}
