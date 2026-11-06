package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ay1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ay1(ol0 ol0Var, iu1 iu1Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = iu1Var;
        this.c = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new zx1((CoroutineScope) this.a.get(), (Map) this.b.get(), (ub3) this.c.get());
    }
}
