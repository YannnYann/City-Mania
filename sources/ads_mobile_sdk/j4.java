package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j4 implements vm2 {
    public final qn a;
    public final j53 b;
    public final AtomicBoolean c;
    public final AtomicBoolean d;

    public j4(qn appState, j53 requestType, AtomicBoolean isLoaded, AtomicBoolean isShowing) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(isLoaded, "isLoaded");
        Intrinsics.checkNotNullParameter(isShowing, "isShowing");
        this.a = appState;
        this.b = requestType;
        this.c = isLoaded;
        this.d = isShowing;
    }

    @Override // ads_mobile_sdk.vm2
    public final Object b(Continuation continuation) {
        if (this.c.getAndSet(false)) {
            qn qnVar = this.a;
            j53 requestType = this.b;
            qnVar.getClass();
            Intrinsics.checkNotNullParameter(requestType, "requestType");
            AtomicInteger atomicInteger = (AtomicInteger) qnVar.d.get(requestType);
            if (atomicInteger != null) {
                atomicInteger.decrementAndGet();
            }
        }
        if (this.d.getAndSet(false)) {
            qn qnVar2 = this.a;
            j53 requestType2 = this.b;
            qnVar2.getClass();
            Intrinsics.checkNotNullParameter(requestType2, "requestType");
            AtomicInteger atomicInteger2 = (AtomicInteger) qnVar2.e.get(requestType2);
            if (atomicInteger2 != null) {
                atomicInteger2.decrementAndGet();
            }
        }
        return Unit.INSTANCE;
    }
}
