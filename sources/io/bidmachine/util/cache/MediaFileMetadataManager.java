package io.bidmachine.util.cache;

import com.ironsource.C3522b4;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.file.FileUtilsKt;
import io.bidmachine.util.log.EmptyLoggerInstance;
import io.bidmachine.util.log.LoggerInstance;
import java.io.File;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: MediaFileMetadataManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MediaFileMetadataManager {
    public static final Companion Companion = new Companion(null);
    public final SdkDispatchers dispatchers;
    public final LoggerInstance logger;
    public final Map<String, MediaFileMetadata> mediaFileMetadataMap;
    public final Object mediaFileMetadataMapLock;
    public final Lazy scope$delegate;

    /* JADX WARN: Multi-variable type inference failed */
    public MediaFileMetadataManager() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public MediaFileMetadataManager(SdkDispatchers dispatchers, LoggerInstance logger) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.dispatchers = dispatchers;
        this.logger = logger;
        this.mediaFileMetadataMapLock = new Object();
        this.mediaFileMetadataMap = new LinkedHashMap();
        this.scope$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineScope>() { // from class: io.bidmachine.util.cache.MediaFileMetadataManager$scope$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(this.this$0.dispatchers.getIo()));
            }
        });
    }

    public /* synthetic */ MediaFileMetadataManager(SdkDispatchers sdkDispatchers, LoggerInstance loggerInstance, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SdkDispatchers.Companion.getDefault() : sdkDispatchers, (i & 2) != 0 ? EmptyLoggerInstance.Companion.getINSTANCE() : loggerInstance);
    }

    public final CoroutineScope getScope() {
        return (CoroutineScope) this.scope$delegate.getValue();
    }

    public final void resetMemoryCache() {
        synchronized (this.mediaFileMetadataMapLock) {
            this.mediaFileMetadataMap.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileMetadataManager$trackUsage$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileMetadataManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileMetadataManager$trackUsage$2", f = "MediaFileMetadataManager.kt", l = {37}, m = "invokeSuspend")
    public static final class C42692 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ File $mediaFile;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42692(File file, Continuation<? super C42692> continuation) {
            super(2, continuation);
            this.$mediaFile = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaFileMetadataManager.this.new C42692(this.$mediaFile, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C42692) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object mediaFileMetadata;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LoggerInstance loggerInstance = MediaFileMetadataManager.this.logger;
                final File file = this.$mediaFile;
                loggerInstance.d("MediaFileMetadataManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileMetadataManager.trackUsage.2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Track usage for " + file.getName();
                    }
                });
                MediaFileMetadataManager mediaFileMetadataManager = MediaFileMetadataManager.this;
                File file2 = this.$mediaFile;
                this.label = 1;
                mediaFileMetadata = mediaFileMetadataManager.getMediaFileMetadata(file2, this);
                if (mediaFileMetadata == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                mediaFileMetadata = obj;
            }
            MediaFileMetadata mediaFileMetadata2 = (MediaFileMetadata) mediaFileMetadata;
            if (mediaFileMetadata2 == null) {
                return null;
            }
            MediaFileMetadataManager.this.saveMediaFileMetadata(MediaFileMetadata.m2734copy77cDFVw$default(mediaFileMetadata2, null, null, 0L, mediaFileMetadata2.getUsageFrequency() + 1, 0L, 0L, new Date(), null, 183, null));
            return Unit.INSTANCE;
        }
    }

    public final Object trackUsage(File file, Continuation<? super Unit> continuation) {
        return BuildersKt.withContext(this.dispatchers.getIo(), new C42692(file, null), continuation);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileMetadataManager$getMediaFileMetadata$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileMetadataManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileMetadataManager$getMediaFileMetadata$2", f = "MediaFileMetadataManager.kt", l = {}, m = "invokeSuspend")
    public static final class C42672 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MediaFileMetadata>, Object> {
        public final /* synthetic */ File $mediaFile;
        public /* synthetic */ Object L$0;
        public int label;
        public final /* synthetic */ MediaFileMetadataManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42672(File file, MediaFileMetadataManager mediaFileMetadataManager, Continuation<? super C42672> continuation) {
            super(2, continuation);
            this.$mediaFile = file;
            this.this$0 = mediaFileMetadataManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C42672 c42672 = new C42672(this.$mediaFile, this.this$0, continuation);
            c42672.L$0 = obj;
            return c42672;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MediaFileMetadata> continuation) {
            return ((C42672) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object obj2;
            MediaFileMetadata mediaFileMetadata;
            MediaFileMetadata mediaFileMetadata2;
            long length;
            DurationUnit durationUnit;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (!this.$mediaFile.exists()) {
                return null;
            }
            Object obj3 = this.this$0.mediaFileMetadataMapLock;
            MediaFileMetadataManager mediaFileMetadataManager = this.this$0;
            File file = this.$mediaFile;
            synchronized (obj3) {
                try {
                    MediaFileMetadata mediaFileMetadata3 = (MediaFileMetadata) mediaFileMetadataManager.mediaFileMetadataMap.get(file.getName());
                    if (mediaFileMetadata3 != null) {
                        return mediaFileMetadata3;
                    }
                    MediaFileMetadata mediaFileMetadataLoadMediaFileMetadata = mediaFileMetadataManager.loadMediaFileMetadata(file);
                    if (mediaFileMetadataLoadMediaFileMetadata != null) {
                        Map map = mediaFileMetadataManager.mediaFileMetadataMap;
                        String name = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "mediaFile.name");
                        map.put(name, mediaFileMetadataLoadMediaFileMetadata);
                        return mediaFileMetadataLoadMediaFileMetadata;
                    }
                    try {
                        length = file.length();
                        Duration.Companion companion = Duration.Companion;
                        durationUnit = DurationUnit.MILLISECONDS;
                        obj2 = obj3;
                    } catch (Throwable unused) {
                        obj2 = obj3;
                    }
                    try {
                        mediaFileMetadata = new MediaFileMetadata(file, "", length, 0L, DurationKt.toDuration(0, durationUnit), DurationKt.toDuration(0, durationUnit), new Date(file.lastModified()), new Date(file.lastModified()), null);
                    } catch (Throwable unused2) {
                        mediaFileMetadata = null;
                    }
                    if (mediaFileMetadata != null) {
                        try {
                            mediaFileMetadataManager.saveMediaFileMetadata(mediaFileMetadata);
                            mediaFileMetadata2 = mediaFileMetadata;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        mediaFileMetadata2 = null;
                    }
                    return mediaFileMetadata2;
                } catch (Throwable th2) {
                    th = th2;
                    obj2 = obj3;
                }
                throw th;
            }
        }
    }

    public final Object getMediaFileMetadata(File file, Continuation<? super MediaFileMetadata> continuation) {
        return BuildersKt.withContext(this.dispatchers.getIo(), new C42672(file, this, null), continuation);
    }

    public final void deleteMediaFileMetadata(File mediaFile) {
        Intrinsics.checkNotNullParameter(mediaFile, "mediaFile");
        synchronized (this.mediaFileMetadataMapLock) {
            this.mediaFileMetadataMap.remove(mediaFile.getName());
        }
        BuildersKt__Builders_commonKt.launch$default(getScope(), null, null, new AnonymousClass2(mediaFile, null), 3, null);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileMetadataManager$deleteMediaFileMetadata$2, reason: invalid class name */
    /* JADX INFO: compiled from: MediaFileMetadataManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileMetadataManager$deleteMediaFileMetadata$2", f = "MediaFileMetadataManager.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ File $mediaFile;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(File file, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$mediaFile = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$mediaFile, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FileUtilsKt.deleteFile(this.$mediaFile);
            return Unit.INSTANCE;
        }
    }

    public final MediaFileMetadata loadMediaFileMetadata(File file) {
        try {
            File fileMediaMetadataFile = mediaMetadataFile(file);
            if (fileMediaMetadataFile.exists() && fileMediaMetadataFile.length() != 0) {
                return toMediaFileMetadata(new JSONObject(FilesKt__FileReadWriteKt.readText$default(fileMediaMetadataFile, null, 1, null)));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final void saveMediaFileMetadata(MediaFileMetadata mediaFileMetadata) {
        Intrinsics.checkNotNullParameter(mediaFileMetadata, "mediaFileMetadata");
        synchronized (this.mediaFileMetadataMapLock) {
            Map<String, MediaFileMetadata> map = this.mediaFileMetadataMap;
            String name = mediaFileMetadata.getFile().getName();
            Intrinsics.checkNotNullExpressionValue(name, "mediaFileMetadata.file.name");
            map.put(name, mediaFileMetadata);
            Unit unit = Unit.INSTANCE;
        }
        BuildersKt__Builders_commonKt.launch$default(getScope(), null, null, new C42682(mediaFileMetadata, null), 3, null);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileMetadataManager$saveMediaFileMetadata$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileMetadataManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileMetadataManager$saveMediaFileMetadata$2", f = "MediaFileMetadataManager.kt", l = {}, m = "invokeSuspend")
    public static final class C42682 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ MediaFileMetadata $mediaFileMetadata;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42682(MediaFileMetadata mediaFileMetadata, Continuation<? super C42682> continuation) {
            super(2, continuation);
            this.$mediaFileMetadata = mediaFileMetadata;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C42682 c42682 = MediaFileMetadataManager.this.new C42682(this.$mediaFileMetadata, continuation);
            c42682.L$0 = obj;
            return c42682;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C42682) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MediaFileMetadataManager mediaFileMetadataManager = MediaFileMetadataManager.this;
            MediaFileMetadata mediaFileMetadata = this.$mediaFileMetadata;
            try {
                File fileMediaMetadataFile = mediaFileMetadataManager.mediaMetadataFile(mediaFileMetadata.getFile());
                String string = mediaFileMetadataManager.toJSONObject(mediaFileMetadata).toString(2);
                Intrinsics.checkNotNullExpressionValue(string, "mediaFileMetadata.toJSONObject().toString(2)");
                FilesKt__FileReadWriteKt.writeText$default(fileMediaMetadataFile, string, null, 2, null);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
            return Unit.INSTANCE;
        }
    }

    public final JSONObject toJSONObject(MediaFileMetadata mediaFileMetadata) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(C3522b4.i.b, mediaFileMetadata.getFile().getPath());
        jSONObject.put("mime", mediaFileMetadata.getMimeType());
        jSONObject.put("size", mediaFileMetadata.getSizeBytes());
        jSONObject.put("frequency", mediaFileMetadata.getUsageFrequency());
        jSONObject.put("pingTime", Duration.m2881getInWholeMillisecondsimpl(mediaFileMetadata.m2737getPingTimeUwyO8pc()));
        jSONObject.put("downloadTime", Duration.m2881getInWholeMillisecondsimpl(mediaFileMetadata.m2736getDownloadTimeUwyO8pc()));
        jSONObject.put("lastUsed", mediaFileMetadata.getLastUsedTime().getTime());
        jSONObject.put("createdAt", mediaFileMetadata.getCreatedAt().getTime());
        return jSONObject;
    }

    public final MediaFileMetadata toMediaFileMetadata(JSONObject jSONObject) {
        try {
            File file = new File(jSONObject.getString(C3522b4.i.b));
            String string = jSONObject.getString("mime");
            Intrinsics.checkNotNullExpressionValue(string, "getString(KEY_MIME_TYPE)");
            long j = jSONObject.getLong("size");
            long j2 = jSONObject.getLong("frequency");
            Duration.Companion companion = Duration.Companion;
            long j3 = jSONObject.getLong("pingTime");
            DurationUnit durationUnit = DurationUnit.MILLISECONDS;
            return new MediaFileMetadata(file, string, j, j2, DurationKt.toDuration(j3, durationUnit), DurationKt.toDuration(jSONObject.getLong("downloadTime"), durationUnit), new Date(jSONObject.getLong("lastUsed")), new Date(jSONObject.getLong("createdAt")), null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final File mediaMetadataFile(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (isMediaMetadataFile(file)) {
            return file;
        }
        return new File(file.getParentFile(), FilesKt__UtilsKt.getNameWithoutExtension(file) + ".meta");
    }

    public final boolean isMediaMetadataFile(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Intrinsics.areEqual(FilesKt__UtilsKt.getExtension(file), "meta");
    }

    /* JADX INFO: compiled from: MediaFileMetadataManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
