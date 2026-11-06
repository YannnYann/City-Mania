package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class e63 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public e63(dw2 dw2Var, dw2 dw2Var2, f63 f63Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = f63Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new d63((i2) this.a.get(), (zy) this.b.get(), (c63) this.c.get());
    }
}
