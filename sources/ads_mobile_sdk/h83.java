package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class h83 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public h83(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new g83((f0) this.a.get(), (ur3) this.b.get(), (tx) this.c.get());
    }
}
