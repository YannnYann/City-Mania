package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class e92 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public e92(dw2 dw2Var, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new d92((j12) this.a.get(), (s02) this.b.get());
    }
}
