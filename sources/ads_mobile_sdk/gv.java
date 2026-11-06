package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class gv extends vz0.a implements uw1 {
    public final void a(int i) {
        d();
        ((hv) this.b).numPreloadedAds_ = i;
    }

    public final void b(int i) {
        d();
        ((hv) this.b).numPreloaders_ = i;
    }

    public final void c(int i) {
        d();
        ((hv) this.b).preloaderMaxBufferSize_ = i;
    }

    public final void d(int i) {
        d();
        ((hv) this.b).preloaderNumAdsAvailable_ = i;
    }

    public final void e(int i) {
        d();
        ((hv) this.b).totalInflightAdLimit_ = i;
    }

    public final void a(t11 t11Var) {
        d();
        hv hvVar = (hv) this.b;
        hvVar.getClass();
        hvVar.preloaderFormat_ = t11Var.getNumber();
    }

    public final void a(boolean z) {
        d();
        ((hv) this.b).preloaderInFlight_ = z;
    }

    public final void a(String str) {
        d();
        ((hv) this.b).b(str);
    }

    public gv() {
        super(hv.DEFAULT_INSTANCE);
    }
}
