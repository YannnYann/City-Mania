package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$3$1", f = "EagerPreloadOnLoadStrategy.kt", l = {79}, m = "invokeSuspend")
public final class EagerPreloadOnLoadStrategy$onLoadSuccess$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AndroidWebViewContainer $container;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EagerPreloadOnLoadStrategy$onLoadSuccess$3$1(AndroidWebViewContainer androidWebViewContainer, Continuation<? super EagerPreloadOnLoadStrategy$onLoadSuccess$3$1> continuation) {
        super(2, continuation);
        this.$container = androidWebViewContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EagerPreloadOnLoadStrategy$onLoadSuccess$3$1(this.$container, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((EagerPreloadOnLoadStrategy$onLoadSuccess$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AndroidWebViewContainer androidWebViewContainer = this.$container;
            this.label = 1;
            if (androidWebViewContainer.destroy(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
