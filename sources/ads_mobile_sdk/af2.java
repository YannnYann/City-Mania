package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class af2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public af2(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ze2((kd2) this.a.get(), (i2) this.b.get(), (ex0) this.c.get(), (CoroutineContext) this.d.get());
    }
}
