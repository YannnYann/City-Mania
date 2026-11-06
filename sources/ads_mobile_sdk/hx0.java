package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class hx0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ix0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hx0(ix0 ix0Var, Continuation continuation) {
        super(2, continuation);
        this.a = ix0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new hx0(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new hx0(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ix0 ix0Var = this.a;
        gx0 gx0Var = ix0Var.m;
        if (gx0Var != null) {
            int i = ix0Var.j;
            if1 if1Var = (if1) gx0Var;
            ex0 ex0Var = if1Var.i;
            if (i == ((Number) ex0Var.a("gads:inspector:flick_count", by0.a(ex0Var, "gads:inspector:flick_count", C3522b4.i.W, 2), yr.f)).intValue()) {
                CoroutineScope coroutineScope = if1Var.d;
                oe1 block = new oe1(if1Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
        return Unit.INSTANCE;
    }
}
