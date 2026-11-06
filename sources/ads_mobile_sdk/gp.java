package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gp implements by1 {
    public final g33 a;
    public final AtomicBoolean b;

    public gp(g33 refreshListener) {
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = refreshListener;
        this.b = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.by1
    public final Object d(Continuation continuation) {
        if (this.b.compareAndSet(false, true)) {
            Object objB = this.a.b(continuation);
            return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
