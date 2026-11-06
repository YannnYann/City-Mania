package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class p52 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public p52(qe0 qe0Var, od1 od1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = qe0Var;
        this.b = od1Var;
        this.c = dw2Var;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new o52(this.a, (nd1) this.b.get(), (f13) this.c.get(), (ex0) this.d.get());
    }
}
