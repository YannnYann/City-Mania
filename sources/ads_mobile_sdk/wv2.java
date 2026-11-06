package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class wv2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public wv2(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rn0(do0.a(this.a), (ts3) this.b.get(), (tx) this.c.get(), ((na) this.d.get()).S().z());
    }
}
