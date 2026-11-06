package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k4 implements ai1 {
    public final qn a;
    public final j53 b;
    public final bn2 c;
    public final AtomicBoolean d;
    public final AtomicBoolean e;

    public k4(qn appState, j53 requestType, bn2 phantomReferences) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        this.a = appState;
        this.b = requestType;
        this.c = phantomReferences;
        this.d = new AtomicBoolean(false);
        this.e = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        if (this.d.getAndSet(false)) {
            qn qnVar = this.a;
            j53 requestType = this.b;
            qnVar.getClass();
            Intrinsics.checkNotNullParameter(requestType, "requestType");
            AtomicInteger atomicInteger = (AtomicInteger) qnVar.d.get(requestType);
            if (atomicInteger != null) {
                atomicInteger.decrementAndGet();
            }
        }
        if (this.e.getAndSet(false)) {
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

    @Override // ads_mobile_sdk.ai1
    public final Object j(Continuation continuation) {
        Object objA;
        if (this.d.getAndSet(true)) {
            objA = Unit.INSTANCE;
        } else {
            this.a.a(this.b);
            bn2 bn2Var = this.c;
            j4 j4Var = new j4(this.a, this.b, this.d, this.e);
            bn2Var.getClass();
            objA = bn2.a(bn2Var, this, j4Var, continuation);
            if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = Unit.INSTANCE;
            }
        }
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) {
        switch (this.b.ordinal()) {
            case 0:
            case 2:
            case 3:
            case 5:
                if (!this.e.getAndSet(true)) {
                    this.a.b(this.b);
                }
                break;
            case 1:
            case 4:
            case 6:
            case 7:
            case 8:
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object p(Continuation continuation) {
        switch (this.b.ordinal()) {
            case 0:
            case 2:
            case 3:
            case 5:
                break;
            case 1:
            case 4:
            case 6:
            case 7:
            case 8:
                if (!this.e.getAndSet(true)) {
                    this.a.b(this.b);
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object h(Continuation continuation) {
        switch (this.b.ordinal()) {
            case 0:
            case 2:
            case 3:
            case 5:
                break;
            case 1:
            case 4:
            case 6:
            case 7:
            case 8:
                if (this.e.getAndSet(false)) {
                    qn qnVar = this.a;
                    j53 requestType = this.b;
                    qnVar.getClass();
                    Intrinsics.checkNotNullParameter(requestType, "requestType");
                    AtomicInteger atomicInteger = (AtomicInteger) qnVar.e.get(requestType);
                    if (atomicInteger != null) {
                        atomicInteger.decrementAndGet();
                    }
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return Unit.INSTANCE;
    }
}
