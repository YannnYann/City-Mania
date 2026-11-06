package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ny2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ei1 b;
    public final /* synthetic */ v01 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ny2(Continuation continuation, ei1 ei1Var, v01 v01Var) {
        super(2, continuation);
        this.b = ei1Var;
        this.c = v01Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ny2(continuation, this.b, this.c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ny2((Continuation) obj2, this.b, this.c).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ei1 ei1Var = this.b;
            if (ei1Var != null) {
                zh1 zh1Var = (zh1) ((q01) this.c).b;
                this.a = 1;
                if (ei1Var.a(zh1Var, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
