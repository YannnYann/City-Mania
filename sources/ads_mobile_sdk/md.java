package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class md implements ld {
    public final v3 a;
    public final AtomicBoolean b;

    public md(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
        this.b = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        if (ey3Var.b && this.b.compareAndSet(false, true)) {
            Object objR = this.a.r(continuation);
            return objR == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
