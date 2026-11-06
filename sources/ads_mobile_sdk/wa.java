package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import io.bidmachine.protobuf.EventTypeExtended;

/* JADX INFO: loaded from: classes.dex */
public final class wa extends vz0.a implements uw1 {
    public final wa i() {
        mh2 mh2Var = mh2.ANDROID;
        d();
        xa xaVar = (xa) this.b;
        xaVar.getClass();
        xaVar.osType_ = mh2Var.getNumber();
        xaVar.bitField0_ |= 4096;
        return this;
    }

    public final void a(yh1.c cVar) {
        d();
        xa xaVar = (xa) this.b;
        yh1.c cVar2 = xaVar.experimentIds_;
        if (!cVar2.b()) {
            xaVar.experimentIds_ = vz0.a(cVar2);
        }
        f.a(cVar, xaVar.experimentIds_);
    }

    public final void h() {
        d();
        xa xaVar = (xa) this.b;
        xaVar.getClass();
        xaVar.logEvents_ = vz0.k();
    }

    public final void a(gt1 gt1Var) {
        d();
        ((xa) this.b).a(gt1Var);
    }

    public final void a(String str) {
        d();
        ((xa) this.b).b(str);
    }

    public wa() {
        super(xa.DEFAULT_INSTANCE);
    }

    public final wa a(long j) {
        d();
        xa xaVar = (xa) this.b;
        xaVar.bitField0_ |= 1;
        xaVar.apiLevel_ = j;
        return this;
    }

    public final void a(in0 in0Var) {
        d();
        xa xaVar = (xa) this.b;
        xaVar.getClass();
        xaVar.deviceType_ = in0Var.a;
        xaVar.bitField0_ |= 16;
    }

    public final wa f(String str) {
        d();
        ((xa) this.b).g(str);
        return this;
    }

    public final wa e(String str) {
        d();
        ((xa) this.b).f(str);
        return this;
    }

    public final wa c(String str) {
        d();
        ((xa) this.b).d(str);
        return this;
    }

    public final wa b(String str) {
        d();
        ((xa) this.b).c(str);
        return this;
    }

    public final void b(long j) {
        d();
        xa xaVar = (xa) this.b;
        xaVar.bitField0_ |= 64;
        xaVar.appVersionCode_ = j;
    }

    public final wa d(String str) {
        d();
        ((xa) this.b).e(str);
        return this;
    }

    public final void d(long j) {
        d();
        xa xaVar = (xa) this.b;
        xaVar.bitField0_ |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
        xaVar.samplingDenominator_ = j;
    }

    public final wa a(j61 j61Var) {
        d();
        xa xaVar = (xa) this.b;
        xaVar.getClass();
        xaVar.hostType_ = j61Var.getNumber();
        xaVar.bitField0_ |= com.ironsource.mediationsdk.metadata.a.o;
        return this;
    }

    public final wa c(long j) {
        d();
        xa xaVar = (xa) this.b;
        xaVar.bitField0_ |= 1024;
        xaVar.requestedAdshieldVersion_ = j;
        return this;
    }
}
