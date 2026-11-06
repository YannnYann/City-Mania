package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes.dex */
public final class kz implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        CoroutineContext context = (CoroutineContext) this.a.get();
        Intrinsics.checkNotNullParameter(context, "context");
        return (CoroutineScope) kq2.b(CoroutineScopeKt.CoroutineScope(context.plus(SupervisorKt.SupervisorJob$default(null, 1, null))));
    }

    public kz(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
