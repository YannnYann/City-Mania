package ads_mobile_sdk;

import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class is implements ox0 {
    public final WeakReference a;
    public final f0 b;

    public is(WeakReference monitorReference, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(monitorReference, "monitorReference");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = monitorReference;
        this.b = activityTracker;
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) throws InterruptedException {
        ms msVar = (ms) this.a.get();
        if (msVar != null) {
            Object objB = msVar.b(j, continuation);
            return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
        }
        this.b.a(this);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) throws InterruptedException {
        ms msVar = (ms) this.a.get();
        if (msVar != null) {
            Object objD = msVar.d(j, continuation);
            return objD == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objD : Unit.INSTANCE;
        }
        this.b.a(this);
        return Unit.INSTANCE;
    }
}
