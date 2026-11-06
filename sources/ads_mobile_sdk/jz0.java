package ads_mobile_sdk;

import android.content.Context;
import com.google.common.util.concurrent.ListeningExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class jz0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public jz0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var2, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = vh1Var2;
        this.e = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new iz0((Context) this.a.get(), (ts3) this.b.get(), (ListeningExecutorService) this.c.get(), (na) this.d.get(), (ja3) this.e.get());
    }
}
