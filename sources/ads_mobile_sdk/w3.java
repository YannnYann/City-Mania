package ads_mobile_sdk;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class w3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public w3(ol0 ol0Var, iu1 iu1Var, vh1 vh1Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = iu1Var;
        this.c = vh1Var;
        this.d = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new v3((CoroutineScope) this.a.get(), (Map) this.b.get(), (i2) this.c.get(), (ub3) this.d.get());
    }
}
