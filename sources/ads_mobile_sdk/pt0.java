package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class pt0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ zy b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt0(zy zyVar, Continuation continuation) {
        super(2, continuation);
        this.b = zyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        pt0 pt0Var = new pt0(this.b, continuation);
        pt0Var.a = obj;
        return pt0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        pt0 pt0Var = new pt0(this.b, (Continuation) obj2);
        pt0Var.a = (r31) obj;
        return pt0Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        g41 g41VarB = ((r31) this.a).b();
        g41VarB.o.setValue(g41VarB, g41.w[3], Boolean.valueOf(this.b.u));
        return Unit.INSTANCE;
    }
}
