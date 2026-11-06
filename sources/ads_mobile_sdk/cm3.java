package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class cm3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public cm3(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new bm3((vu2) this.a.get(), (ExecutorService) this.b.get(), (ts3) this.c.get());
    }
}
