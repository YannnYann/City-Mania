package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class fa1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public fa1(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ea1((ExecutorService) this.a.get(), (ts3) this.b.get());
    }
}
