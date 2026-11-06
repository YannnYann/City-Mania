package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public final class rt extends vz0.a implements uw1 {
    public final void a(int i) {
        d();
        wt wtVar = (wt) this.b;
        wtVar.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        wtVar.adapterBehaviorBitmap_ = i;
    }

    public final void b(String str) {
        d();
        ((wt) this.b).c(str);
    }

    public final void b(vt vtVar) {
        d();
        ((wt) this.b).b(vtVar);
    }

    public final void a(String str) {
        d();
        ((wt) this.b).b(str);
    }

    public final void a(vt vtVar) {
        d();
        ((wt) this.b).a(vtVar);
    }

    public final void a(tt ttVar) {
        d();
        ((wt) this.b).a(ttVar);
    }

    public final void a(long j) {
        d();
        wt wtVar = (wt) this.b;
        wtVar.bitField0_ |= 64;
        wtVar.latencyMs_ = j;
    }

    public rt() {
        super(wt.DEFAULT_INSTANCE);
    }

    public final String h() {
        return ((wt) this.b).adapterClassName_;
    }
}
