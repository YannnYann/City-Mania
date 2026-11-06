package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class gx2 extends SuspendLambda implements Function3 {
    public int a;
    public final /* synthetic */ CoroutineContext b;
    public final /* synthetic */ ei1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gx2(CoroutineContext coroutineContext, ei1 ei1Var, Continuation continuation) {
        super(3, continuation);
        this.b = coroutineContext;
        this.c = ei1Var;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return new gx2(this.b, this.c, (Continuation) obj3).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineContext coroutineContext = this.b;
            fx2 fx2Var = new fx2(this.c, null);
            this.a = 1;
            if (BuildersKt.withContext(coroutineContext, fx2Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
