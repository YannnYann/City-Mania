package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g73 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public g73(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new f73((CoroutineScope) this.a.get(), (Map) this.b.get(), (ub3) this.c.get());
    }
}
