package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;

/* JADX INFO: loaded from: classes.dex */
public final class bh extends vz0.a implements uw1 {
    public final void a(rh rhVar) {
        d();
        ch chVar = (ch) this.b;
        chVar.getClass();
        chVar.isPhysicalTouch_ = rhVar.a;
        chVar.bitField0_ |= 1024;
    }

    public final void b(rh rhVar) {
        d();
        ch chVar = (ch) this.b;
        chVar.getClass();
        chVar.obscured_ = rhVar.a;
        chVar.bitField0_ |= 64;
    }

    public final void c(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 4;
        chVar.tcd_ = j;
    }

    public final void d(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 16;
        chVar.tcp_ = j;
    }

    public final void e(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        chVar.tctMs_ = j;
    }

    public final void h(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 262144;
        chVar.tcyDownSignal_ = j;
    }

    public final void j(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 256;
        chVar.toolType_ = j;
    }

    public final void k(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 32768;
        chVar.viewDxSignal_ = j;
    }

    public final void l(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 65536;
        chVar.viewDySignal_ = j;
    }

    public final void a(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 4096;
        chVar.pathDistanceSignal_ = j;
    }

    public final void b(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
        chVar.source_ = j;
    }

    public bh() {
        super(ch.DEFAULT_INSTANCE);
    }

    public final bh g(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 1;
        chVar.tcxSignal_ = j;
        return this;
    }

    public final bh i(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 2;
        chVar.tcySignal_ = j;
        return this;
    }

    public final bh m(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 8192;
        chVar.viewXSignal_ = j;
        return this;
    }

    public final bh n(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 16384;
        chVar.viewYSignal_ = j;
        return this;
    }

    public final bh f(long j) {
        d();
        ch chVar = (ch) this.b;
        chVar.bitField0_ |= 131072;
        chVar.tcxDownSignal_ = j;
        return this;
    }
}
