package ads_mobile_sdk;

import android.view.WindowManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class zs1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ WindowManager a;
    public final /* synthetic */ r31 b;
    public final /* synthetic */ WindowManager.LayoutParams c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zs1(WindowManager windowManager, r31 r31Var, WindowManager.LayoutParams layoutParams, Continuation continuation) {
        super(2, continuation);
        this.a = windowManager;
        this.b = r31Var;
        this.c = layoutParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zs1(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((zs1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.updateViewLayout(this.b, this.c);
        return Unit.INSTANCE;
    }
}
