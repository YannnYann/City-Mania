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
public final class t6 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t6(String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        t6 t6Var = new t6(this.b, continuation);
        t6Var.a = obj;
        return t6Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        t6 t6Var = new t6(this.b, (Continuation) obj2);
        t6Var.a = (u7) obj;
        return t6Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        u7 u7Var = (u7) this.a;
        String key = this.b;
        vz0.a aVarU = u7Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        t7 builder = (t7) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getQueryIdToAdQualityDataMapMap(...)");
        Intrinsics.checkNotNullParameter(new no0(mapH), "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        builder.a(key);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (u7) vz0VarB;
    }
}
