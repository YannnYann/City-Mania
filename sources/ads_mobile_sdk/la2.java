package ads_mobile_sdk;

import com.google.gson.Gson;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class la2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;
    public final dw2 j;

    public la2(ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, sh0 sh0Var, ol0 ol0Var3) {
        z41 z41Var = y41.a;
        this.a = ol0Var;
        this.b = ol0Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = z41Var;
        this.h = dw2Var5;
        this.i = sh0Var;
        this.j = ol0Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ka2((jb3) this.a.get(), (g30) this.b.get(), (e01) this.c.get(), (zw3) this.d.get(), (ex0) this.e.get(), (tx) this.f.get(), (Gson) this.g.get(), (ej1) this.h.get(), (Optional) this.i.get(), (ur3) this.j.get());
    }
}
