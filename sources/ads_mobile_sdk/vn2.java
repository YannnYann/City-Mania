package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vn2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ao2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vn2(ao2 ao2Var, Continuation continuation) {
        super(2, continuation);
        this.a = ao2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vn2(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vn2(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ao2 ao2Var = this.a;
        do2 do2Var = ao2Var.i;
        if (do2Var != null) {
            ao2Var.a(do2Var);
        }
        this.a.i = null;
        return Unit.INSTANCE;
    }
}
