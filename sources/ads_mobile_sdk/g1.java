package ads_mobile_sdk;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public g1(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new f1((xf) this.a.get(), (Map) this.b.get(), (na) this.c.get(), (ts3) this.d.get());
    }
}
