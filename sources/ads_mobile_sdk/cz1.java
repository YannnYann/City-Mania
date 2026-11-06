package ads_mobile_sdk;

import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class cz1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public cz1(dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = ol0Var;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new bz1((ix1) this.a.get(), (CoroutineScope) this.b.get(), (CoroutineScope) this.c.get(), (tz1) this.d.get(), (Optional) this.e.get(), (f0) this.f.get(), do0.a(this.g));
    }
}
