package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public final class nz implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public nz(dw2 dw2Var, ol0 ol0Var) {
        this.a = dw2Var;
        this.b = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        sz concurrencyObjects = (sz) this.a.get();
        c01 exceptionHandler = (c01) this.b.get();
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(exceptionHandler, "exceptionHandler");
        return (CoroutineContext) kq2.b(ExecutorsKt.from((ExecutorService) concurrencyObjects.h).plus(exceptionHandler).plus(new rs3()));
    }
}
