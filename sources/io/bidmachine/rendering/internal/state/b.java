package io.bidmachine.rendering.internal.state;

import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.state.a;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements CoroutineScope, a.b {
    public final a a;
    public final CoroutineContext b;

    public b(a adState, j coroutineDispatchers) {
        Intrinsics.checkNotNullParameter(adState, "adState");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.a = adState;
        this.b = SupervisorKt.SupervisorJob$default(null, 1, null).plus(coroutineDispatchers.e());
        if (adState.l()) {
            CoroutineScopeKt.cancel$default(this, null, 1, null);
        } else {
            adState.a(this);
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a.b
    public void a(a source, a.EnumC1205a event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == a.EnumC1205a.Destroyed && Intrinsics.areEqual(this.a, source)) {
            CoroutineScopeKt.cancel$default(this, null, 1, null);
            source.b(this);
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.b;
    }
}
