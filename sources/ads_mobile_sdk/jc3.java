package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class jc3 extends x93 {
    public final /* synthetic */ kc3 b;

    public jc3(kc3 kc3Var) {
        this.b = kc3Var;
    }

    @Override // ads_mobile_sdk.x93
    public final void a() {
        lc3 lc3Var = this.b.a;
        lc3Var.b.a("unlinkToDeath", new Object[0]);
        lc3Var.n.asBinder().unlinkToDeath(lc3Var.k, 0);
        lc3 lc3Var2 = this.b.a;
        lc3Var2.n = null;
        lc3Var2.g = false;
    }
}
