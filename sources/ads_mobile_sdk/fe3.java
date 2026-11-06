package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class fe3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ge3 a;
    public final /* synthetic */ r31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fe3(ge3 ge3Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.a = ge3Var;
        this.b = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new fe3(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new fe3(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.c.h.getAndSet(true);
        this.b.setVisibility(0);
        return Unit.INSTANCE;
    }
}
