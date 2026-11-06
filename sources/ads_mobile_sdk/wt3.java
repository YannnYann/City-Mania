package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class wt3 extends z81 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final CoroutineScope a;
    public final Context b;
    public final ur3 c;
    public final ut3 d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final CompletableDeferred h;

    public wt3(CoroutineScope backgroundScope, Context context, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = backgroundScope;
        this.b = context;
        this.c = traceLogger;
        this.d = new ut3(this, context, Looper.getMainLooper());
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.st3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.st3 r0 = (ads_mobile_sdk.st3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.st3 r0 = new ads_mobile_sdk.st3
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            ads_mobile_sdk.wt3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L64
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L36:
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L3a:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.e
            boolean r8 = r8.getAndSet(r4)
            if (r8 == 0) goto L51
            kotlinx.coroutines.CompletableDeferred r8 = r7.h
            r0.d = r4
            java.lang.Object r8 = r8.await(r0)
            if (r8 != r1) goto L50
            goto L62
        L50:
            return r8
        L51:
            ads_mobile_sdk.ut3 r8 = r7.d
            r8.checkAvailabilityAndConnect()
            kotlinx.coroutines.CompletableDeferred r8 = r7.h
            r0.a = r7
            r0.d = r3
            java.lang.Object r8 = r8.await(r0)
            if (r8 != r1) goto L63
        L62:
            return r1
        L63:
            r0 = r7
        L64:
            ads_mobile_sdk.v01 r8 = (ads_mobile_sdk.v01) r8
            kotlinx.coroutines.CoroutineScope r1 = r0.a
            ads_mobile_sdk.tt3 r4 = new ads_mobile_sdk.tt3
            r2 = 0
            r4.<init>(r0, r2)
            r5 = 3
            r6 = 0
            r3 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.wt3.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        m01 m01Var = new m01("Failed to connect to GMSCore. Code: " + result.getErrorCode() + ", message: " + result.getErrorMessage());
        if (this.f.getAndSet(true)) {
            return;
        }
        this.h.complete(m01Var);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        if (this.g.getAndSet(true)) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new vt3(this, null), 3, null);
    }

    public final void a(oq0 exceptionParcel) {
        Intrinsics.checkNotNullParameter(exceptionParcel, "exceptionParcel");
        m01 m01Var = new m01(exceptionParcel.b() + ". Error code: " + exceptionParcel.a());
        if (this.f.getAndSet(true)) {
            return;
        }
        this.h.complete(m01Var);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        m01 m01Var = new m01("GMSCore connection suspended. Code: " + i);
        if (this.f.getAndSet(true)) {
            return;
        }
        this.h.complete(m01Var);
    }
}
