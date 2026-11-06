package ads_mobile_sdk;

import android.content.Context;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class k43 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;

    public k43(dw2 dw2Var, ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, ol0 ol0Var3, dw2 dw2Var5, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = ol0Var2;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = ol0Var3;
        this.h = dw2Var5;
        this.i = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new j43((ex0) this.a.get(), (g30) this.b.get(), (ur3) this.c.get(), (at) this.d.get(), (Optional) this.e.get(), (j40) this.f.get(), (jb3) this.g.get(), ((Integer) this.h.get()).intValue(), (Context) this.i.get());
    }
}
