package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class x90 extends vz0.a implements uw1 {
    public final x90 a(String str) {
        d();
        ((y90) this.b).b(str);
        return this;
    }

    public final x90 a(a90 a90Var) {
        d();
        ((y90) this.b).a(a90Var);
        return this;
    }

    public final x90 a(int i) {
        d();
        y90 y90Var = (y90) this.b;
        y90Var.bitField0_ |= 1;
        y90Var.id_ = i;
        return this;
    }

    public x90() {
        super(y90.DEFAULT_INSTANCE);
    }

    public final x90 a(w90 w90Var) {
        d();
        y90 y90Var = (y90) this.b;
        y90Var.getClass();
        y90Var.adResourceType_ = w90Var.a;
        y90Var.bitField0_ |= 64;
        return this;
    }
}
