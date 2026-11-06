package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ns3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public ns3(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ms3(this.a, (e01) this.b.get(), (ex0) this.c.get(), (zw3) this.d.get(), (ja1) this.e.get());
    }
}
