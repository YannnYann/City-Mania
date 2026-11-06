package ads_mobile_sdk;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class gk implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public gk(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var, dw2 dw2Var4, vh1 vh1Var2, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = vh1Var;
        this.e = dw2Var4;
        this.f = vh1Var2;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new fk((xf) this.a.get(), (yw1) this.b.get(), (Map) this.c.get(), (Context) this.d.get(), (fl3) this.e.get(), (na) this.f.get(), (ts3) this.g.get());
    }
}
