package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class um2 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public um2(ol0 ol0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new tm2((g30) this.a.get(), (ex0) this.b.get());
    }
}
