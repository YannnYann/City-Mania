package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class r10 extends SuspendLambda implements Function1 {
    public v01 a;
    public Mutex b;
    public g30 c;
    public int d;
    public final /* synthetic */ g30 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r10(g30 g30Var, Continuation continuation) {
        super(1, continuation);
        this.e = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new r10(this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new r10(this.e, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        v01 v01Var;
        g30 g30Var;
        Mutex mutex;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            bm bmVar = this.e.k;
            this.d = 1;
            bmVar.getClass();
            obj = bm.a(bmVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g30Var = this.c;
            mutex = this.b;
            v01Var = this.a;
            ResultKt.throwOnFailure(obj);
            try {
                g30Var.K = (fu) ((q01) v01Var).b;
                Unit unit = Unit.INSTANCE;
                return v01Var;
            } finally {
                mutex.unlock(null);
            }
        }
        ResultKt.throwOnFailure(obj);
        v01 v01Var2 = (v01) obj;
        if (!(v01Var2 instanceof q01)) {
            return v01Var2;
        }
        g30 g30Var2 = this.e;
        Mutex mutex2 = g30Var2.J;
        this.a = v01Var2;
        this.b = mutex2;
        this.c = g30Var2;
        this.d = 2;
        if (mutex2.lock(null, this) != coroutine_suspended) {
            v01Var = v01Var2;
            g30Var = g30Var2;
            mutex = mutex2;
            g30Var.K = (fu) ((q01) v01Var).b;
            Unit unit2 = Unit.INSTANCE;
            return v01Var;
        }
        return coroutine_suspended;
    }
}
