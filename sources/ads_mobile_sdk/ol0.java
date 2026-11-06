package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ol0 implements jr0 {
    public dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw2 dw2Var = this.a;
        if (dw2Var != null) {
            return dw2Var.get();
        }
        throw new IllegalStateException();
    }

    public static void a(dw2 dw2Var, dw2 dw2Var2) {
        ol0 ol0Var = (ol0) dw2Var;
        if (ol0Var.a == null) {
            ol0Var.a = dw2Var2;
            return;
        }
        throw new IllegalStateException();
    }
}
