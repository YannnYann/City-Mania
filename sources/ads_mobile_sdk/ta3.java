package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ta3 extends vz0.a implements uw1 {
    public final void a(String str) {
        d();
        ((ua3) this.b).b(str);
    }

    public final void b(String str) {
        d();
        ((ua3) this.b).c(str);
    }

    public final void a(long j) {
        d();
        ua3 ua3Var = (ua3) this.b;
        ua3Var.bitField0_ |= 8;
        ua3Var.jseLastUpdateTimeMs_ = j;
    }

    public final void b(long j) {
        d();
        ua3 ua3Var = (ua3) this.b;
        ua3Var.bitField0_ |= 2;
        ua3Var.lastUpdateTimeMs_ = j;
    }

    public ta3() {
        super(ua3.DEFAULT_INSTANCE);
    }
}
