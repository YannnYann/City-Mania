package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class wp3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public wp3(ol0 ol0Var, dw2 dw2Var, vh1 vh1Var, ol0 ol0Var2, vh1 vh1Var2, dw2 dw2Var2) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = ol0Var2;
        this.e = vh1Var2;
        this.f = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new vp3((CoroutineScope) this.a.get(), (CoroutineScope) this.b.get(), (p12) this.c.get(), (v3) this.d.get(), (i2) this.e.get(), (k32) this.f.get());
    }
}
