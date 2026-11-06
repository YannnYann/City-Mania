package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class nb0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public nb0(ol0 ol0Var, vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var2, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = ol0Var;
        this.b = vh1Var;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = vh1Var2;
        this.g = dw2Var4;
        this.h = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new mb0((CoroutineScope) this.a.get(), (Context) this.b.get(), (ex0) this.c.get(), (tx) this.d.get(), (d63) this.e.get(), (j53) this.f.get(), (an0) this.g.get(), (zy) this.h.get());
    }
}
