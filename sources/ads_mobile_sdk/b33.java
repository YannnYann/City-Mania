package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class b33 extends SuspendLambda implements Function2 {
    public Mutex a;
    public e33 b;
    public int c;
    public final /* synthetic */ long d;
    public final /* synthetic */ e33 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b33(long j, e33 e33Var, Continuation continuation) {
        super(2, continuation);
        this.d = j;
        this.e = e33Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new b33(this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new b33(this.d, this.e, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        e33 e33Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long j = this.d;
            this.c = 1;
            if (DelayKt.m2937delayVtjQ1oo(j, this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            e33Var = this.b;
            mutex = this.a;
            ResultKt.throwOnFailure(obj);
            try {
                CompletableJob completableJob = e33Var.h;
                mutex.unlock(null);
                completableJob.complete();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        e33 e33Var2 = this.e;
        mutex = e33Var2.e;
        this.a = mutex;
        this.b = e33Var2;
        this.c = 2;
        if (mutex.lock(null, this) != coroutine_suspended) {
            e33Var = e33Var2;
            CompletableJob completableJob2 = e33Var.h;
            mutex.unlock(null);
            completableJob2.complete();
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }
}
