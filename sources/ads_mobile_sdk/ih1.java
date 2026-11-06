package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ih1 extends vz0.a implements uw1 {
    public final void a(boolean z) {
        d();
        ((kh1) this.b).googlePlayInstant_ = z;
    }

    public final void b(long j) {
        d();
        ((kh1) this.b).installBeginTimestampServerSeconds_ = j;
    }

    public final void c(long j) {
        d();
        ((kh1) this.b).referrerClickTimestampSeconds_ = j;
    }

    public final void d(long j) {
        d();
        ((kh1) this.b).referrerClickTimestampServerSeconds_ = j;
    }

    public final void a(long j) {
        d();
        ((kh1) this.b).installBeginTimestampSeconds_ = j;
    }

    public final void b(String str) {
        d();
        ((kh1) this.b).c(str);
    }

    public final void a(String str) {
        d();
        ((kh1) this.b).b(str);
    }

    public final void a(jh1 jh1Var) {
        d();
        kh1 kh1Var = (kh1) this.b;
        kh1Var.getClass();
        kh1Var.installReferrerErrorCode_ = jh1Var.getNumber();
    }

    public ih1() {
        super(kh1.DEFAULT_INSTANCE);
    }
}
