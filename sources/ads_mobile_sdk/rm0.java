package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class rm0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public rm0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new qm0((xf) this.a.get(), (yw1) this.b.get(), (ts3) this.c.get());
    }
}
