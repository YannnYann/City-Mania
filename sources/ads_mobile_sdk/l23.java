package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class l23 extends SuspendLambda implements Function1 {
    public Mutex a;
    public e33 b;
    public int c;
    public final /* synthetic */ e33 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l23(e33 e33Var, Continuation continuation) {
        super(1, continuation);
        this.d = e33Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new l23(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new l23(this.d, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        e33 e33Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            e33 e33Var2 = this.d;
            mutex = e33Var2.e;
            this.a = mutex;
            this.b = e33Var2;
            this.c = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            e33Var = e33Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            e33Var = this.b;
            mutex = this.a;
            ResultKt.throwOnFailure(obj);
        }
        try {
            return Duration.m2870boximpl(e33Var.m);
        } finally {
            mutex.unlock(null);
        }
    }
}
