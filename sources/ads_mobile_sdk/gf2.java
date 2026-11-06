package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class gf2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ Deferred b;
    public final /* synthetic */ vf2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gf2(Deferred deferred, vf2 vf2Var, Continuation continuation) {
        super(2, continuation);
        this.b = deferred;
        this.c = vf2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gf2(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gf2(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Deferred deferred = this.b;
            this.a = 1;
            obj = deferred.await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        r31 r31Var = (r31) obj;
        g41 g41VarB = r31Var != null ? r31Var.b() : null;
        if (g41VarB != null) {
            g41VarB.u = this.c.h;
        }
        return Unit.INSTANCE;
    }
}
