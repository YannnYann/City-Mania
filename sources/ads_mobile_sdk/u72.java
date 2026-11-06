package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class u72 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public u72(dw2 dw2Var, dw2 dw2Var2, e82 e82Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = e82Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new t72((g83) this.a.get(), (iz3) this.b.get(), (r72) this.c.get());
    }
}
