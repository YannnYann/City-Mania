package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class lm2 extends vz0.a implements uw1 {
    public final void a(boolean z) {
        d();
        nm2 nm2Var = (nm2) this.b;
        nm2Var.bitField0_ |= 1;
        nm2Var.cacheHit_ = z;
    }

    public final void b(boolean z) {
        d();
        nm2 nm2Var = (nm2) this.b;
        nm2Var.bitField0_ |= 2;
        nm2Var.isFromPreviousSession_ = z;
    }

    public final void a(mm2 mm2Var) {
        d();
        nm2 nm2Var = (nm2) this.b;
        nm2Var.getClass();
        nm2Var.cacheMissReason_ = mm2Var.getNumber();
        nm2Var.bitField0_ |= 4;
    }

    public final void b(int i) {
        d();
        nm2 nm2Var = (nm2) this.b;
        nm2Var.bitField0_ |= 8;
        nm2Var.numRequestedAds_ = i;
    }

    public final void a(int i) {
        d();
        nm2 nm2Var = (nm2) this.b;
        nm2Var.bitField0_ |= 16;
        nm2Var.numAdsInCachedResponse_ = i;
    }

    public final void a(long j) {
        d();
        nm2 nm2Var = (nm2) this.b;
        nm2Var.bitField0_ |= 32;
        nm2Var.timeInCacheMs_ = j;
    }

    public lm2() {
        super(nm2.DEFAULT_INSTANCE);
    }
}
