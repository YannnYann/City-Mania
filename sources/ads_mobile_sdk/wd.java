package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class wd implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new vd((CoroutineScope) this.a.get(), (Map) this.b.get(), (ub3) this.c.get());
    }

    public wd(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
    }
}
