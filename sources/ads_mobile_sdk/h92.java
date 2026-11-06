package ads_mobile_sdk;

import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class h92 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public h92(dw2 dw2Var, sh0 sh0Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = sh0Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new g92((ix1) this.a.get(), (Optional) this.b.get(), (CoroutineScope) this.c.get());
    }
}
