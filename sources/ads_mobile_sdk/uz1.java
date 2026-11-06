package ads_mobile_sdk;

import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class uz1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new tz1((ix1) this.a.get(), (Optional) this.b.get(), (CoroutineScope) this.c.get());
    }

    public uz1(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
    }
}
