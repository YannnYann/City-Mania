package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;

/* JADX INFO: loaded from: classes.dex */
public final class tv2 extends vz0.a implements uw1 {
    public final void a(long j) {
        d();
        uv2 uv2Var = (uv2) this.b;
        uv2Var.bitField0_ |= 64;
        uv2Var.appStartProgramUpdateDelayMs_ = j;
    }

    public final void b(long j) {
        d();
        uv2 uv2Var = (uv2) this.b;
        uv2Var.bitField0_ |= 256;
        uv2Var.maxRetryCount_ = j;
    }

    public final void c(long j) {
        d();
        uv2 uv2Var = (uv2) this.b;
        uv2Var.bitField0_ |= 16;
        uv2Var.programAlmostExpiredMs_ = j;
    }

    public final void d(long j) {
        d();
        uv2 uv2Var = (uv2) this.b;
        uv2Var.bitField0_ |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
        uv2Var.retryBaseIntervalMs_ = j;
    }

    public final void a(boolean z) {
        d();
        uv2 uv2Var = (uv2) this.b;
        uv2Var.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        uv2Var.enableRetryDownload_ = z;
    }

    public final void b(boolean z) {
        d();
        uv2 uv2Var = (uv2) this.b;
        uv2Var.bitField0_ |= 4;
        uv2Var.updateBeforeInitialization_ = z;
    }

    public final void a(String str) {
        d();
        ((uv2) this.b).b(str);
    }

    public tv2() {
        super(uv2.DEFAULT_INSTANCE);
    }
}
