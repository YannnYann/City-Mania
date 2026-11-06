package ads_mobile_sdk;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class av2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public av2(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var2, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = vh1Var2;
        this.f = dw2Var4;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new zu2((Context) this.a.get(), do0.a(this.b), (wl3) this.c.get(), (ts3) this.d.get(), (ExecutorService) this.e.get(), (ov2) this.f.get(), (x9) this.g.get());
    }
}
