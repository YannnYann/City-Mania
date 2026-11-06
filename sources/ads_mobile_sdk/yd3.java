package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yd3 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ Function1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yd3(Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.b = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        yd3 yd3Var = new yd3(this.b, continuation);
        yd3Var.a = obj;
        return yd3Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        yd3 yd3Var = new yd3(this.b, (Continuation) obj2);
        yd3Var.a = (od3) obj;
        return yd3Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        od3 od3Var = (od3) this.a;
        Function1 function1 = this.b;
        vz0.a aVarU = od3Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        nd3 builder = (nd3) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        function1.invoke(new be3(builder));
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (od3) vz0VarB;
    }
}
