package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class yo extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ zo b;
    public final /* synthetic */ h41 c;
    public final /* synthetic */ oo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yo(zo zoVar, h41 h41Var, oo ooVar, Continuation continuation) {
        super(2, continuation);
        this.b = zoVar;
        this.c = h41Var;
        this.d = ooVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yo(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((yo) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zo zoVar = this.b;
            h41 h41Var = this.c;
            i2 i2Var = zoVar.f;
            tk0 tk0Var = (tk0) ((be0) this.d).X.get();
            this.a = 1;
            if (at0.a(zoVar, h41Var, i2Var, tk0Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
