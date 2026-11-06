package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class rc1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public rc1(sc3 sc3Var, sc3 sc3Var2, vh1 vh1Var, dw2 dw2Var) {
        this.a = sc3Var;
        this.b = sc3Var2;
        this.c = vh1Var;
        this.d = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new qc1(do0.a(this.a), do0.a(this.b), (ExecutorService) this.c.get(), do0.a(this.d));
    }
}
