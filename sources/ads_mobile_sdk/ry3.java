package ads_mobile_sdk;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class ry3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ry3(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new qy3((Context) this.a.get(), (tx) this.b.get(), (ExecutorService) this.c.get(), qy3.h);
    }
}
