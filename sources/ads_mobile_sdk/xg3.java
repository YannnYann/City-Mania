package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;

/* JADX INFO: loaded from: classes.dex */
public final class xg3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ SignalGenerationCallback a;
    public final /* synthetic */ v01 b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xg3(this.b, this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SignalGenerationCallback signalGenerationCallback = this.a;
        return new xg3(this.b, signalGenerationCallback, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        m21 m21Var = o21.f;
        SignalGenerationCallback signalGenerationCallback = this.a;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new wg3(this.b, signalGenerationCallback, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xg3(v01 v01Var, SignalGenerationCallback signalGenerationCallback, Continuation continuation) {
        super(2, continuation);
        this.a = signalGenerationCallback;
        this.b = v01Var;
    }
}
