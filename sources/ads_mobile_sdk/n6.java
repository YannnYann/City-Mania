package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class n6 extends vz0.a implements uw1 {
    public final void a(long j) {
        d();
        o6 o6Var = (o6) this.b;
        yh1.e eVar = o6Var.adClickTimestampsMs_;
        if (!eVar.b()) {
            o6Var.adClickTimestampsMs_ = vz0.a(eVar);
        }
        o6Var.adClickTimestampsMs_.a(j);
    }

    public final void b(long j) {
        d();
        o6 o6Var = (o6) this.b;
        yh1.e eVar = o6Var.appBackgroundTimestampsMs_;
        if (!eVar.b()) {
            o6Var.appBackgroundTimestampsMs_ = vz0.a(eVar);
        }
        o6Var.appBackgroundTimestampsMs_.a(j);
    }

    public final void c(long j) {
        d();
        o6 o6Var = (o6) this.b;
        yh1.e eVar = o6Var.appForegroundTimestampsMs_;
        if (!eVar.b()) {
            o6Var.appForegroundTimestampsMs_ = vz0.a(eVar);
        }
        o6Var.appForegroundTimestampsMs_.a(j);
    }

    public final void d(long j) {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 64;
        o6Var.adClosedTimestampMs_ = j;
    }

    public final void e(long j) {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 1;
        o6Var.adDurationInMs_ = j;
    }

    public final void g(long j) {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 32;
        o6Var.appKillTimestampMs_ = j;
    }

    public final void h() {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.getClass();
        o6Var.adClickTimestampsMs_ = vz0.j();
    }

    public final void q() {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 4;
        o6Var.isAdQuit_ = true;
    }

    public final void r() {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 8;
        o6Var.isOsKill_ = true;
    }

    public final void h(long j) {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 16;
        o6Var.totalDurationSpentOutsideAppInMs_ = j;
    }

    public final void a(List list) {
        d();
        o6 o6Var = (o6) this.b;
        yh1.f fVar = o6Var.adQualityUrls_;
        if (!fVar.b()) {
            o6Var.adQualityUrls_ = vz0.a(fVar);
        }
        f.a(list, o6Var.adQualityUrls_);
    }

    public final void a(int i) {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.bitField0_ |= 2;
        o6Var.adBounceCount_ = i;
    }

    public n6() {
        super(o6.DEFAULT_INSTANCE);
    }

    public final n6 a(String str) {
        d();
        ((o6) this.b).b(str);
        return this;
    }

    public final int j() {
        return ((o6) this.b).adBounceCount_;
    }

    public final long p() {
        return ((o6) this.b).totalDurationSpentOutsideAppInMs_;
    }

    public final long m() {
        return ((o6) this.b).adStartTimestampMs_;
    }

    public final n6 f(long j) {
        d();
        ((o6) this.b).adStartTimestampMs_ = j;
        return this;
    }

    public final List o() {
        return Collections.unmodifiableList(((o6) this.b).appBackgroundTimestampsMs_);
    }

    public final int n() {
        return ((o6) this.b).appBackgroundTimestampsMs_.size();
    }

    public final List l() {
        return Collections.unmodifiableList(((o6) this.b).adClickTimestampsMs_);
    }

    public final int k() {
        return ((o6) this.b).adClickTimestampsMs_.size();
    }

    public final n6 i() {
        d();
        o6 o6Var = (o6) this.b;
        o6Var.getClass();
        o6Var.adQualityUrls_ = vz0.k();
        return this;
    }
}
