package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ng1 extends vz0.a implements uw1 {
    public final void a(String str) {
        d();
        ((og1) this.b).b(str);
    }

    public final void b(String str) {
        d();
        ((og1) this.b).c(str);
    }

    public final void c(boolean z) {
        d();
        ((og1) this.b).isTestMode_ = z;
    }

    public final void d(String str) {
        d();
        ((og1) this.b).e(str);
    }

    public final void a(vd1 vd1Var) {
        d();
        og1 og1Var = (og1) this.b;
        og1Var.getClass();
        og1Var.gesture_ = vd1Var.getNumber();
    }

    public final void b(boolean z) {
        d();
        ((og1) this.b).isLinkedDevice_ = z;
    }

    public final void c(String str) {
        d();
        ((og1) this.b).d(str);
    }

    public final void a(boolean z) {
        d();
        ((og1) this.b).isGloballyAllowlisted_ = z;
    }

    public final void a(long j) {
        d();
        ((og1) this.b).networkExtrasExpirationSecs_ = j;
    }

    public ng1() {
        super(og1.DEFAULT_INSTANCE);
    }
}
