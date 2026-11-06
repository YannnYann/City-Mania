package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bw0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;

    public bw0(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        bw0 bw0Var = new bw0(continuation);
        bw0Var.a = obj;
        return bw0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        bw0 bw0Var = new bw0((Continuation) obj2);
        bw0Var.a = (vv0) obj;
        return bw0Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        vz0.a aVarU = ((vv0) this.a).u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        uv0 builder = (uv0) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.a(builder.h() + 1);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (vv0) vz0VarB;
    }
}
