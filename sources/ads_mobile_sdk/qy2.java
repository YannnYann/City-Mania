package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;

/* JADX INFO: loaded from: classes.dex */
public final class qy2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;
    public final /* synthetic */ v01 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qy2(wy2 wy2Var, v01 v01Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
        this.b = v01Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qy2(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qy2(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        ei1 ei1Var = wy2Var.y;
        if (ei1Var != null) {
            m21 m21Var = o21.f;
            v01 v01Var = this.b;
            NonCancellable nonCancellable = NonCancellable.INSTANCE;
            CoroutineContext coroutineContextPlus = nonCancellable.plus(getContext());
            qs3 qs3Var = rs3.b;
            CoroutineContext coroutineContextMinusKey = coroutineContextPlus.minusKey(qs3Var);
            CoroutineExceptionHandler.Key key = CoroutineExceptionHandler.Key;
            CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(key);
            Job.Key key2 = Job.Key;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContextMinusKey2.minusKey(key2)), null, null, new ny2(null, ei1Var, v01Var), 3, null);
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(nonCancellable.plus(getContext()).minusKey(qs3Var).minusKey(key).minusKey(key2)), null, null, new oy2(ei1Var, null), 3, null);
            this.a.y = null;
        } else {
            m21 m21Var2 = o21.f;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new py2(wy2Var, null), 3, null);
        }
        return Unit.INSTANCE;
    }
}
