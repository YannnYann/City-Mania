package io.bidmachine.util.download;

import io.bidmachine.util.download.DownloadManager;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DownloadManagerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2", f = "DownloadManagerImpl.kt", l = {77, 78}, m = "invokeSuspend")
public final class DownloadManagerImpl$getHeadCallData$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends DownloadManager.CallData>>, Object> {
    public final /* synthetic */ Duration $timeout;
    public final /* synthetic */ String $url;
    public int label;
    public final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadManagerImpl$getHeadCallData$2(DownloadManagerImpl downloadManagerImpl, String str, Duration duration, Continuation<? super DownloadManagerImpl$getHeadCallData$2> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerImpl;
        this.$url = str;
        this.$timeout = duration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$getHeadCallData$2(this.this$0, this.$url, this.$timeout, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends DownloadManager.CallData>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<DownloadManager.CallData>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<DownloadManager.CallData>> continuation) {
        return ((DownloadManagerImpl$getHeadCallData$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
    
        if (r5 == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L24
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.m2768unboximpl()
            goto L45
        L18:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L20:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L32
        L24:
            kotlin.ResultKt.throwOnFailure(r5)
            io.bidmachine.util.download.DownloadManagerImpl r5 = r4.this$0
            r4.label = r3
            java.lang.Object r5 = r5.ensureCleanupCompleted$bidmachine_android_sdk_bd_3_8_0(r4)
            if (r5 != r0) goto L32
            goto L44
        L32:
            io.bidmachine.util.download.DownloadManagerImpl r5 = r4.this$0
            io.bidmachine.util.download.DownloadManagerImpl$ContentFetcher r5 = io.bidmachine.util.download.DownloadManagerImpl.access$getContentFetcher(r5)
            java.lang.String r1 = r4.$url
            kotlin.time.Duration r3 = r4.$timeout
            r4.label = r2
            java.lang.Object r5 = r5.mo2744head2Ivn440(r1, r3, r4)
            if (r5 != r0) goto L45
        L44:
            return r0
        L45:
            kotlin.Result r5 = kotlin.Result.m2759boximpl(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
