package ads_mobile_sdk;

import android.content.Context;
import com.google.common.util.concurrent.ListeningExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class ik implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public ik(vh1 vh1Var, dw2 dw2Var, vh1 vh1Var2, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = vh1Var2;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new hk((Context) this.a.get(), (ts3) this.b.get(), (na) this.c.get(), (ListeningExecutorService) this.d.get());
    }
}
