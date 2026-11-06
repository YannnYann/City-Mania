package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
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
public final class ar3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ VideoController.VideoLifecycleCallbacks a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar3(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks, Continuation continuation) {
        super(2, continuation);
        this.a = videoLifecycleCallbacks;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ar3(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ar3(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new zq3(this.a, null), 3, null);
        return Unit.INSTANCE;
    }
}
