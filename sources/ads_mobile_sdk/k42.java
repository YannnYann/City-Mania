package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class k42 extends vz0.a implements uw1 {
    public final void h() {
        d();
        l42 l42Var = (l42) this.b;
        l42Var.bitField0_ |= 2;
        l42Var.clickToExpandRequested_ = true;
    }

    public final void i() {
        d();
        l42 l42Var = (l42) this.b;
        l42Var.bitField0_ |= 4;
        l42Var.customControlsRequested_ = true;
    }

    public final void j() {
        d();
        l42 l42Var = (l42) this.b;
        l42Var.bitField0_ |= 1;
        l42Var.startMuted_ = true;
    }

    public k42() {
        super(l42.DEFAULT_INSTANCE);
    }
}
