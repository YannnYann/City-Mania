package ads_mobile_sdk;

import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class yk2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public al2 b;
    public Pair c;
    public int d;
    public final /* synthetic */ al2 e;
    public final /* synthetic */ Pair f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yk2(al2 al2Var, Pair pair, Continuation continuation) {
        super(2, continuation);
        this.e = al2Var;
        this.f = pair;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yk2(this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new yk2(this.e, this.f, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        al2 al2Var;
        Mutex mutex;
        Pair pair;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            al2Var = this.e;
            Mutex mutex2 = al2Var.m;
            Pair pair2 = this.f;
            this.a = mutex2;
            this.b = al2Var;
            this.c = pair2;
            this.d = 1;
            if (mutex2.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            pair = pair2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pair = this.c;
            al2Var = this.b;
            mutex = this.a;
            ResultKt.throwOnFailure(obj);
        }
        try {
            return Boxing.boxBoolean(al2Var.n.remove(pair));
        } finally {
            mutex.unlock(null);
        }
    }
}
