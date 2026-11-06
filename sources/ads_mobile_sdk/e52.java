package ads_mobile_sdk;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class e52 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ JsonElement b;
    public final /* synthetic */ g52 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e52(JsonElement jsonElement, g52 g52Var, Continuation continuation) {
        super(2, continuation);
        this.b = jsonElement;
        this.c = g52Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e52(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new e52(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ds1 ds1Var = ds1.a;
            JsonObject jsonObjectA = ds1.a(this.b);
            if (jsonObjectA == null) {
                return null;
            }
            g52 g52Var = this.c;
            this.a = 1;
            obj = g52.a(g52Var, jsonObjectA, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return (fc0) obj;
    }
}
