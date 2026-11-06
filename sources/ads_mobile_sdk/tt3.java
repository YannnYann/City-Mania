package ads_mobile_sdk;

import android.os.Binder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class tt3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wt3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tt3(wt3 wt3Var, Continuation continuation) {
        super(2, continuation);
        this.a = wt3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tt3(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new tt3(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        wt3 wt3Var = this.a;
        wt3Var.g.set(true);
        if (wt3Var.d.isConnected() || wt3Var.d.isConnecting()) {
            wt3Var.d.disconnect();
        }
        Binder.flushPendingCommands();
        return Unit.INSTANCE;
    }
}
