package io.bidmachine.util.cache;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: MediaFileCacheManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager", f = "MediaFileCacheManager.kt", l = {194}, m = "getMediaFileInternal-gIAlu-s")
public final class MediaFileCacheManager$getMediaFileInternal$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ MediaFileCacheManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaFileCacheManager$getMediaFileInternal$1(MediaFileCacheManager mediaFileCacheManager, Continuation<? super MediaFileCacheManager$getMediaFileInternal$1> continuation) {
        super(continuation);
        this.this$0 = mediaFileCacheManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM2728getMediaFileInternalgIAlus = this.this$0.m2728getMediaFileInternalgIAlus(null, this);
        return objM2728getMediaFileInternalgIAlus == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2728getMediaFileInternalgIAlus : Result.m2759boximpl(objM2728getMediaFileInternalgIAlus);
    }
}
