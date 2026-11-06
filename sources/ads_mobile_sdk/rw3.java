package ads_mobile_sdk;

import com.google.common.base.Function;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class rw3 {
    public final vv2 a;
    public final xu2 b;
    public final wl3 c;
    public final ts3 d;
    public final ja3 e;
    public final boolean f;
    public final long g;
    public final long h;

    public static /* synthetic */ iv2 a(Throwable th) {
        return null;
    }

    public rw3(vv2 vv2Var, xu2 xu2Var, wl3 wl3Var, ts3 ts3Var, ja3 ja3Var, boolean z, long j, long j2) {
        this.a = vv2Var;
        this.b = xu2Var;
        this.c = wl3Var;
        this.d = ts3Var;
        this.e = ja3Var;
        this.f = z;
        this.g = j;
        this.h = j2;
    }

    public final ListenableFuture c(final int i) {
        return this.d.a(lq0.EVENT_ID_PRIMARY_UPDATE_PROGRAM, FluentFuture.from(this.b.a()).transform(new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((pr0) obj);
            }
        }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda6
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.b((pr0) obj);
            }
        }, MoreExecutors.directExecutor()).transform(new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda7
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return qw3.RESULT_UPDATED;
            }
        }, MoreExecutors.directExecutor()).catching(ow3.class, new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda8
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return qw3.RESULT_FAILURE_INVALID_RESPONSE;
            }
        }, MoreExecutors.directExecutor()).catching(pw3.class, new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda9
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return qw3.RESULT_NOOP_NO_NEW_PROGRAM;
            }
        }, MoreExecutors.directExecutor()).catching(nw3.class, new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda10
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a(i, (nw3) obj);
            }
        }, MoreExecutors.directExecutor()));
    }

    public final void b(final int i) {
        if (!this.f || i >= this.g) {
            return;
        }
        this.e.a(new Runnable() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i);
            }
        }, this.h * ((long) Math.pow(2.0d, i)));
    }

    public final pr0 a(pr0 pr0Var) {
        switch (pr0Var.x()) {
            case STATUS_UNKNOWN:
            case STATUS_FAILURE_ARCHITECTURE_NOT_SUPPORTED:
            case STATUS_FAILURE_INVALID_RESPONSE_DECODE_FAILURE:
            case STATUS_FAILURE_INVALID_RESPONSE_HTTP_ERROR:
            case STATUS_FAILURE_INVALID_RESPONSE_EMPTY_BYTECODE:
            case STATUS_FAILURE_INVALID_RESPONSE_PROTO_ERROR:
            case STATUS_FAILURE_INVALID_RESPONSE_PROTO_ERROR_NPE:
            case STATUS_FAILURE_INVALID_RESPONSE_PROGRAM_VALIDATION_FAILED:
            case STATUS_FAILURE_INVALID_RESPONSE_SIGNATURE_VALIDATION_FAILED:
                ts3 ts3Var = this.d;
                lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
                ((st1) ts3Var.a).a(1004, -1L, null, pr0Var.x().a + "");
                throw new ow3(pr0Var.x().a);
            case STATUS_UPDATE_PROGRAM_BYTECODE:
            case STATUS_UPDATE_VM_AND_PROGRAM_BYTECODE:
                return pr0Var;
            case STATUS_NO_UPDATE:
                ts3 ts3Var2 = this.d;
                lq0 lq0Var2 = lq0.EVENT_ID_UNSPECIFIED;
                ((st1) ts3Var2.a).a(IronSourceError.AUCTION_ERROR_DECRYPTION, -1L, null, pr0Var.x().a + "");
                throw new pw3(pr0Var.x().a);
            case STATUS_FAILURE_INVALID_RESPONSE_HTTP_RUNTIME_EXCEPTION:
                ts3 ts3Var3 = this.d;
                lq0 lq0Var3 = lq0.EVENT_ID_UNSPECIFIED;
                ((st1) ts3Var3.a).a(1004, -1L, null, pr0Var.x().a + "");
                throw new nw3(pr0Var.x().a);
            default:
                throw new IncompatibleClassChangeError();
        }
    }

    public final ListenableFuture b(pr0 pr0Var) {
        if (pr0Var.x() == ul3.STATUS_UPDATE_PROGRAM_BYTECODE) {
            return this.c.a(pr0Var.w(), pr0Var.v().i());
        }
        if (pr0Var.x() == ul3.STATUS_UPDATE_VM_AND_PROGRAM_BYTECODE) {
            return this.c.a(pr0Var.w(), pr0Var.y().i(), pr0Var.v().i());
        }
        throw new AssertionError("Unreachable");
    }

    public final /* synthetic */ void a(int i) {
        c(i + 1);
    }

    public final ListenableFuture a(Boolean bool) {
        if (!bool.booleanValue()) {
            this.d.b(lq0.EVENT_ID_PRIMARY_UPDATE_PROGRAM_NOOP_LOCAL_PROGRAM_STILL_VALID);
            return Futures.immediateFuture(qw3.RESULT_NOOP_LOCAL_PROGRAM_STILL_VALID);
        }
        return c(0);
    }

    public final /* synthetic */ qw3 a(int i, nw3 nw3Var) {
        b(i);
        return qw3.RESULT_FAILURE_FETCHER_HTTP_RUNTIME_EXCEPTION;
    }

    public final ListenableFuture a() {
        FluentFuture fluentFutureCatching = FluentFuture.from(this.c.a()).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return rw3.a((Throwable) obj);
            }
        }, MoreExecutors.directExecutor());
        final vv2 vv2Var = this.a;
        Objects.requireNonNull(vv2Var);
        return fluentFutureCatching.transform(new Function() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(vv2Var.a((iv2) obj));
            }
        }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda4
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a((Boolean) obj);
            }
        }, MoreExecutors.directExecutor());
    }

    public final void a(long j) {
        if (j > 0) {
            this.e.a(new Runnable() { // from class: ads_mobile_sdk.rw3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a();
                }
            }, j);
        } else {
            a();
        }
    }
}
