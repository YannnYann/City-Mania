package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class vs1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public vs1(dw2 dw2Var, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new us1((j12) this.a.get(), (q52) this.b.get());
    }
}
