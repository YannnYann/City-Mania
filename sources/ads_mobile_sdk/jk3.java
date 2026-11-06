package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class jk3 implements dw2 {
    public static final Object c = new Object();
    public volatile dw2 a;
    public volatile Object b = c;

    public jk3(jr0 jr0Var) {
        this.a = jr0Var;
    }

    public static dw2 a(jr0 jr0Var) {
        return ((jr0Var instanceof jk3) || (jr0Var instanceof do0)) ? jr0Var : new jk3(jr0Var);
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Object obj = this.b;
        if (obj != c) {
            return obj;
        }
        dw2 dw2Var = this.a;
        if (dw2Var == null) {
            return this.b;
        }
        Object obj2 = dw2Var.get();
        this.b = obj2;
        this.a = null;
        return obj2;
    }
}
