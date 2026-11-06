package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.model.OnDownloadProgressEvent;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1", f = "CommonAdViewerExposedFunctions.kt", l = {}, m = "invokeSuspend")
public final class CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1 extends SuspendLambda implements Function3<Long, Long, Continuation<? super Unit>, Object> {
    final /* synthetic */ ProducerScope<OnDownloadProgressEvent> $$this$channelFlow;
    final /* synthetic */ String $downloadId;
    /* synthetic */ long J$0;
    /* synthetic */ long J$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1(ProducerScope<? super OnDownloadProgressEvent> producerScope, String str, Continuation<? super CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1> continuation) {
        super(3, continuation);
        this.$$this$channelFlow = producerScope;
        this.$downloadId = str;
    }

    public final Object invoke(long j, long j2, Continuation<? super Unit> continuation) {
        CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1 commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1 = new CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1(this.$$this$channelFlow, this.$downloadId, continuation);
        commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1.J$0 = j;
        commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1.J$1 = j2;
        return commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1$result$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Long l, Long l2, Continuation<? super Unit> continuation) {
        return invoke(l.longValue(), l2.longValue(), continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        long j = this.J$0;
        long j2 = this.J$1;
        Integer numBoxInt = j2 > 0 ? Boxing.boxInt(RangesKt___RangesKt.coerceIn((int) ((((long) 100) * j) / j2), 0, 100)) : null;
        ProducerScope<OnDownloadProgressEvent> producerScope = this.$$this$channelFlow;
        String str = this.$downloadId;
        Long lBoxLong = Boxing.boxLong(j2);
        String lowerCase = "REMOTE".toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        producerScope.mo2951trySendJP2dKIU(new OnDownloadProgressEvent(str, numBoxInt, j, lBoxLong, false, null, lowerCase));
        return Unit.INSTANCE;
    }
}
