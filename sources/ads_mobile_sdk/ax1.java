package ads_mobile_sdk;

import android.content.Context;
import java.io.File;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class ax1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public ax1(vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, vh1 vh1Var3) {
        kh3 kh3Var = jh3.a;
        this.a = vh1Var;
        this.b = vh1Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = vh1Var3;
        this.h = kh3Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        ExecutorService executorService = (ExecutorService) this.b.get();
        a aVar = (a) this.c.get();
        pj3 pj3Var = (pj3) this.d.get();
        File file = (File) this.e.get();
        ts3 ts3Var = (ts3) this.f.get();
        na naVar = (na) this.g.get();
        return new zw1(context, executorService, aVar, pj3Var, file, ts3Var, naVar.Q(), (Set) this.h.get());
    }
}
