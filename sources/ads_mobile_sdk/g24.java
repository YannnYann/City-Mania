package ads_mobile_sdk;

import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g24 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public g24(dw2 dw2Var, sh0 sh0Var, vh1 vh1Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = sh0Var;
        this.c = vh1Var;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new f24((CoroutineScope) this.a.get(), (Optional) this.b.get(), (zy) this.c.get(), (String) this.d.get());
    }
}
