package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zl3 implements jr0 {
    public final dw2 a;

    public zl3(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xr0((ExecutorService) this.a.get());
    }
}
