package ads_mobile_sdk;

import android.content.Context;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class tt1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        ja3 ja3Var = (ja3) this.b.get();
        ExecutorService executorService = (ExecutorService) this.c.get();
        n71 n71Var = (n71) this.d.get();
        na naVar = (na) this.e.get();
        return new st1(context, ja3Var, executorService, n71Var, new Random(), naVar.P().z(), naVar.P().w(), naVar.P().x(), naVar.P().y(), naVar.M(), naVar.L(), naVar.T().a);
    }

    public tt1(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
        this.e = dw2Var5;
    }
}
