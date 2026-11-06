package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class rx3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ q41 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rx3(q41 q41Var, Continuation continuation) {
        super(2, continuation);
        this.a = q41Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new rx3(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new rx3(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Unit unit;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        q41 q41Var = this.a;
        synchronized (q41Var.f) {
            boolean zIsMuted = q41Var.isMuted();
            k41 k41Var = q41Var.i;
            k41 k41Var2 = k41.e;
            q41Var.i = k41Var2;
            BuildersKt__Builders_commonKt.launch$default(q41Var.a, null, null, new l41(q41Var, k41Var, k41Var2, zIsMuted, zIsMuted, null), 3, null);
            unit = Unit.INSTANCE;
        }
        return unit;
    }
}
