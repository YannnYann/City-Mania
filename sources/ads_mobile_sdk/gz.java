package ads_mobile_sdk;

import java.util.concurrent.ExecutorService;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public final class gz implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        sz concurrencyObjects = (sz) this.a.get();
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        return (CoroutineContext) kq2.b(ExecutorsKt.from((ExecutorService) concurrencyObjects.c).plus(new rs3()));
    }

    public gz(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
