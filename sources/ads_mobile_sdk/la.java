package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;

/* JADX INFO: loaded from: classes.dex */
public final class la extends vz0.a implements uw1 {
    public final void a(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 4;
        naVar.allowFallback_ = z;
    }

    public final void b(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 8;
        naVar.allowFallbackToStaticProgram_ = z;
    }

    public final void c(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 134217728;
        naVar.cancelQueuedSignalTaskOnTimeout_ = z;
    }

    public final void d(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 2097152;
        naVar.clearDgArgsAfterUse_ = z;
    }

    public final void e(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 67108864;
        naVar.enableAsyncInputEventProcessing_ = z;
    }

    public final void f(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        naVar.enableGassClient_ = z;
    }

    public final void g(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 8388608;
        naVar.enableLazyScheduler_ = z;
    }

    public final void h(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 1048576;
        naVar.enableMinimalAppStartQuerySignals_ = z;
    }

    public final void i(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 16777216;
        naVar.enableMinimalCerSignal_ = z;
    }

    public final void j(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
        naVar.enableViewstringBinding_ = z;
    }

    public final void k(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 16;
        naVar.forceInitializeWithStaticProgram_ = z;
    }

    public final void l(boolean z) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 33554432;
        naVar.skipProgramUpdateWithStaticProgram_ = z;
    }

    public final void h() {
        ma maVar = ma.GMA;
        d();
        na naVar = (na) this.b;
        naVar.getClass();
        naVar.hostType_ = maVar.getNumber();
        naVar.bitField0_ |= 64;
    }

    public final void a(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 1024;
        naVar.appStartQuerySignalsTimeoutMs_ = j;
    }

    public final void b(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 524288;
        naVar.appStartWindowMs_ = j;
    }

    public final void c(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 8192;
        naVar.gassSignalTimeoutMs_ = j;
    }

    public final void d(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 32768;
        naVar.httpRequestTimeoutMs_ = j;
    }

    public final void e(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 16384;
        naVar.localIntSignalTimeoutMs_ = j;
    }

    public final void f(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= 262144;
        naVar.methodTimeoutMs_ = j;
    }

    public final void g(long j) {
        d();
        na naVar = (na) this.b;
        naVar.bitField0_ |= com.ironsource.mediationsdk.metadata.a.o;
        naVar.signalsTimeoutMs_ = j;
    }

    public final void a(String str) {
        d();
        ((na) this.b).b(str);
    }

    public final void c(String str) {
        d();
        ((na) this.b).d(str);
    }

    public final void a(kb kbVar) {
        d();
        na naVar = (na) this.b;
        naVar.getClass();
        naVar.fallbackAdshieldVersion_ = kbVar.a;
        naVar.bitField0_ |= 2;
    }

    public final void a(wt1 wt1Var) {
        d();
        ((na) this.b).a(wt1Var);
    }

    public final void a(uv2 uv2Var) {
        d();
        ((na) this.b).a(uv2Var);
    }

    public la() {
        super(na.DEFAULT_INSTANCE);
    }

    public final la b(String str) {
        d();
        ((na) this.b).c(str);
        return this;
    }

    public final void b(kb kbVar) {
        d();
        na naVar = (na) this.b;
        naVar.getClass();
        naVar.requestedAdshieldVersion_ = kbVar.a;
        naVar.bitField0_ |= 1;
    }
}
