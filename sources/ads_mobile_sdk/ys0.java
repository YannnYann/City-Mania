package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ys0 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ys0(ol0 ol0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xs0((g30) this.a.get(), (ls0) this.b.get());
    }
}
