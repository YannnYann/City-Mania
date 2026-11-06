package ads_mobile_sdk;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class ti2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ vi2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ti2(vi2 vi2Var, Continuation continuation) {
        super(2, continuation);
        this.a = vi2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ti2(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ti2(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        List list = this.a.g;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderingJobs");
            list = null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Job) it.next()).cancel(new CancellationException("Best possible ad config has been rendered, cancelling inflight renderers."));
        }
        return Unit.INSTANCE;
    }
}
