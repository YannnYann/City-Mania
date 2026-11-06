package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class se extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ hf b;
    public final /* synthetic */ String c;
    public final /* synthetic */ be d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public se(hf hfVar, String str, be beVar, Continuation continuation) {
        super(1, continuation);
        this.b = hfVar;
        this.c = str;
        this.d = beVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new se(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((se) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        hf hfVar = this.b;
        String str = this.c;
        be beVar = this.d;
        this.a = 1;
        Object objA = hf.a(hfVar, str, beVar, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
