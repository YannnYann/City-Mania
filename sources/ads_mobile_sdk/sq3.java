package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class sq3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public sq3(ol0 ol0Var, jr0 jr0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = jr0Var;
        this.c = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rq3((CoroutineScope) this.a.get(), (Map) this.b.get(), (ub3) this.c.get());
    }
}
