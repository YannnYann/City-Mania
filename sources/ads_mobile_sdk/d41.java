package ads_mobile_sdk;

import android.webkit.WebResourceRequest;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class d41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ oy1 b;
    public final /* synthetic */ g41 c;
    public final /* synthetic */ WebResourceRequest d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d41(oy1 oy1Var, g41 g41Var, WebResourceRequest webResourceRequest, Continuation continuation) {
        super(2, continuation);
        this.b = oy1Var;
        this.c = g41Var;
        this.d = webResourceRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new d41(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((d41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
        oy1 oy1Var = this.b;
        r31 r31Var = this.c.b;
        WebResourceRequest webResourceRequest = this.d;
        this.a = 1;
        Object objA = ((ry1) oy1Var).a(r31Var, webResourceRequest, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
