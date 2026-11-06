package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class f12 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ q41 b;
    public final /* synthetic */ s02 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f12(q41 q41Var, s02 s02Var, Continuation continuation) {
        super(2, continuation);
        this.b = q41Var;
        this.c = s02Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f12(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f12(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            q41 q41Var = this.b;
            this.a = 1;
            obj = q41Var.e.await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        String str = (String) obj;
        if (str == null) {
            throw new w01(new m01("Immersive video media data does not exist.", kk1.a));
        }
        this.c.r.putString("mediaUrl", str);
        return Unit.INSTANCE;
    }
}
