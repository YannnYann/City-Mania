package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class jt0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ g33 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jt0(g33 g33Var, Continuation continuation) {
        super(2, continuation);
        this.b = g33Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        jt0 jt0Var = new jt0(this.b, continuation);
        jt0Var.a = obj;
        return jt0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        jt0 jt0Var = new jt0(this.b, (Continuation) obj2);
        jt0Var.a = (r31) obj;
        return jt0Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ((r31) this.a).q = this.b;
        return Unit.INSTANCE;
    }
}
