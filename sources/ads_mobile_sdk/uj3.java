package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class uj3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new tj3(do0.a(this.a), do0.a(this.b), do0.a(this.c), do0.a(this.d), (na) this.e.get(), (ExecutorService) this.f.get(), (ts3) this.g.get());
    }

    public uj3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
        this.e = dw2Var5;
        this.f = dw2Var6;
        this.g = dw2Var7;
    }
}
