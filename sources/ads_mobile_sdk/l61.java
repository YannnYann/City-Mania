package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class l61 implements HsdpDeepLinkService.HsdpDeepLinkServiceListener {
    public final /* synthetic */ CancellableContinuation a;
    public final /* synthetic */ AtomicBoolean b;

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceEnded() {
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceStarted() {
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDeepLinkStarted() {
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDismissed(Bundle event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.a.isActive() && this.b.compareAndSet(false, true)) {
            CancellableContinuation cancellableContinuation = this.a;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onError(Bundle event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.a.isActive() && this.b.compareAndSet(false, true)) {
            CancellableContinuation cancellableContinuation = this.a;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(ResultKt.createFailure(new Exception("HSDP open failed: " + event))));
        }
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onShown(Bundle event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.a.isActive() && this.b.compareAndSet(false, true)) {
            CancellableContinuation cancellableContinuation = this.a;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(Unit.INSTANCE));
        }
    }

    public l61(AtomicBoolean atomicBoolean, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = cancellableContinuationImpl;
        this.b = atomicBoolean;
    }
}
