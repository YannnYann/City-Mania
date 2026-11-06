package ads_mobile_sdk;

import android.view.View;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class wd2 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ je2 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ tx0 d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wd2(je2 je2Var, View view, tx0 tx0Var, String str, Continuation continuation) {
        super(1, continuation);
        this.b = je2Var;
        this.c = view;
        this.d = tx0Var;
        this.e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new wd2(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((wd2) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
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
        ze2 ze2Var = this.b.g;
        View view = this.c;
        tx0 tx0Var = this.d;
        String str = this.e;
        this.a = 1;
        ze2Var.getClass();
        Object objA = ze2.a(ze2Var, view, tx0Var, str, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
