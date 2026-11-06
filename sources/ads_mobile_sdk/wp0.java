package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class wp0 extends vz0.a implements uw1 {
    public final void a(String str) {
        d();
        ((xp0) this.b).b(str);
    }

    public final void a(long j) {
        d();
        xp0 xp0Var = (xp0) this.b;
        xp0Var.bitField0_ |= 2;
        xp0Var.timestampMs_ = j;
    }

    public wp0() {
        super(xp0.DEFAULT_INSTANCE);
    }
}
