package ads_mobile_sdk;

import android.content.Context;
import java.util.Set;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class fa2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public fa2(vh1 vh1Var, ol0 ol0Var, dw2 dw2Var, ol0 ol0Var2, sc3 sc3Var) {
        this.a = vh1Var;
        this.b = ol0Var;
        this.c = dw2Var;
        this.d = ol0Var2;
        this.e = sc3Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ca2((Context) this.a.get(), (CoroutineScope) this.b.get(), (tx) this.c.get(), (ur3) this.d.get(), (Set) this.e.get());
    }
}
