package io.bidmachine.util.cache;

import io.bidmachine.util.download.DownloadManager;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MediaFileCacheManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1", f = "MediaFileCacheManager.kt", l = {302}, m = "invokeSuspend")
public final class MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends DownloadManager.CallData>>, Object> {
    public final /* synthetic */ long $headRequestTimeout;
    public final /* synthetic */ String $mediaUrl;
    public int label;
    public final /* synthetic */ MediaFileCacheManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1(MediaFileCacheManager mediaFileCacheManager, String str, long j, Continuation<? super MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1> continuation) {
        super(2, continuation);
        this.this$0 = mediaFileCacheManager;
        this.$mediaUrl = str;
        this.$headRequestTimeout = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1(this.this$0, this.$mediaUrl, this.$headRequestTimeout, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends DownloadManager.CallData>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<DownloadManager.CallData>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<DownloadManager.CallData>> continuation) {
        return ((MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objMo2739getHeadCallData2Ivn440;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DownloadManager downloadManager = this.this$0.downloadManager;
            String str = this.$mediaUrl;
            Duration durationM2870boximpl = Duration.m2870boximpl(this.$headRequestTimeout);
            this.label = 1;
            objMo2739getHeadCallData2Ivn440 = downloadManager.mo2739getHeadCallData2Ivn440(str, durationM2870boximpl, this);
            if (objMo2739getHeadCallData2Ivn440 == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objMo2739getHeadCallData2Ivn440 = ((Result) obj).m2768unboximpl();
        }
        return Result.m2759boximpl(objMo2739getHeadCallData2Ivn440);
    }
}
