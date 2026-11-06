package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class a42 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public a42(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, vh1 vh1Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = vh1Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new z32((Context) this.a.get(), (CoroutineScope) this.b.get(), (jd) this.c.get(), (ao0) this.d.get(), (tx) this.e.get(), (ex0) this.f.get(), (f0) this.g.get(), (i2) this.h.get());
    }
}
