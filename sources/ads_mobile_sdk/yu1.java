package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class yu1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public yu1(dw2 dw2Var, iu1 iu1Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = iu1Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xu1((CoroutineScope) this.a.get(), (Map) this.b.get(), (ub3) this.c.get());
    }
}
