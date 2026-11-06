package io.bidmachine.util.cache;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: MediaFileCacheManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager", f = "MediaFileCacheManager.kt", l = {276, 286}, m = "awaitDownloadTask-0E7RQCE")
public final class MediaFileCacheManager$awaitDownloadTask$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ MediaFileCacheManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaFileCacheManager$awaitDownloadTask$1(MediaFileCacheManager mediaFileCacheManager, Continuation<? super MediaFileCacheManager$awaitDownloadTask$1> continuation) {
        super(continuation);
        this.this$0 = mediaFileCacheManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM2726awaitDownloadTask0E7RQCE = this.this$0.m2726awaitDownloadTask0E7RQCE(null, null, this);
        return objM2726awaitDownloadTask0E7RQCE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2726awaitDownloadTask0E7RQCE : Result.m2759boximpl(objM2726awaitDownloadTask0E7RQCE);
    }
}
