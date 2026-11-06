package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class sc1 implements InitializationCompleteCallback {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ CancellableContinuation b;

    public sc1(AtomicBoolean atomicBoolean, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = atomicBoolean;
        this.b = cancellableContinuationImpl;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(AdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(new m01(error.toString(), kk1.m)));
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(new q01(Unit.INSTANCE)));
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(new m01(error, kk1.m)));
    }
}
