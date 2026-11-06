package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class vt1 extends vz0.a implements uw1 {
    public final void a(long j) {
        d();
        wt1 wt1Var = (wt1) this.b;
        wt1Var.bitField0_ |= 4;
        wt1Var.logBufferSize_ = j;
    }

    public final void b(long j) {
        d();
        wt1 wt1Var = (wt1) this.b;
        wt1Var.bitField0_ |= 8;
        wt1Var.logIntervalMs_ = j;
    }

    public final void a(float f) {
        d();
        wt1 wt1Var = (wt1) this.b;
        wt1Var.bitField0_ |= 2;
        wt1Var.logSampleRate_ = f;
    }

    public final void a(String str) {
        d();
        ((wt1) this.b).b(str);
    }

    public vt1() {
        super(wt1.DEFAULT_INSTANCE);
    }
}
