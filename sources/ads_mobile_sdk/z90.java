package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class z90 extends vz0.a implements uw1 {
    public final void a(String str) {
        d();
        ((aa0) this.b).b(str);
    }

    public final void a(boolean z) {
        d();
        aa0 aa0Var = (aa0) this.b;
        aa0Var.bitField0_ |= 4;
        aa0Var.isInstantApps_ = z;
    }

    public z90() {
        super(aa0.DEFAULT_INSTANCE);
    }
}
