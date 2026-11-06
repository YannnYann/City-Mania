package io.bidmachine.util.cache;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.util.MimeTypes;
import io.bidmachine.util.cache.MediaFileCacheManager;
import io.bidmachine.util.download.DownloadManager;
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
@DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2", f = "MediaFileCacheManager.kt", l = {Sdk.SDKError.Reason.INVALID_CSB_DATA_VALUE, 232, 235, 251}, m = "invokeSuspend")
public final class MediaFileCacheManager$getMediaFileInternal$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends File>>, Object> {
    public final /* synthetic */ List<String> $mediaUrlList;
    public Object L$0;
    public int label;
    public final /* synthetic */ MediaFileCacheManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaFileCacheManager$getMediaFileInternal$2(List<String> list, MediaFileCacheManager mediaFileCacheManager, Continuation<? super MediaFileCacheManager$getMediaFileInternal$2> continuation) {
        super(2, continuation);
        this.$mediaUrlList = list;
        this.this$0 = mediaFileCacheManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MediaFileCacheManager$getMediaFileInternal$2(this.$mediaUrlList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends File>> continuation) {
        return ((MediaFileCacheManager$getMediaFileInternal$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x010c, code lost:
    
        if (r15 == r0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a0, code lost:
    
        if (r15 == r0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134 A[PHI: r1 r11 r15
      0x0134: PHI (r1v13 io.bidmachine.util.cache.MediaFileCacheManager$Configuration) = 
      (r1v12 io.bidmachine.util.cache.MediaFileCacheManager$Configuration)
      (r1v22 io.bidmachine.util.cache.MediaFileCacheManager$Configuration)
     binds: [B:51:0x0131, B:11:0x0029] A[DONT_GENERATE, DONT_INLINE]
      0x0134: PHI (r11v3 io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2) = 
      (r11v2 io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2)
      (r11v6 io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2)
     binds: [B:51:0x0131, B:11:0x0029] A[DONT_GENERATE, DONT_INLINE]
      0x0134: PHI (r15v21 java.lang.Object) = (r15v20 java.lang.Object), (r15v0 java.lang.Object) binds: [B:51:0x0131, B:11:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 424
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$2, reason: invalid class name */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2$2", f = "MediaFileCacheManager.kt", l = {252}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<DownloadManager.DownloadData, Continuation<? super Unit>, Object> {
        public final /* synthetic */ MediaFileCacheManager.RemoteMediaFileInfo $remoteMediaFile;
        public /* synthetic */ Object L$0;
        public int label;
        public final /* synthetic */ MediaFileCacheManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MediaFileCacheManager mediaFileCacheManager, MediaFileCacheManager.RemoteMediaFileInfo remoteMediaFileInfo, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = mediaFileCacheManager;
            this.$remoteMediaFile = remoteMediaFileInfo;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$remoteMediaFile, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(DownloadManager.DownloadData downloadData, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(downloadData, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object mediaFileMetadata;
            DownloadManager.DownloadData downloadData;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DownloadManager.DownloadData downloadData2 = (DownloadManager.DownloadData) this.L$0;
                MediaFileMetadataManager mediaFileMetadataManager = this.this$0.getMediaFileMetadataManager();
                File output = downloadData2.getOutput();
                this.L$0 = downloadData2;
                this.label = 1;
                mediaFileMetadata = mediaFileMetadataManager.getMediaFileMetadata(output, this);
                if (mediaFileMetadata == coroutine_suspended) {
                    return coroutine_suspended;
                }
                downloadData = downloadData2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                downloadData = (DownloadManager.DownloadData) this.L$0;
                ResultKt.throwOnFailure(obj);
                mediaFileMetadata = obj;
            }
            MediaFileMetadata mediaFileMetadata2 = (MediaFileMetadata) mediaFileMetadata;
            if (mediaFileMetadata2 == null) {
                return Unit.INSTANCE;
            }
            String mimeType = mediaFileMetadata2.getMimeType();
            MimeTypes mimeTypes = MimeTypes.INSTANCE;
            if (!mimeTypes.isVisual(mimeType)) {
                mimeType = mimeTypes.isVisual(this.$remoteMediaFile.getContentType()) ? this.$remoteMediaFile.getContentType() : mimeTypes.getMimeTypeFromContent(downloadData.getOutput());
            }
            this.this$0.getMediaFileMetadataManager().saveMediaFileMetadata(MediaFileMetadata.m2734copy77cDFVw$default(mediaFileMetadata2, null, mimeType, 0L, 0L, this.$remoteMediaFile.m2733getPingTimeUwyO8pc(), downloadData.m2741getExecutionTimeUwyO8pc(), null, null, 205, null));
            return Unit.INSTANCE;
        }
    }
}
