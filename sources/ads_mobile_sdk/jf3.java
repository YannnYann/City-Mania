package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class jf3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public jf3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, vh1 vh1Var, vh1 vh1Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
        this.e = vh1Var;
        this.f = vh1Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new if3((ny3) this.a.get(), (vn0) this.b.get(), (vv2) this.c.get(), (ts3) this.d.get(), (ExecutorService) this.e.get(), (na) this.f.get());
    }
}
