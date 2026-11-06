package ads_mobile_sdk;

import android.os.SystemClock;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class g93 implements SignalCallbacks {
    public final long a;
    public final tx b;
    public final CancellableContinuation c;
    public final m83 d;
    public final AtomicBoolean e;

    public g93(String adapterName, u83 adapterProxy, long j, tx clock, CancellableContinuationImpl continuation) {
        Intrinsics.checkNotNullParameter(adapterName, "adapterName");
        Intrinsics.checkNotNullParameter(adapterProxy, "adapterProxy");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        this.a = j;
        this.b = clock;
        this.c = continuation;
        this.d = new m83(adapterName, adapterProxy.b().toString(), adapterProxy.a().toString(), null, null, 120);
        this.e = new AtomicBoolean(false);
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        a(adError.getMessage());
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (this.e.getAndSet(true)) {
            return;
        }
        m83 m83Var = this.d;
        m83Var.d = signals;
        m83Var.f = 0;
        Duration.Companion companion = Duration.Companion;
        this.b.getClass();
        m83Var.g = Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(Duration.m2896minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.a)));
        CancellableContinuation cancellableContinuation = this.c;
        Result.Companion companion2 = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(this.d));
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String failure) {
        Intrinsics.checkNotNullParameter(failure, "failure");
        a(failure);
    }

    public final void a(String str) {
        if (this.e.getAndSet(true)) {
            return;
        }
        m83 m83Var = this.d;
        m83Var.f = 2;
        Duration.Companion companion = Duration.Companion;
        this.b.getClass();
        m83Var.g = Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(Duration.m2896minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.a)));
        m83Var.e = str;
        CancellableContinuation cancellableContinuation = this.c;
        Result.Companion companion2 = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(this.d));
    }
}
