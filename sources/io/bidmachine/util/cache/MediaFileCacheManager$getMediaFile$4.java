package io.bidmachine.util.cache;

import io.bidmachine.util.file.FileUtilsKt;
import java.io.File;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MediaFileCacheManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$4", f = "MediaFileCacheManager.kt", l = {181, 184}, m = "invokeSuspend")
public final class MediaFileCacheManager$getMediaFile$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends File>>, Object> {
    public final /* synthetic */ List<String> $mediaUrlList;
    public Object L$0;
    public int label;
    public final /* synthetic */ MediaFileCacheManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaFileCacheManager$getMediaFile$4(MediaFileCacheManager mediaFileCacheManager, List<String> list, Continuation<? super MediaFileCacheManager$getMediaFile$4> continuation) {
        super(2, continuation);
        this.this$0 = mediaFileCacheManager;
        this.$mediaUrlList = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MediaFileCacheManager$getMediaFile$4(this.this$0, this.$mediaUrlList, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends File>> continuation) {
        return ((MediaFileCacheManager$getMediaFile$4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM2728getMediaFileInternalgIAlus;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            MediaFileCacheManager mediaFileCacheManager = this.this$0;
            List<String> list = this.$mediaUrlList;
            this.label = 1;
            objM2728getMediaFileInternalgIAlus = mediaFileCacheManager.m2728getMediaFileInternalgIAlus(list, this);
            if (objM2728getMediaFileInternalgIAlus != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj2 = this.L$0;
            ResultKt.throwOnFailure(obj);
            objM2728getMediaFileInternalgIAlus = obj2;
            return Result.m2759boximpl(objM2728getMediaFileInternalgIAlus);
        }
        ResultKt.throwOnFailure(obj);
        objM2728getMediaFileInternalgIAlus = ((Result) obj).m2768unboximpl();
        File file = (File) (Result.m2765isFailureimpl(objM2728getMediaFileInternalgIAlus) ? null : objM2728getMediaFileInternalgIAlus);
        if (file != null) {
            MediaFileCacheManager mediaFileCacheManager2 = this.this$0;
            if (FileUtilsKt.existsSafely(file)) {
                MediaFileMetadataManager mediaFileMetadataManager = mediaFileCacheManager2.getMediaFileMetadataManager();
                this.L$0 = objM2728getMediaFileInternalgIAlus;
                this.label = 2;
                Object objTrackUsage = mediaFileMetadataManager.trackUsage(file, this);
                if (objTrackUsage != coroutine_suspended) {
                    obj2 = objM2728getMediaFileInternalgIAlus;
                    obj = objTrackUsage;
                    objM2728getMediaFileInternalgIAlus = obj2;
                }
                return coroutine_suspended;
            }
            mediaFileCacheManager2.getMediaFileMetadataManager().deleteMediaFileMetadata(file);
        }
        return Result.m2759boximpl(objM2728getMediaFileInternalgIAlus);
    }
}
