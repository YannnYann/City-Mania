package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class a10 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public a10(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new z00((i2) this.a.get(), (vn) this.b.get());
    }
}
