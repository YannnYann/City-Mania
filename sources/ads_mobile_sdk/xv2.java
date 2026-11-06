package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class xv2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public xv2(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ih2((tx) this.a.get(), (ts3) this.b.get(), ((na) this.c.get()).S().z());
    }
}
