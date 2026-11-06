package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class po extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ cz2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public po(cz2 cz2Var, Continuation continuation) {
        super(2, continuation);
        this.b = cz2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        po poVar = new po(this.b, continuation);
        poVar.a = obj;
        return poVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        po poVar = new po(this.b, (Continuation) obj2);
        poVar.a = (ck1) obj;
        return poVar.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        return new k33((ck1) this.a, this.b.a().c(), this.b.a());
    }
}
