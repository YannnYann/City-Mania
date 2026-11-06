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
public final class dd3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ed3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dd3(ed3 ed3Var, Continuation continuation) {
        super(2, continuation);
        this.a = ed3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new dd3(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new dd3(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ed3 ed3Var = this.a;
        cd3 cd3Var = ed3Var.i;
        if (cd3Var != null) {
            int i = ed3Var.h;
            if1 if1Var = (if1) cd3Var;
            ex0 ex0Var = if1Var.i;
            if (i == ((Number) ex0Var.a("gads:inspector:shake_count", by0.a(ex0Var, "gads:inspector:shake_count", C3522b4.i.W, 3), yr.f)).intValue()) {
                CoroutineScope coroutineScope = if1Var.d;
                pe1 block = new pe1(if1Var, null);
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
