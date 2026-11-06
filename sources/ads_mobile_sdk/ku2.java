package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ku2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public ku2(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ks1 ks1VarA = do0.a(this.a);
        ks1 ks1VarA2 = do0.a(this.b);
        ks1 ks1VarA3 = do0.a(this.c);
        na naVar = (na) this.d.get();
        return new ju2(ks1VarA, ks1VarA2, ks1VarA3, naVar.S().C(), naVar.S().v(), naVar.J(), naVar.V());
    }
}
