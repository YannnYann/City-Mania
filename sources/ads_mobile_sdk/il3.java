package ads_mobile_sdk;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class il3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public il3(dw2 dw2Var, sc3 sc3Var) {
        this.a = dw2Var;
        this.b = sc3Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new hl3((cl3) this.a.get(), (Set) this.b.get());
    }
}
