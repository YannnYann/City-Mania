package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class rt0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;

    public rt0(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        rt0 rt0Var = new rt0(continuation);
        rt0Var.a = obj;
        return rt0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        rt0 rt0Var = new rt0((Continuation) obj2);
        rt0Var.a = (r31) obj;
        return rt0Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        g41 g41VarB = ((r31) this.a).b();
        g41VarB.n.setValue(g41VarB, g41.w[2], Boolean.TRUE);
        return Unit.INSTANCE;
    }
}
