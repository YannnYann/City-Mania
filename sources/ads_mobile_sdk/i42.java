package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class i42 extends vz0.a implements uw1 {
    public final void a(int i) {
        d();
        j42 j42Var = (j42) this.b;
        j42Var.bitField0_ |= 1;
        j42Var.sccgDir_ = i;
    }

    public final void h() {
        d();
        j42 j42Var = (j42) this.b;
        j42Var.bitField0_ |= 2;
        j42Var.sccgTap_ = true;
    }

    public i42() {
        super(j42.DEFAULT_INSTANCE);
    }
}
