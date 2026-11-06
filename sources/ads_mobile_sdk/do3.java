package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: loaded from: classes.dex */
public final class do3 implements bv1 {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ CancellableContinuation b;
    public final /* synthetic */ io3 c;

    public final void a(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(new l01(new MediationAdError(adError.getCode(), adError.getMessage(), adError.getDomain()))));
    }

    public do3(io3 io3Var, AtomicBoolean atomicBoolean, CancellableContinuation cancellableContinuation) {
        this.a = atomicBoolean;
        this.b = cancellableContinuation;
        this.c = io3Var;
    }

    public final void f() {
        if (this.a.getAndSet(true)) {
            return;
        }
        CancellableContinuation cancellableContinuation = this.b;
        Result.Companion companion = Result.Companion;
        cancellableContinuation.resumeWith(Result.m2760constructorimpl(new q01(Unit.INSTANCE)));
    }
}
