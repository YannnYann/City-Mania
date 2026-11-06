package io.bidmachine.util.cache;

import android.os.SystemClock;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.download.DownloadManager;
import io.bidmachine.util.file.FileUtilsKt;
import io.bidmachine.util.file.StorageSpaceMonitor;
import io.bidmachine.util.log.LoggerInstance;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: MediaFileCacheManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MediaFileCacheManager {
    public static final Companion Companion = new Companion(null);
    public static final Configuration defaultConfiguration;
    public final File cacheDir;
    public final Mutex cleanupMutex;
    public volatile Configuration configuration;
    public final SdkDispatchers dispatchers;
    public final DownloadManager downloadManager;
    public final LoggerInstance logger;
    public final Map<String, Set<Object>> mediaFileHolderMap;
    public final Object mediaFileHolderMapLock;
    public final Lazy mediaFileMetadataManager$delegate;
    public final Lazy scope$delegate;
    public final StorageSpaceMonitor storageSpaceMonitor;

    public MediaFileCacheManager(File cacheDir, DownloadManager downloadManager, StorageSpaceMonitor storageSpaceMonitor, SdkDispatchers dispatchers, LoggerInstance logger) {
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(storageSpaceMonitor, "storageSpaceMonitor");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.cacheDir = cacheDir;
        this.downloadManager = downloadManager;
        this.storageSpaceMonitor = storageSpaceMonitor;
        this.dispatchers = dispatchers;
        this.logger = logger;
        this.scope$delegate = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineScope>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager$scope$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(this.this$0.dispatchers.getIo()));
            }
        });
        this.configuration = defaultConfiguration;
        this.mediaFileMetadataManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<MediaFileMetadataManager>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager$mediaFileMetadataManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MediaFileMetadataManager invoke() {
                return new MediaFileMetadataManager(this.this$0.dispatchers, this.this$0.logger);
            }
        });
        this.cleanupMutex = MutexKt.Mutex$default(false, 1, null);
        this.mediaFileHolderMapLock = new Object();
        this.mediaFileHolderMap = new LinkedHashMap();
    }

    public final CoroutineScope getScope() {
        return (CoroutineScope) this.scope$delegate.getValue();
    }

    public final MediaFileMetadataManager getMediaFileMetadataManager() {
        return (MediaFileMetadataManager) this.mediaFileMetadataManager$delegate.getValue();
    }

    public final void configure(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
    }

    public final void onSessionStarted() {
        Configuration configuration = this.configuration;
        if (configuration.getCleanConfiguration().getTriggerOnStartup()) {
            this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.onSessionStarted.1
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Cleanup is triggered by new session event";
                }
            });
            BuildersKt__Builders_commonKt.launch$default(getScope(), null, null, new C42622(configuration, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$onSessionStarted$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$onSessionStarted$2", f = "MediaFileCacheManager.kt", l = {65}, m = "invokeSuspend")
    public static final class C42622 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Configuration $configuration;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42622(Configuration configuration, Continuation<? super C42622> continuation) {
            super(2, continuation);
            this.$configuration = configuration;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaFileCacheManager.this.new C42622(this.$configuration, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C42622) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MediaFileCacheManager mediaFileCacheManager = MediaFileCacheManager.this;
                Configuration configuration = this.$configuration;
                this.label = 1;
                if (mediaFileCacheManager.cleanup(configuration, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final Object onCachingStart(Continuation<? super Unit> continuation) {
        Configuration configuration = this.configuration;
        if (configuration.getCleanConfiguration().getTriggerOnCaching()) {
            this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.onCachingStart.2
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Cleanup is triggered by cache started event";
                }
            });
            Object objCleanup = cleanup(configuration, continuation);
            return objCleanup == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCleanup : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public final void onLowDiskSpace() {
        Configuration configuration = this.configuration;
        if (configuration.getCleanConfiguration().getTriggerOnDiskIssue()) {
            this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.onLowDiskSpace.1
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Cleanup is triggered by low disk space event";
                }
            });
            BuildersKt__Builders_commonKt.launch$default(getScope(), null, null, new C42602(configuration, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$onLowDiskSpace$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$onLowDiskSpace$2", f = "MediaFileCacheManager.kt", l = {81}, m = "invokeSuspend")
    public static final class C42602 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Configuration $configuration;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42602(Configuration configuration, Continuation<? super C42602> continuation) {
            super(2, continuation);
            this.$configuration = configuration;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaFileCacheManager.this.new C42602(this.$configuration, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C42602) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MediaFileCacheManager mediaFileCacheManager = MediaFileCacheManager.this;
                Configuration configuration = this.$configuration;
                this.label = 1;
                if (mediaFileCacheManager.cleanup(configuration, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void holdMediaFile(final File mediaFile, final Object holder) {
        Intrinsics.checkNotNullParameter(mediaFile, "mediaFile");
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.holdMediaFile.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Hold media file " + mediaFile.getName() + ", holder: " + holder;
            }
        });
        synchronized (this.mediaFileHolderMapLock) {
            try {
                Set<Object> linkedHashSet = this.mediaFileHolderMap.get(mediaFile.getPath());
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet<>();
                    Map<String, Set<Object>> map = this.mediaFileHolderMap;
                    String path = mediaFile.getPath();
                    Intrinsics.checkNotNullExpressionValue(path, "mediaFile.path");
                    map.put(path, linkedHashSet);
                }
                linkedHashSet.add(holder);
            } catch (Throwable th) {
                throw th;
            }
        }
        printHolderStat();
    }

    public final void unholdMediaFiles(final Object holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.unholdMediaFiles.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Unhold holder's media files, holder: " + holder;
            }
        });
        synchronized (this.mediaFileHolderMapLock) {
            try {
                for (String str : CollectionsKt___CollectionsKt.toList(this.mediaFileHolderMap.keySet())) {
                    Set<Object> set = this.mediaFileHolderMap.get(str);
                    if (set != null) {
                        set.remove(holder);
                    }
                    if (set != null && set.isEmpty()) {
                        this.mediaFileHolderMap.remove(str);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        printHolderStat();
    }

    public final boolean isMediaFileInUse(File file) {
        boolean z;
        synchronized (this.mediaFileHolderMapLock) {
            z = this.mediaFileHolderMap.get(file.getPath()) != null;
        }
        return z;
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$2", f = "MediaFileCacheManager.kt", l = {152}, m = "invokeSuspend")
    public static final class C42572 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MediaFileMetadata>, Object> {
        public final /* synthetic */ File $mediaFile;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42572(File file, Continuation<? super C42572> continuation) {
            super(2, continuation);
            this.$mediaFile = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaFileCacheManager.this.new C42572(this.$mediaFile, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MediaFileMetadata> continuation) {
            return ((C42572) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            MediaFileMetadataManager mediaFileMetadataManager = MediaFileCacheManager.this.getMediaFileMetadataManager();
            File file = this.$mediaFile;
            this.label = 1;
            Object mediaFileMetadata = mediaFileMetadataManager.getMediaFileMetadata(file, this);
            return mediaFileMetadata == coroutine_suspended ? coroutine_suspended : mediaFileMetadata;
        }
    }

    public final Object getMediaFileMetadata(File file, Continuation<? super MediaFileMetadata> continuation) {
        return BuildersKt.withContext(this.dispatchers.getIo(), new C42572(file, null), continuation);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$4, reason: invalid class name */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$4", f = "MediaFileCacheManager.kt", l = {158}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MediaFileMetadata>, Object> {
        public final /* synthetic */ String $mediaUrl;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(String str, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$mediaUrl = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaFileCacheManager.this.new AnonymousClass4(this.$mediaUrl, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MediaFileMetadata> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            MediaFileCacheManager mediaFileCacheManager = MediaFileCacheManager.this;
            File resourceCacheFile$bidmachine_android_sdk_bd_3_8_0 = mediaFileCacheManager.getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(this.$mediaUrl);
            if (resourceCacheFile$bidmachine_android_sdk_bd_3_8_0 == null) {
                return null;
            }
            this.label = 1;
            Object mediaFileMetadata = mediaFileCacheManager.getMediaFileMetadata(resourceCacheFile$bidmachine_android_sdk_bd_3_8_0, this);
            return mediaFileMetadata == coroutine_suspended ? coroutine_suspended : mediaFileMetadata;
        }
    }

    public final Object getMediaFileMetadata(String str, Continuation<? super MediaFileMetadata> continuation) {
        return BuildersKt.withContext(this.dispatchers.getIo(), new AnonymousClass4(str, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: getMediaFile-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m2727getMediaFilegIAlus(java.util.List<java.lang.String> r6, kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.io.File>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3
            if (r0 == 0) goto L13
            r0 = r7
            io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3 r0 = (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3 r0 = new io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$3
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            io.bidmachine.util.SdkDispatchers r7 = r5.dispatchers
            kotlinx.coroutines.CoroutineDispatcher r7 = r7.getIo()
            io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$4 r2 = new io.bidmachine.util.cache.MediaFileCacheManager$getMediaFile$4
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.cache.MediaFileCacheManager.m2727getMediaFilegIAlus(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: getMediaFileInternal-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m2728getMediaFileInternalgIAlus(java.util.List<java.lang.String> r6, kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.io.File>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$1
            if (r0 == 0) goto L13
            r0 = r7
            io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$1 r0 = (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$1 r0 = new io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            io.bidmachine.util.SdkDispatchers r7 = r5.dispatchers
            kotlinx.coroutines.CoroutineDispatcher r7 = r7.getIo()
            io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2 r2 = new io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileInternal$2
            r4 = 0
            r2.<init>(r6, r5, r4)
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.cache.MediaFileCacheManager.m2728getMediaFileInternalgIAlus(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: awaitDownloadTask-0E7RQCE$default, reason: not valid java name */
    public static /* synthetic */ Object m2725awaitDownloadTask0E7RQCE$default(MediaFileCacheManager mediaFileCacheManager, DownloadManager.DownloadTask downloadTask, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function2 = null;
        }
        return mediaFileCacheManager.m2726awaitDownloadTask0E7RQCE(downloadTask, function2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: awaitDownloadTask-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m2726awaitDownloadTask0E7RQCE(io.bidmachine.util.download.DownloadManager.DownloadTask r7, kotlin.jvm.functions.Function2<? super io.bidmachine.util.download.DownloadManager.DownloadData, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r8, kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.io.File>> r9) {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.cache.MediaFileCacheManager.m2726awaitDownloadTask0E7RQCE(io.bidmachine.util.download.DownloadManager$DownloadTask, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2", f = "MediaFileCacheManager.kt", l = {303}, m = "invokeSuspend")
    public static final class C42632 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RemoteMediaFileInfo>, Object> {
        public final /* synthetic */ Configuration $configuration;
        public final /* synthetic */ List<String> $mediaUrlList;
        public long J$0;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42632(Configuration configuration, List<String> list, Continuation<? super C42632> continuation) {
            super(2, continuation);
            this.$configuration = configuration;
            this.$mediaUrlList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C42632 c42632 = MediaFileCacheManager.this.new C42632(this.$configuration, this.$mediaUrlList, continuation);
            c42632.L$0 = obj;
            return c42632;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RemoteMediaFileInfo> continuation) {
            return ((C42632) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objAwaitAll;
            DownloadPolicy downloadPolicy;
            long j;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                LoggerInstance loggerInstance = MediaFileCacheManager.this.logger;
                final List<String> list = this.$mediaUrlList;
                loggerInstance.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.pickRemoteMediaFile.2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Start picking best file from:\n" + CollectionsKt___CollectionsKt.joinToString$default(list, "\n", null, null, 0, null, null, 62, null);
                    }
                });
                DownloadPolicy downloadPolicy2 = this.$configuration.getPolicyConfiguration().getDownloadPolicy();
                long jM2730getHeadRequestTimeoutUwyO8pc = this.$configuration.getConnectionConfiguration().m2730getHeadRequestTimeoutUwyO8pc();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                List<String> list2 = this.$mediaUrlList;
                MediaFileCacheManager mediaFileCacheManager = MediaFileCacheManager.this;
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1(mediaFileCacheManager, (String) it.next(), jM2730getHeadRequestTimeoutUwyO8pc, null), 3, null));
                    arrayList = arrayList2;
                    jM2730getHeadRequestTimeoutUwyO8pc = jM2730getHeadRequestTimeoutUwyO8pc;
                    mediaFileCacheManager = mediaFileCacheManager;
                }
                this.L$0 = downloadPolicy2;
                this.J$0 = jElapsedRealtime;
                this.label = 1;
                objAwaitAll = AwaitKt.awaitAll(arrayList, this);
                if (objAwaitAll == coroutine_suspended) {
                    return coroutine_suspended;
                }
                downloadPolicy = downloadPolicy2;
                j = jElapsedRealtime;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = this.J$0;
                downloadPolicy = (DownloadPolicy) this.L$0;
                ResultKt.throwOnFailure(obj);
                objAwaitAll = obj;
            }
            List<String> list3 = this.$mediaUrlList;
            ArrayList arrayList3 = new ArrayList();
            int i2 = 0;
            for (Object obj2 : (Iterable) objAwaitAll) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Object objM2768unboximpl = ((Result) obj2).m2768unboximpl();
                RemoteMediaFileInfo remoteMediaFileInfo = null;
                if (Result.m2765isFailureimpl(objM2768unboximpl)) {
                    objM2768unboximpl = null;
                }
                DownloadManager.CallData callData = (DownloadManager.CallData) objM2768unboximpl;
                if (callData != null) {
                    String str = list3.get(i2);
                    long jM2740getExecutionTimeUwyO8pc = callData.m2740getExecutionTimeUwyO8pc();
                    String strContentType = callData.contentType();
                    if (strContentType == null) {
                        strContentType = "";
                    }
                    String str2 = strContentType;
                    Long lContentLength = callData.contentLength();
                    remoteMediaFileInfo = new RemoteMediaFileInfo(str, jM2740getExecutionTimeUwyO8pc, str2, lContentLength != null ? lContentLength.longValue() : Long.MAX_VALUE, 0.0d, 16, null);
                }
                if (remoteMediaFileInfo != null) {
                    arrayList3.add(remoteMediaFileInfo);
                }
                i2 = i3;
            }
            final ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                arrayList4.add(RemoteMediaFileInfo.m2731copyWPwdCS8$default((RemoteMediaFileInfo) it2.next(), null, 0L, null, 0L, downloadPolicy.getMaxPingTimeMs().scoreInverted(Duration.m2881getInWholeMillisecondsimpl(r8.m2733getPingTimeUwyO8pc())) + downloadPolicy.getMaxFileSizeBytes().scoreInverted(r8.getSize()), 15, null));
            }
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - j;
            if (arrayList4.isEmpty()) {
                String str3 = (String) CollectionsKt___CollectionsKt.first((List) this.$mediaUrlList);
                Duration.Companion companion = Duration.Companion;
                return new RemoteMediaFileInfo(str3, DurationKt.toDuration(jElapsedRealtime2, DurationUnit.MILLISECONDS), null, 0L, 0.0d, 28, null);
            }
            Iterator it3 = arrayList4.iterator();
            if (!it3.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next = it3.next();
            if (it3.hasNext()) {
                double score = ((RemoteMediaFileInfo) next).getScore();
                do {
                    Object next2 = it3.next();
                    double score2 = ((RemoteMediaFileInfo) next2).getScore();
                    if (Double.compare(score, score2) < 0) {
                        next = next2;
                        score = score2;
                    }
                } while (it3.hasNext());
            }
            RemoteMediaFileInfo remoteMediaFileInfo2 = (RemoteMediaFileInfo) next;
            MediaFileCacheManager.this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.pickRemoteMediaFile.2.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Download and score stat:\n" + CollectionsKt___CollectionsKt.joinToString$default(arrayList4, "\n", null, null, 0, null, null, 62, null);
                }
            });
            if (remoteMediaFileInfo2.getScore() > 1.0E-4d) {
                return remoteMediaFileInfo2;
            }
            Iterator it4 = arrayList4.iterator();
            if (!it4.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next3 = it4.next();
            if (it4.hasNext()) {
                long size = ((RemoteMediaFileInfo) next3).getSize();
                do {
                    Object next4 = it4.next();
                    long size2 = ((RemoteMediaFileInfo) next4).getSize();
                    if (size > size2) {
                        next3 = next4;
                        size = size2;
                    }
                } while (it4.hasNext());
            }
            return (RemoteMediaFileInfo) next3;
        }
    }

    public final Object pickRemoteMediaFile(Configuration configuration, List<String> list, Continuation<? super RemoteMediaFileInfo> continuation) {
        return BuildersKt.withContext(this.dispatchers.getIo(), new C42632(configuration, list, null), continuation);
    }

    public final File getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return FileUtilsKt.createFileByUrl(this.cacheDir, url);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2, reason: invalid class name */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2", f = "MediaFileCacheManager.kt", l = {369}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Configuration $configuration;
        public int I$0;
        public int I$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public final /* synthetic */ MediaFileCacheManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Configuration configuration, MediaFileCacheManager mediaFileCacheManager, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$configuration = configuration;
            this.this$0 = mediaFileCacheManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$configuration, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0115  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x01d5  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0120 -> B:60:0x01cd). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x013e -> B:49:0x0141). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 496
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        public static final boolean invokeSuspend$lambda$2(MediaFileCacheManager mediaFileCacheManager, File file) {
            Intrinsics.checkNotNullExpressionValue(file, "file");
            return mediaFileCacheManager.isMediaFile(file);
        }
    }

    public final Object cleanup(Configuration configuration, Continuation<? super Unit> continuation) {
        Object objWithContextAndLock = withContextAndLock(this.dispatchers.getIo(), this.cleanupMutex, new AnonymousClass2(configuration, this, null), continuation);
        return objWithContextAndLock == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContextAndLock : Unit.INSTANCE;
    }

    public final boolean isMediaFile(File file) {
        return StringsKt__StringsKt.isBlank(FilesKt__UtilsKt.getExtension(file));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: io.bidmachine.util.cache.MediaFileCacheManager$withContextAndLock$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    @DebugMetadata(c = "io.bidmachine.util.cache.MediaFileCacheManager$withContextAndLock$2", f = "MediaFileCacheManager.kt", l = {601, 402}, m = "invokeSuspend")
    public static final class C42662<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        public final /* synthetic */ Function2<CoroutineScope, Continuation<? super T>, Object> $block;
        public final /* synthetic */ Mutex $mutex;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C42662(Mutex mutex, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super C42662> continuation) {
            super(2, continuation);
            this.$mutex = mutex;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C42662 c42662 = new C42662(this.$mutex, this.$block, continuation);
            c42662.L$0 = obj;
            return c42662;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C42662) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            CoroutineScope coroutineScope;
            Mutex mutex;
            Function2<CoroutineScope, Continuation<? super T>, Object> function2;
            Mutex mutex2;
            Throwable th;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.L$0;
                    mutex = this.$mutex;
                    function2 = this.$block;
                    this.L$0 = coroutineScope;
                    this.L$1 = mutex;
                    this.L$2 = function2;
                    this.label = 1;
                    if (mutex.lock(null, this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex2 = (Mutex) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        mutex2.unlock(null);
                        return obj;
                    } catch (Throwable th2) {
                        th = th2;
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                function2 = (Function2) this.L$2;
                Mutex mutex3 = (Mutex) this.L$1;
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                mutex = mutex3;
                this.L$0 = mutex;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 2;
                Object objInvoke = function2.invoke(coroutineScope, this);
                if (objInvoke != coroutine_suspended) {
                    mutex2 = mutex;
                    obj = objInvoke;
                    mutex2.unlock(null);
                    return obj;
                }
                return coroutine_suspended;
            } catch (Throwable th3) {
                mutex2 = mutex;
                th = th3;
                mutex2.unlock(null);
                throw th;
            }
        }
    }

    public final <T> Object withContextAndLock(CoroutineContext coroutineContext, Mutex mutex, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return BuildersKt.withContext(coroutineContext, new C42662(mutex, function2, null), continuation);
    }

    public final void printHolderStat() {
        this.logger.d("MediaFileCacheManager", new Function0<String>() { // from class: io.bidmachine.util.cache.MediaFileCacheManager.printHolderStat.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                StringBuilder sb = new StringBuilder("Holder stat:");
                Object obj = MediaFileCacheManager.this.mediaFileHolderMapLock;
                MediaFileCacheManager mediaFileCacheManager = MediaFileCacheManager.this;
                synchronized (obj) {
                    try {
                        if (!mediaFileCacheManager.mediaFileHolderMap.isEmpty()) {
                            for (Map.Entry entry : mediaFileCacheManager.mediaFileHolderMap.entrySet()) {
                                sb.append("\nFile: " + ((String) entry.getKey()) + "\nHolders: [" + CollectionsKt___CollectionsKt.joinToString$default((Iterable) entry.getValue(), ", ", null, null, 0, null, null, 62, null) + ']');
                            }
                            Unit unit = Unit.INSTANCE;
                        } else {
                            sb.append("\n No active holds");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                String string = sb.toString();
                Intrinsics.checkNotNullExpressionValue(string, "sb.toString()");
                return string;
            }
        });
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class RemoteMediaFileInfo {
        public final String contentType;
        public final long pingTime;
        public final double score;
        public final long size;
        public final String url;

        public /* synthetic */ RemoteMediaFileInfo(String str, long j, String str2, long j2, double d, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j, str2, j2, d);
        }

        /* JADX INFO: renamed from: copy-WPwdCS8$default, reason: not valid java name */
        public static /* synthetic */ RemoteMediaFileInfo m2731copyWPwdCS8$default(RemoteMediaFileInfo remoteMediaFileInfo, String str, long j, String str2, long j2, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                str = remoteMediaFileInfo.url;
            }
            if ((i & 2) != 0) {
                j = remoteMediaFileInfo.pingTime;
            }
            if ((i & 4) != 0) {
                str2 = remoteMediaFileInfo.contentType;
            }
            if ((i & 8) != 0) {
                j2 = remoteMediaFileInfo.size;
            }
            if ((i & 16) != 0) {
                d = remoteMediaFileInfo.score;
            }
            String str3 = str2;
            return remoteMediaFileInfo.m2732copyWPwdCS8(str, j, str3, j2, d);
        }

        /* JADX INFO: renamed from: copy-WPwdCS8, reason: not valid java name */
        public final RemoteMediaFileInfo m2732copyWPwdCS8(String url, long j, String contentType, long j2, double d) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(contentType, "contentType");
            return new RemoteMediaFileInfo(url, j, contentType, j2, d, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteMediaFileInfo)) {
                return false;
            }
            RemoteMediaFileInfo remoteMediaFileInfo = (RemoteMediaFileInfo) obj;
            return Intrinsics.areEqual(this.url, remoteMediaFileInfo.url) && Duration.m2875equalsimpl0(this.pingTime, remoteMediaFileInfo.pingTime) && Intrinsics.areEqual(this.contentType, remoteMediaFileInfo.contentType) && this.size == remoteMediaFileInfo.size && Double.compare(this.score, remoteMediaFileInfo.score) == 0;
        }

        public int hashCode() {
            return (((((((this.url.hashCode() * 31) + Duration.m2889hashCodeimpl(this.pingTime)) * 31) + this.contentType.hashCode()) * 31) + Long.hashCode(this.size)) * 31) + Double.hashCode(this.score);
        }

        public String toString() {
            return "RemoteMediaFileInfo(url=" + this.url + ", pingTime=" + ((Object) Duration.m2903toStringimpl(this.pingTime)) + ", contentType=" + this.contentType + ", size=" + this.size + ", score=" + this.score + ')';
        }

        public RemoteMediaFileInfo(String str, long j, String str2, long j2, double d) {
            this.url = str;
            this.pingTime = j;
            this.contentType = str2;
            this.size = j2;
            this.score = d;
        }

        public final String getUrl() {
            return this.url;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ RemoteMediaFileInfo(String str, long j, String str2, long j2, double d, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 2) != 0) {
                Duration.Companion companion = Duration.Companion;
                j = DurationKt.toDuration(0, DurationUnit.MILLISECONDS);
            }
            this(str, j, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? Long.MAX_VALUE : j2, (i & 16) != 0 ? 0.0d : d, null);
        }

        /* JADX INFO: renamed from: getPingTime-UwyO8pc, reason: not valid java name */
        public final long m2733getPingTimeUwyO8pc() {
            return this.pingTime;
        }

        public final String getContentType() {
            return this.contentType;
        }

        public final long getSize() {
            return this.size;
        }

        public final double getScore() {
            return this.score;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class Configuration {
        public final CleanConfiguration cleanConfiguration;
        public final ConnectionConfiguration connectionConfiguration;
        public final PolicyConfiguration policyConfiguration;

        public Configuration(CleanConfiguration cleanConfiguration, ConnectionConfiguration connectionConfiguration, PolicyConfiguration policyConfiguration) {
            Intrinsics.checkNotNullParameter(cleanConfiguration, "cleanConfiguration");
            Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
            Intrinsics.checkNotNullParameter(policyConfiguration, "policyConfiguration");
            this.cleanConfiguration = cleanConfiguration;
            this.connectionConfiguration = connectionConfiguration;
            this.policyConfiguration = policyConfiguration;
        }

        public final CleanConfiguration getCleanConfiguration() {
            return this.cleanConfiguration;
        }

        public final ConnectionConfiguration getConnectionConfiguration() {
            return this.connectionConfiguration;
        }

        public final PolicyConfiguration getPolicyConfiguration() {
            return this.policyConfiguration;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class CleanConfiguration {
        public final boolean triggerOnCaching;
        public final boolean triggerOnDiskIssue;
        public final boolean triggerOnStartup;

        public CleanConfiguration(boolean z, boolean z2, boolean z3) {
            this.triggerOnStartup = z;
            this.triggerOnCaching = z2;
            this.triggerOnDiskIssue = z3;
        }

        public final boolean getTriggerOnStartup() {
            return this.triggerOnStartup;
        }

        public final boolean getTriggerOnCaching() {
            return this.triggerOnCaching;
        }

        public final boolean getTriggerOnDiskIssue() {
            return this.triggerOnDiskIssue;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class ConnectionConfiguration {
        public final long downloadRequestTimeout;
        public final long headRequestTimeout;

        public /* synthetic */ ConnectionConfiguration(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, j2);
        }

        public ConnectionConfiguration(long j, long j2) {
            this.headRequestTimeout = j;
            this.downloadRequestTimeout = j2;
        }

        /* JADX INFO: renamed from: getHeadRequestTimeout-UwyO8pc, reason: not valid java name */
        public final long m2730getHeadRequestTimeoutUwyO8pc() {
            return this.headRequestTimeout;
        }

        /* JADX INFO: renamed from: getDownloadRequestTimeout-UwyO8pc, reason: not valid java name */
        public final long m2729getDownloadRequestTimeoutUwyO8pc() {
            return this.downloadRequestTimeout;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class PolicyConfiguration {
        public final DownloadPolicy downloadPolicy;
        public final List<EvictionPolicy> evictionPolicyList;

        public PolicyConfiguration(DownloadPolicy downloadPolicy, List<EvictionPolicy> evictionPolicyList) {
            Intrinsics.checkNotNullParameter(downloadPolicy, "downloadPolicy");
            Intrinsics.checkNotNullParameter(evictionPolicyList, "evictionPolicyList");
            this.downloadPolicy = downloadPolicy;
            this.evictionPolicyList = evictionPolicyList;
        }

        public final DownloadPolicy getDownloadPolicy() {
            return this.downloadPolicy;
        }

        public final List<EvictionPolicy> getEvictionPolicyList() {
            return this.evictionPolicyList;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class DownloadPolicy {
        public final PolicyLimit maxFileSizeBytes;
        public final PolicyLimit maxPingTimeMs;

        public DownloadPolicy(PolicyLimit maxPingTimeMs, PolicyLimit maxFileSizeBytes) {
            Intrinsics.checkNotNullParameter(maxPingTimeMs, "maxPingTimeMs");
            Intrinsics.checkNotNullParameter(maxFileSizeBytes, "maxFileSizeBytes");
            this.maxPingTimeMs = maxPingTimeMs;
            this.maxFileSizeBytes = maxFileSizeBytes;
        }

        public final PolicyLimit getMaxPingTimeMs() {
            return this.maxPingTimeMs;
        }

        public final PolicyLimit getMaxFileSizeBytes() {
            return this.maxFileSizeBytes;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class EvictionPolicy {
        public final double maxDiskAppliedPercent;
        public final PolicyLimit maxImageSizeBytes;
        public final PolicyLimit maxTtlMs;
        public final PolicyLimit maxVideoSizeBytes;
        public final double minDiskAppliedPercent;
        public final PolicyLimit minFrequency;
        public final double score;

        public EvictionPolicy(double d, double d2, double d3, PolicyLimit maxTtlMs, PolicyLimit minFrequency, PolicyLimit maxImageSizeBytes, PolicyLimit maxVideoSizeBytes) {
            Intrinsics.checkNotNullParameter(maxTtlMs, "maxTtlMs");
            Intrinsics.checkNotNullParameter(minFrequency, "minFrequency");
            Intrinsics.checkNotNullParameter(maxImageSizeBytes, "maxImageSizeBytes");
            Intrinsics.checkNotNullParameter(maxVideoSizeBytes, "maxVideoSizeBytes");
            this.score = d;
            this.minDiskAppliedPercent = d2;
            this.maxDiskAppliedPercent = d3;
            this.maxTtlMs = maxTtlMs;
            this.minFrequency = minFrequency;
            this.maxImageSizeBytes = maxImageSizeBytes;
            this.maxVideoSizeBytes = maxVideoSizeBytes;
        }

        public final double getScore() {
            return this.score;
        }

        public final double getMinDiskAppliedPercent() {
            return this.minDiskAppliedPercent;
        }

        public final double getMaxDiskAppliedPercent() {
            return this.maxDiskAppliedPercent;
        }

        public final PolicyLimit getMaxTtlMs() {
            return this.maxTtlMs;
        }

        public final PolicyLimit getMinFrequency() {
            return this.minFrequency;
        }

        public final PolicyLimit getMaxImageSizeBytes() {
            return this.maxImageSizeBytes;
        }

        public final PolicyLimit getMaxVideoSizeBytes() {
            return this.maxVideoSizeBytes;
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class PolicyLimit {
        public final long threshold;
        public final double weight;

        public PolicyLimit(long j, double d) {
            this.threshold = j;
            this.weight = d;
        }

        public final double score(double d) {
            long j = this.threshold;
            if (j == 0) {
                return 0.0d;
            }
            return this.weight * RangesKt___RangesKt.coerceIn(d / j, 0.0d, 1.0d);
        }

        public final double scoreInverted(double d) {
            long j = this.threshold;
            if (j == 0) {
                return 0.0d;
            }
            return this.weight * RangesKt___RangesKt.coerceIn(((double) 1) - (d / j), 0.0d, 1.0d);
        }
    }

    /* JADX INFO: compiled from: MediaFileCacheManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    static {
        CleanConfiguration cleanConfiguration = new CleanConfiguration(true, true, true);
        Duration.Companion companion = Duration.Companion;
        defaultConfiguration = new Configuration(cleanConfiguration, new ConnectionConfiguration(DurationKt.toDuration(10, DurationUnit.SECONDS), DurationKt.toDuration(10, DurationUnit.MINUTES), null), new PolicyConfiguration(new DownloadPolicy(new PolicyLimit(500L, 0.8d), new PolicyLimit(5242880L, 0.4d)), CollectionsKt__CollectionsJVMKt.listOf(new EvictionPolicy(0.1d, 0.0d, 1.0d, new PolicyLimit(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(3, DurationUnit.DAYS)), 1.0d), new PolicyLimit(0L, 0.0d), new PolicyLimit(0L, 0.0d), new PolicyLimit(0L, 0.0d)))));
    }
}
