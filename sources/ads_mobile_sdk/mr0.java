package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class mr0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public mr0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, md0 md0Var, vh1 vh1Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = md0Var;
        this.g = vh1Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new kr0((ExecutorService) this.a.get(), do0.a(this.b), do0.a(this.c), (hl3) this.d.get(), do0.a(this.e), this.f, (na) this.g.get());
    }
}
