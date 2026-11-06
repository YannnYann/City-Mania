package ads_mobile_sdk;

import android.content.Context;
import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class d24 implements jr0 {
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

    public d24(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, sh0 sh0Var, dw2 dw2Var4, dw2 dw2Var5, vh1 vh1Var2, dw2 dw2Var6, vh1 vh1Var3) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = sh0Var;
        this.f = dw2Var4;
        this.g = dw2Var5;
        this.h = vh1Var2;
        this.i = dw2Var6;
        this.j = vh1Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new c24((Context) this.a.get(), (CoroutineScope) this.b.get(), (z14) this.c.get(), (ao0) this.d.get(), (Optional) this.e.get(), (tx) this.f.get(), (ex0) this.g.get(), (j53) this.h.get(), (f0) this.i.get(), (i2) this.j.get());
    }
}
