package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ff3 extends vz0.a implements uw1 {
    public final void a(boolean z) {
        d();
        ((gf3) this.b).automaticRefresh_ = z;
    }

    public final void b(boolean z) {
        d();
        ((gf3) this.b).staleResultAllowed_ = z;
    }

    public ff3() {
        super(gf3.DEFAULT_INSTANCE);
    }
}
