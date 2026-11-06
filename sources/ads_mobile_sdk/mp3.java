package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mp3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public mp3(ol0 ol0Var, ol0 ol0Var2, dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2) {
        this.a = ol0Var;
        this.b = ol0Var2;
        this.c = dw2Var;
        this.d = vh1Var;
        this.e = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new lp3((CoroutineScope) this.a.get(), (v3) this.b.get(), (no3) this.c.get(), (np3) this.d.get(), (f0) this.e.get());
    }
}
