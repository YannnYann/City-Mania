package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class mu extends SuspendLambda implements Function2 {
    public Mutex a;
    public ou b;
    public int c;
    public final /* synthetic */ long d;
    public final /* synthetic */ ou e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mu(long j, ou ouVar, Continuation continuation) {
        super(2, continuation);
        this.d = j;
        this.e = ouVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mu(this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new mu(this.d, this.e, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        ou ouVar;
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
            ouVar = this.b;
            mutex = this.a;
            ResultKt.throwOnFailure(obj);
            try {
                ouVar.j = ouVar.g();
                ouVar.k = null;
                return Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
        }
        ResultKt.throwOnFailure(obj);
        ou ouVar2 = this.e;
        mutex = ouVar2.h;
        this.a = mutex;
        this.b = ouVar2;
        this.c = 2;
        if (mutex.lock(null, this) != coroutine_suspended) {
            ouVar = ouVar2;
            ouVar.j = ouVar.g();
            ouVar.k = null;
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }
}
