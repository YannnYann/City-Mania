package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jz3 implements vm2 {
    public final qn a;
    public final AtomicBoolean b;

    public jz3(qn appState, AtomicBoolean isLiveCountDecremented) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(isLiveCountDecremented, "isLiveCountDecremented");
        this.a = appState;
        this.b = isLiveCountDecremented;
    }

    @Override // ads_mobile_sdk.vm2
    public final Object b(Continuation continuation) {
        if (!this.b.getAndSet(true)) {
            rs1 rs1Var = (rs1) this.a.a;
            rs1Var.c = rs1Var.b.decrementAndGet();
        }
        return Unit.INSTANCE;
    }
}
