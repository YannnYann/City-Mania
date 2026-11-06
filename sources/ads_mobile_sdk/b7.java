package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b7 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ o6 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b7(o6 o6Var, Continuation continuation) {
        super(2, continuation);
        this.b = o6Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        b7 b7Var = new b7(this.b, continuation);
        b7Var.a = obj;
        return b7Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        b7 b7Var = new b7(this.b, (Continuation) obj2);
        b7Var.a = (u7) obj;
        return b7Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        u7 u7Var = (u7) this.a;
        o6 value = this.b;
        vz0.a aVarU = u7Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        t7 builder = (t7) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getQueryIdToAdQualityDataMapMap(...)");
        no0 no0Var = new no0(mapH);
        String key = value.B();
        Intrinsics.checkNotNullExpressionValue(key, "getGwsQueryId(...)");
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(key, value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (u7) vz0VarB;
    }
}
