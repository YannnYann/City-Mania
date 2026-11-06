package ads_mobile_sdk;

import android.content.Context;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class k92 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public k92(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new j92((Context) this.a.get(), (String) this.b.get(), (String) this.c.get(), (km) this.d.get(), (Optional) this.e.get(), (tx) this.f.get());
    }
}
