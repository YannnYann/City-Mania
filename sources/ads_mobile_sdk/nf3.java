package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class nf3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public nf3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, vh1 vh1Var, vh1 vh1Var2) {
        pf3 pf3Var = of3.a;
        this.a = dw2Var;
        this.b = pf3Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = vh1Var;
        this.h = vh1Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new mf3((rj3) this.a.get(), this.b, (vv2) this.c.get(), (lh2) this.d.get(), (hl3) this.e.get(), (ts3) this.f.get(), (na) this.g.get(), (ExecutorService) this.h.get());
    }
}
