package ads_mobile_sdk;

import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class hp3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public hp3(ol0 ol0Var, vh1 vh1Var, ol0 ol0Var2, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = ol0Var;
        this.b = vh1Var;
        this.c = ol0Var2;
        this.d = dw2Var;
        this.e = dw2Var2;
        this.f = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new gp3((CoroutineScope) this.a.get(), (i2) this.b.get(), (v3) this.c.get(), (f73) this.d.get(), (rq3) this.e.get(), (Optional) this.f.get());
    }
}
