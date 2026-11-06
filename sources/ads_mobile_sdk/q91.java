package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class q91 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public q91(sf0 sf0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = sf0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new p91(this.a, (nd1) this.b.get(), (f13) this.c.get(), (ex0) this.d.get());
    }
}
