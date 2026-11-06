package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class rl3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public rl3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, on1 on1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = on1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ql3((pc) this.a.get(), (vn) this.b.get(), (String) this.c.get(), ((Long) this.d.get()).longValue());
    }
}
