package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ft1 extends vz0.a implements uw1 {
    public final void a(String str) {
        d();
        ((gt1) this.b).b(str);
    }

    public ft1() {
        super(gt1.DEFAULT_INSTANCE);
    }

    public final ft1 b(long j) {
        d();
        gt1 gt1Var = (gt1) this.b;
        gt1Var.bitField0_ |= 1;
        gt1Var.eventId_ = j;
        return this;
    }

    public final ft1 c(long j) {
        d();
        gt1 gt1Var = (gt1) this.b;
        gt1Var.bitField0_ |= 2;
        gt1Var.runtimeMs_ = j;
        return this;
    }

    public final void c(String str) {
        d();
        ((gt1) this.b).d(str);
    }

    public final ft1 a(long j) {
        d();
        gt1 gt1Var = (gt1) this.b;
        gt1Var.bitField0_ |= 32;
        gt1Var.eventCount_ = j;
        return this;
    }

    public final void a(vl3 vl3Var) {
        d();
        gt1 gt1Var = (gt1) this.b;
        gt1Var.getClass();
        gt1Var.status_ = vl3Var.a;
        gt1Var.bitField0_ |= 4;
    }

    public final ft1 b(String str) {
        d();
        ((gt1) this.b).c(str);
        return this;
    }
}
