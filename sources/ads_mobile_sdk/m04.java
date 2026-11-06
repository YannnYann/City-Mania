package ads_mobile_sdk;

import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class m04 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public m04(sh0 sh0Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = sh0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new l04((Optional) this.a.get(), (CoroutineScope) this.b.get(), (ex0) this.c.get());
    }
}
