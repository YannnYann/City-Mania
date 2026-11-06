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
public final class za3 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;
    public final /* synthetic */ cb3 c;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        za3 za3Var = new za3(this.c, this.b, continuation);
        za3Var.a = obj;
        return za3Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((za3) create((ua3) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ua3 ua3Var = (ua3) this.a;
        String value = this.b;
        cb3 cb3Var = this.c;
        vz0.a aVarU = ua3Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        ta3 builder = (ta3) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        cb3Var.c.getClass();
        builder.a(System.currentTimeMillis());
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ua3) vz0VarB;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public za3(cb3 cb3Var, String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
        this.c = cb3Var;
    }
}
