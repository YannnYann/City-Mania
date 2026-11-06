package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class dd0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public dd0(vh1 vh1Var, ol0 ol0Var, dw2 dw2Var, ol0 ol0Var2) {
        this.a = vh1Var;
        this.b = ol0Var;
        this.c = dw2Var;
        this.d = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new zc0((Context) this.a.get(), (CoroutineScope) this.b.get(), (g83) this.c.get(), (ur3) this.d.get());
    }
}
