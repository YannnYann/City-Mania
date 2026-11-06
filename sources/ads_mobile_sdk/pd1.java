package ads_mobile_sdk;

import com.google.gson.Gson;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class pd1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;

    public pd1(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var, dw2 dw2Var4, dw2 dw2Var5, vh1 vh1Var2) {
        z41 z41Var = y41.a;
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = vh1Var;
        this.f = dw2Var4;
        this.g = z41Var;
        this.h = dw2Var5;
        this.i = vh1Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new md1((if1) this.a.get(), (j53) this.b.get(), (Optional) this.c.get(), (String) this.d.get(), ((Boolean) this.e.get()).booleanValue(), (tx) this.f.get(), (Gson) this.g.get(), (ex0) this.h.get(), (Optional) this.i.get());
    }
}
