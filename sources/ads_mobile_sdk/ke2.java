package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ke2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public ke2(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3, vh1 vh1Var2, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = dw2Var3;
        this.e = vh1Var2;
        this.f = dw2Var4;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new je2((CoroutineContext) this.a.get(), (CoroutineScope) this.b.get(), (i2) this.c.get(), (kd2) this.d.get(), (h41) this.e.get(), (ze2) this.f.get(), (ex0) this.g.get());
    }
}
