package io.bidmachine.util.download;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.util.download.DownloadManager;
import io.bidmachine.util.download.DownloadManagerImpl;
import java.io.File;
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
@DebugMetadata(c = "io.bidmachine.util.download.DownloadManagerImpl$runDownload$1", f = "DownloadManagerImpl.kt", l = {Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 120}, m = "invokeSuspend")
public final class DownloadManagerImpl$runDownload$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends DownloadManager.DownloadData>>, Object> {
    public final /* synthetic */ DownloadManagerImpl.DownloadKey $downloadKey;
    public final /* synthetic */ File $outputFile;
    public final /* synthetic */ Duration $timeout;
    public final /* synthetic */ String $url;
    public int label;
    public final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadManagerImpl$runDownload$1(DownloadManagerImpl downloadManagerImpl, String str, File file, Duration duration, DownloadManagerImpl.DownloadKey downloadKey, Continuation<? super DownloadManagerImpl$runDownload$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerImpl;
        this.$url = str;
        this.$outputFile = file;
        this.$timeout = duration;
        this.$downloadKey = downloadKey;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$runDownload$1(this.this$0, this.$url, this.$outputFile, this.$timeout, this.$downloadKey, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends DownloadManager.DownloadData>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<DownloadManager.DownloadData>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<DownloadManager.DownloadData>> continuation) {
        return ((DownloadManagerImpl$runDownload$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        if (r6 == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L24
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.m2768unboximpl()
            goto L47
        L18:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L20:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L32
        L24:
            kotlin.ResultKt.throwOnFailure(r6)
            io.bidmachine.util.download.DownloadManagerImpl r6 = r5.this$0
            r5.label = r3
            java.lang.Object r6 = r6.ensureCleanupCompleted$bidmachine_android_sdk_bd_3_8_0(r5)
            if (r6 != r0) goto L32
            goto L46
        L32:
            io.bidmachine.util.download.DownloadManagerImpl r6 = r5.this$0
            io.bidmachine.util.download.DownloadManagerImpl$ContentFetcher r6 = io.bidmachine.util.download.DownloadManagerImpl.access$getContentFetcher(r6)
            java.lang.String r1 = r5.$url
            java.io.File r3 = r5.$outputFile
            kotlin.time.Duration r4 = r5.$timeout
            r5.label = r2
            java.lang.Object r6 = r6.mo2743getWS52aQU(r1, r3, r4, r5)
            if (r6 != r0) goto L47
        L46:
            return r0
        L47:
            boolean r0 = kotlin.Result.m2765isFailureimpl(r6)
            if (r0 == 0) goto L4f
            r0 = 0
            goto L50
        L4f:
            r0 = r6
        L50:
            io.bidmachine.util.download.DownloadManager$DownloadData r0 = (io.bidmachine.util.download.DownloadManager.DownloadData) r0
            io.bidmachine.util.download.DownloadManagerImpl r1 = r5.this$0
            java.lang.Object r1 = io.bidmachine.util.download.DownloadManagerImpl.access$getActiveDownloadsLock$p(r1)
            io.bidmachine.util.download.DownloadManagerImpl r2 = r5.this$0
            io.bidmachine.util.download.DownloadManagerImpl$DownloadKey r3 = r5.$downloadKey
            monitor-enter(r1)
            java.util.Map r2 = io.bidmachine.util.download.DownloadManagerImpl.access$getActiveDownloads$p(r2)     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r2 = r2.remove(r3)     // Catch: java.lang.Throwable -> L9d
            io.bidmachine.util.download.DownloadManager$DownloadTask r2 = (io.bidmachine.util.download.DownloadManager.DownloadTask) r2     // Catch: java.lang.Throwable -> L9d
            monitor-exit(r1)
            if (r0 == 0) goto L6f
            java.lang.Object r6 = kotlin.Result.m2760constructorimpl(r0)
            goto L98
        L6f:
            java.lang.Exception r0 = new java.lang.Exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to download content from url ("
            r1.append(r2)
            java.lang.String r2 = r5.$url
            r1.append(r2)
            r2 = 41
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.Throwable r6 = kotlin.Result.m2763exceptionOrNullimpl(r6)
            r0.<init>(r1, r6)
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r0)
            java.lang.Object r6 = kotlin.Result.m2760constructorimpl(r6)
        L98:
            kotlin.Result r6 = kotlin.Result.m2759boximpl(r6)
            return r6
        L9d:
            r6 = move-exception
            monitor-exit(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.download.DownloadManagerImpl$runDownload$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
