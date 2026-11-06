package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nf2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ vf2 a;
    public final /* synthetic */ k9 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nf2(vf2 vf2Var, k9 k9Var, Continuation continuation) {
        super(2, continuation);
        this.a = vf2Var;
        this.b = k9Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new nf2(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new nf2(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        kd2 kd2Var = this.a.f;
        k9 adSession = this.b;
        kd2Var.getClass();
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        return (Unit) kd2Var.f.a("FinishOmidSession", new zc2(adSession));
    }
}
