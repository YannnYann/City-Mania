package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class q40 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ v3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q40(v3 v3Var, Continuation continuation) {
        super(2, continuation);
        this.b = v3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        q40 q40Var = new q40(this.b, continuation);
        q40Var.a = obj;
        return q40Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        q40 q40Var = new q40(this.b, (Continuation) obj2);
        q40Var.a = (r31) obj;
        return q40Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        g41 g41VarB = ((r31) this.a).b();
        g41VarB.p.setValue(g41VarB, g41.w[4], this.b);
        return Unit.INSTANCE;
    }
}
