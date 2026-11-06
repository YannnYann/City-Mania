package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class iw0 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ JsonObject b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ k30 d;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        iw0 iw0Var = new iw0(this.d, this.b, continuation, this.c);
        iw0Var.a = obj;
        return iw0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((iw0) create((vv0) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        vv0 vv0Var = (vv0) this.a;
        JsonObject jsonObject = this.b;
        boolean z = this.c;
        k30 value = this.d;
        vz0.a aVarU = vv0Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        uv0 builder = (uv0) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (jsonObject != null) {
            String value2 = new Gson().toJson((JsonElement) jsonObject);
            Intrinsics.checkNotNullExpressionValue(value2, "toJson(...)");
            Intrinsics.checkNotNullParameter(value2, "value");
            builder.c(value2);
            if (z) {
                builder.a(0);
            }
        }
        builder.j();
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (vv0) vz0VarB;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iw0(k30 k30Var, JsonObject jsonObject, Continuation continuation, boolean z) {
        super(2, continuation);
        this.b = jsonObject;
        this.c = z;
        this.d = k30Var;
    }
}
