package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ka3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ka3(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return (ja3) kq2.b(((na) this.c.get()).E() ? (ja3) do0.a(this.a).get() : (ja3) do0.a(this.b).get());
    }
}
