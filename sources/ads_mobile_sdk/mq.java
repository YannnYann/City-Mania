package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mq extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ nq b;
    public final /* synthetic */ h41 c;
    public final /* synthetic */ ot0 d;
    public final /* synthetic */ r31 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mq(nq nqVar, h41 h41Var, ot0 ot0Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = nqVar;
        this.c = h41Var;
        this.d = ot0Var;
        this.e = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mq(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((mq) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            nq nqVar = this.b;
            h41 h41Var = this.c;
            i2 i2Var = nqVar.f;
            tk0 tk0VarB = this.d.b();
            this.a = 1;
            if (at0.a(nqVar, h41Var, i2Var, tk0VarB, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.e.onPause();
        return Unit.INSTANCE;
    }
}
