package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class xt3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public xt3(ol0 ol0Var, vh1 vh1Var, ol0 ol0Var2) {
        this.a = ol0Var;
        this.b = vh1Var;
        this.c = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new wt3((CoroutineScope) this.a.get(), (Context) this.b.get(), (ur3) this.c.get());
    }
}
