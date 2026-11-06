package ads_mobile_sdk;

import android.view.ViewGroup;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gy2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gy2(wy2 wy2Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gy2(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gy2(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        wy2Var.z = wy2Var.a(this.a.n, wy2Var.t.getAdSize());
        wy2 wy2Var2 = this.a;
        ViewGroup viewGroup = wy2Var2.B;
        if (viewGroup != null) {
            o53 o53Var = wy2Var2.z;
            if (o53Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_adFrame");
                o53Var = null;
            }
            viewGroup.addView(o53Var);
        }
        this.a.B = null;
        return Unit.INSTANCE;
    }
}
