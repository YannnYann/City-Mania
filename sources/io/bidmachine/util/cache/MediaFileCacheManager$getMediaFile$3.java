package io.bidmachine.util.cache;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: MediaFileCacheManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager", f = "MediaFileCacheManager.kt", l = {180}, m = "getMediaFile-gIAlu-s")
public final class MediaFileCacheManager$getMediaFile$3 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ MediaFileCacheManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaFileCacheManager$getMediaFile$3(MediaFileCacheManager mediaFileCacheManager, Continuation<? super MediaFileCacheManager$getMediaFile$3> continuation) {
        super(continuation);
        this.this$0 = mediaFileCacheManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM2727getMediaFilegIAlus = this.this$0.m2727getMediaFilegIAlus(null, this);
        return objM2727getMediaFilegIAlus == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2727getMediaFilegIAlus : Result.m2759boximpl(objM2727getMediaFilegIAlus);
    }
}
