package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes.dex */
public final class hz implements jr0 {
    public final dw2 a;

    public hz(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        CoroutineContext context = (CoroutineContext) this.a.get();
        Intrinsics.checkNotNullParameter(context, "context");
        return (CoroutineScope) kq2.b(CoroutineScopeKt.CoroutineScope(context.plus(SupervisorKt.SupervisorJob$default(null, 1, null))));
    }
}
