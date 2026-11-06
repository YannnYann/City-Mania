package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vq3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ VideoController.VideoLifecycleCallbacks a;
    public final /* synthetic */ boolean b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vq3(this.a, continuation, this.b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vq3(this.a, (Continuation) obj2, this.b).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.onVideoMute(this.b);
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vq3(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks, Continuation continuation, boolean z) {
        super(2, continuation);
        this.a = videoLifecycleCallbacks;
        this.b = z;
    }
}
