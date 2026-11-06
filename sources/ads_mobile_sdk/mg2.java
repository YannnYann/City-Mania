package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class mg2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ pg2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mg2(pg2 pg2Var, Continuation continuation) {
        super(2, continuation);
        this.a = pg2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mg2(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new mg2(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        pg2 pg2Var = this.a;
        i04 i04Var = pg2Var.U;
        if (i04Var == null) {
            return null;
        }
        ((r31) pg2Var.J.getValue()).o.set(false);
        if (i04Var.c.indexOfChild(pg2Var.g()) == -1) {
            i04Var.c.addView(pg2Var.g(), i04Var.b, i04Var.a);
        }
        return Unit.INSTANCE;
    }
}
