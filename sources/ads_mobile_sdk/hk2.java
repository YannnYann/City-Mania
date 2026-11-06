package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class hk2 extends vz0.a implements uw1 {
    public final void a(jk2 jk2Var) {
        d();
        kk2 kk2Var = (kk2) this.b;
        kk2Var.getClass();
        kk2Var.clearReason_ = jk2Var.getNumber();
        kk2Var.bitField0_ |= 1;
    }

    public final void a(ik2 ik2Var) {
        d();
        kk2 kk2Var = (kk2) this.b;
        kk2Var.getClass();
        kk2Var.fillDisabledReason_ = ik2Var.getNumber();
        kk2Var.bitField0_ |= 4;
    }

    public final void a(int i) {
        d();
        kk2 kk2Var = (kk2) this.b;
        kk2Var.bitField0_ |= 2;
        kk2Var.numAdsCleared_ = i;
    }

    public hk2() {
        super(kk2.DEFAULT_INSTANCE);
    }
}
