###### Class io.bidmachine.util.cache.MediaFileCacheManager (io.bidmachine.util.cache.MediaFileCacheManager)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;,
        Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,595:1\n1851#2,2:596\n1#3:598\n*S KotlinDebug\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager\n*L\n132#1:596,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;

.field public static final defaultConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;


# instance fields
.field public final cacheDir:Ljava/io/File;

.field public final cleanupMutex:Lkotlinx/coroutines/sync/Mutex;

.field public volatile configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

.field public final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field public final downloadManager:Lio/bidmachine/util/download/DownloadManager;

.field public final logger:Lio/bidmachine/util/log/LoggerInstance;

.field public final mediaFileHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mediaFileHolderMapLock:Ljava/lang/Object;

.field public final mediaFileMetadataManager$delegate:Lkotlin/Lazy;

.field public final scope$delegate:Lkotlin/Lazy;

.field public final storageSpaceMonitor:Lio/bidmachine/util/file/StorageSpaceMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileCacheManager;->Companion:Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;

    .line 547
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    .line 548
    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;-><init>(ZZZ)V

    .line 553
    new-instance v3, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

    .line 554
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v4, 0xa

    invoke-static {v4, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    .line 555
    sget-object v2, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v4, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    move-wide v4, v5

    move-wide v6, v7

    const/4 v8, 0x0

    .line 553
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 557
    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    .line 558
    new-instance v4, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

    .line 559
    new-instance v5, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    const-wide/16 v6, 0x1f4

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-direct {v5, v6, v7, v8, v9}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    .line 563
    new-instance v6, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    const-wide/32 v7, 0x500000

    const-wide v9, 0x3fd999999999999aL    # 0.4

    invoke-direct {v6, v7, v8, v9, v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    .line 558
    invoke-direct {v4, v5, v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;)V

    .line 569
    new-instance v11, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    .line 573
    new-instance v5, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    const/4 v6, 0x3

    .line 574
    sget-object v7, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 573
    invoke-direct {v5, v6, v7, v8, v9}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    .line 577
    new-instance v6, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    .line 581
    new-instance v12, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    invoke-direct {v12, v7, v8, v9, v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    .line 585
    new-instance v13, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    invoke-direct {v13, v7, v8, v9, v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    const-wide v12, 0x3fb999999999999aL    # 0.1

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 569
    invoke-direct/range {v11 .. v21}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;-><init>(DDDLio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;)V

    .line 568
    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 557
    invoke-direct {v2, v4, v5}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;Ljava/util/List;)V

    .line 547
    invoke-direct {v0, v1, v3, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;)V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileCacheManager;->defaultConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/bidmachine/util/download/DownloadManager;Lio/bidmachine/util/file/StorageSpaceMonitor;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
    .registers 7

    const-string v0, "cacheDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageSpaceMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->cacheDir:Ljava/io/File;

    .line 35
    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->downloadManager:Lio/bidmachine/util/download/DownloadManager;

    .line 36
    iput-object p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->storageSpaceMonitor:Lio/bidmachine/util/file/StorageSpaceMonitor;

    .line 37
    iput-object p4, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    .line 38
    iput-object p5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    .line 41
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$scope$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$scope$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->scope$delegate:Lkotlin/Lazy;

    .line 46
    sget-object p1, Lio/bidmachine/util/cache/MediaFileCacheManager;->defaultConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    .line 48
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileMetadataManager$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 52
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->cleanupMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMapLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$awaitDownloadTask-0E7RQCE(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->awaitDownloadTask-0E7RQCE(Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCacheDir$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/io/File;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    return-object p0
.end method

.method public static final synthetic access$getDispatchers$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/SdkDispatchers;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getDownloadManager$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/download/DownloadManager;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->downloadManager:Lio/bidmachine/util/download/DownloadManager;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    return-object p0
.end method

.method public static final synthetic access$getMediaFileHolderMap$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/util/Map;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getMediaFileHolderMapLock$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/lang/Object;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getMediaFileInternal-gIAlu-s(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileInternal-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileMetadataManager()Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStorageSpaceMonitor$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/file/StorageSpaceMonitor;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->storageSpaceMonitor:Lio/bidmachine/util/file/StorageSpaceMonitor;

    return-object p0
.end method

.method public static final synthetic access$isMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->isMediaFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMediaFileInUse(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->isMediaFileInUse(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onCachingStart(Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->onCachingStart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$pickRemoteMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->pickRemoteMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic awaitDownloadTask-0E7RQCE$default(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    .line 271
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->awaitDownloadTask-0E7RQCE(Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final awaitDownloadTask-0E7RQCE(Lio/bidmachine/util/download/DownloadManager$DownloadTask;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManager$DownloadTask;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/io/File;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;

    iget v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 271
    iget v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_45

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b8

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_60

    :cond_45
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p1}, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p3

    .line 276
    invoke-virtual {p1}, Lio/bidmachine/util/download/DownloadManager$DownloadTask;->getDeferred()Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5d

    goto :goto_b6

    :cond_5d
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    :goto_60
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p3

    .line 277
    invoke-static {p3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 279
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_88

    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown error while download "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 278
    :cond_88
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 282
    :cond_91
    invoke-static {p3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_99

    move-object p3, v4

    :cond_99
    check-cast p3, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    if-eqz p3, :cond_c4

    .line 283
    invoke-virtual {p3}, Lio/bidmachine/util/download/DownloadManager$DownloadData;->getOutput()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a8

    goto :goto_c4

    :cond_a8
    if-eqz p2, :cond_b9

    .line 286
    iput-object p3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$awaitDownloadTask$1;->label:I

    invoke-interface {p2, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b7

    :goto_b6
    return-object v1

    :cond_b7
    move-object p1, p3

    :goto_b8
    move-object p3, p1

    .line 287
    :cond_b9
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p3}, Lio/bidmachine/util/download/DownloadManager$DownloadData;->getOutput()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 284
    :cond_c4
    :goto_c4
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download task ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") completed, but file not found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->cleanupMutex:Lkotlinx/coroutines/sync/Mutex;

    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1, v2, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->withContextAndLock(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_19

    return-object p1

    :cond_19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final configure(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;)V
    .registers 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    return-void
.end method

.method public final getMediaFile-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/io/File;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;

    iget v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 178
    iget v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 180
    iget-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {p2}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$4;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFile$3;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMediaFileInternal-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/io/File;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;

    iget v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 192
    iget v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    iget-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {p2}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p0, v4}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$2;-><init>(Ljava/util/List;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileInternal$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMediaFileMetadata(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMediaFileMetadataManager()Lio/bidmachine/util/cache/MediaFileMetadataManager;
    .registers 2

    .line 48
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileMetadataManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/cache/MediaFileMetadataManager;

    return-object v0
.end method

.method public final getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->cacheDir:Ljava/io/File;

    invoke-static {v0, p1}, Lio/bidmachine/util/file/FileUtilsKt;->createFileByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 41
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final holdMediaFile(Ljava/io/File;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "mediaFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    const-string v1, "MediaFileCacheManager"

    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;

    invoke-direct {v2, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;-><init>(Ljava/io/File;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 97
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_19
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_3d

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 99
    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mediaFile.path"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_3b
    move-exception p1

    goto :goto_45

    .line 101
    :cond_3d
    :goto_3d
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_3b

    .line 97
    monitor-exit v0

    .line 103
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->printHolderStat()V

    return-void

    .line 97
    :goto_45
    monitor-exit v0

    throw p1
.end method

.method public final isMediaFile(Ljava/io/File;)Z
    .registers 2

    .line 394
    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final isMediaFileInUse(Ljava/io/File;)Z
    .registers 4

    .line 144
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 144
    :goto_12
    monitor-exit v0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onCachingStart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    .line 71
    invoke-virtual {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getCleanConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 72
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    const-string v2, "MediaFileCacheManager"

    sget-object v3, Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;

    invoke-interface {v1, v2, v3}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 73
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_20

    return-object p1

    :cond_20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final onLowDiskSpace()V
    .registers 11

    .line 78
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    .line 79
    invoke-virtual {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getCleanConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 80
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    const-string v2, "MediaFileCacheManager"

    sget-object v3, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;

    invoke-interface {v1, v2, v3}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 81
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v7, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v0, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_26
    return-void
.end method

.method public final onSessionStarted()V
    .registers 11

    .line 62
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    .line 63
    invoke-virtual {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getCleanConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 64
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    const-string v2, "MediaFileCacheManager"

    sget-object v3, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;

    invoke-interface {v1, v2, v3}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v7, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v0, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_26
    return-void
.end method

.method public final pickRemoteMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final printHolderStat()V
    .registers 4

    .line 406
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;

    invoke-direct {v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    const-string v2, "MediaFileCacheManager"

    invoke-interface {v0, v2, v1}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final unholdMediaFiles(Ljava/lang/Object;)V
    .registers 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    const-string v1, "MediaFileCacheManager"

    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$unholdMediaFiles$1;

    invoke-direct {v2, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager$unholdMediaFiles$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 130
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_14
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/Iterable;

    .line 596
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    iget-object v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_42

    .line 134
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    :catchall_40
    move-exception p1

    goto :goto_57

    :cond_42
    :goto_42
    if-eqz v3, :cond_26

    .line 135
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 136
    iget-object v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager;->mediaFileHolderMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 139
    :cond_50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_52
    .catchall {:try_start_14 .. :try_end_52} :catchall_40

    .line 130
    monitor-exit v0

    .line 140
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->printHolderStat()V

    return-void

    .line 130
    :goto_57
    monitor-exit v0

    throw p1
.end method

.method public final withContextAndLock(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/sync/Mutex;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 401
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;-><init>(Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.CleanConfiguration (io.bidmachine.util.cache.MediaFileCacheManager$CleanConfiguration)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CleanConfiguration"
.end annotation


# instance fields
.field public final triggerOnCaching:Z

.field public final triggerOnDiskIssue:Z

.field public final triggerOnStartup:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-boolean p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->triggerOnStartup:Z

    .line 453
    iput-boolean p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->triggerOnCaching:Z

    .line 458
    iput-boolean p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->triggerOnDiskIssue:Z

    return-void
.end method


# virtual methods
.method public final getTriggerOnCaching()Z
    .registers 2

    .line 453
    iget-boolean v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->triggerOnCaching:Z

    return v0
.end method

.method public final getTriggerOnDiskIssue()Z
    .registers 2

    .line 458
    iget-boolean v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->triggerOnDiskIssue:Z

    return v0
.end method

.method public final getTriggerOnStartup()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;->triggerOnStartup:Z

    return v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.Companion (io.bidmachine.util.cache.MediaFileCacheManager$Companion)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.Configuration (io.bidmachine.util.cache.MediaFileCacheManager$Configuration)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final cleanConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

.field public final connectionConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

.field public final policyConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;)V
    .registers 5

    const-string v0, "cleanConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "policyConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->cleanConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    .line 438
    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->connectionConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

    .line 442
    iput-object p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->policyConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    return-void
.end method


# virtual methods
.method public final getCleanConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;
    .registers 2

    .line 434
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->cleanConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    return-object v0
.end method

.method public final getConnectionConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;
    .registers 2

    .line 438
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->connectionConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

    return-object v0
.end method

.method public final getPolicyConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;
    .registers 2

    .line 442
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->policyConfiguration:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.ConnectionConfiguration (io.bidmachine.util.cache.MediaFileCacheManager$ConnectionConfiguration)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionConfiguration"
.end annotation


# instance fields
.field public final downloadRequestTimeout:J

.field public final headRequestTimeout:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-wide p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;->headRequestTimeout:J

    .line 469
    iput-wide p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;->downloadRequestTimeout:J

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final getDownloadRequestTimeout-UwyO8pc()J
    .registers 3

    .line 469
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;->downloadRequestTimeout:J

    return-wide v0
.end method

.method public final getHeadRequestTimeout-UwyO8pc()J
    .registers 3

    .line 465
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;->headRequestTimeout:J

    return-wide v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.DownloadPolicy (io.bidmachine.util.cache.MediaFileCacheManager$DownloadPolicy)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadPolicy"
.end annotation


# instance fields
.field public final maxFileSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

.field public final maxPingTimeMs:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;)V
    .registers 4

    const-string v0, "maxPingTimeMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxFileSizeBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;->maxPingTimeMs:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    .line 491
    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;->maxFileSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-void
.end method


# virtual methods
.method public final getMaxFileSizeBytes()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 2

    .line 491
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;->maxFileSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-object v0
.end method

.method public final getMaxPingTimeMs()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 2

    .line 487
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;->maxPingTimeMs:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.EvictionPolicy (io.bidmachine.util.cache.MediaFileCacheManager$EvictionPolicy)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EvictionPolicy"
.end annotation


# instance fields
.field public final maxDiskAppliedPercent:D

.field public final maxImageSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

.field public final maxTtlMs:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

.field public final maxVideoSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

.field public final minDiskAppliedPercent:D

.field public final minFrequency:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

.field public final score:D


# direct methods
.method public constructor <init>(DDDLio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;)V
    .registers 12

    const-string v0, "maxTtlMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minFrequency"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxImageSizeBytes"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxVideoSizeBytes"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-wide p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->score:D

    .line 502
    iput-wide p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->minDiskAppliedPercent:D

    .line 506
    iput-wide p5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxDiskAppliedPercent:D

    .line 510
    iput-object p7, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxTtlMs:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    .line 514
    iput-object p8, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->minFrequency:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    .line 518
    iput-object p9, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxImageSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    .line 522
    iput-object p10, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxVideoSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-void
.end method


# virtual methods
.method public final getMaxDiskAppliedPercent()D
    .registers 3

    .line 506
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxDiskAppliedPercent:D

    return-wide v0
.end method

.method public final getMaxImageSizeBytes()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 2

    .line 518
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxImageSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-object v0
.end method

.method public final getMaxTtlMs()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 2

    .line 510
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxTtlMs:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-object v0
.end method

.method public final getMaxVideoSizeBytes()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 2

    .line 522
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->maxVideoSizeBytes:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-object v0
.end method

.method public final getMinDiskAppliedPercent()D
    .registers 3

    .line 502
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->minDiskAppliedPercent:D

    return-wide v0
.end method

.method public final getMinFrequency()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 2

    .line 514
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->minFrequency:Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    return-object v0
.end method

.method public final getScore()D
    .registers 3

    .line 498
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->score:D

    return-wide v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.PolicyConfiguration (io.bidmachine.util.cache.MediaFileCacheManager$PolicyConfiguration)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyConfiguration"
.end annotation


# instance fields
.field public final downloadPolicy:Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

.field public final evictionPolicyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;",
            "Ljava/util/List<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadPolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evictionPolicyList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->downloadPolicy:Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

    .line 480
    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->evictionPolicyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDownloadPolicy()Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;
    .registers 2

    .line 476
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->downloadPolicy:Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

    return-object v0
.end method

.method public final getEvictionPolicyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->evictionPolicyList:Ljava/util/List;

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.PolicyLimit (io.bidmachine.util.cache.MediaFileCacheManager$PolicyLimit)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyLimit"
.end annotation


# instance fields
.field public final threshold:J

.field public final weight:D


# direct methods
.method public constructor <init>(JD)V
    .registers 5

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->threshold:J

    iput-wide p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->weight:D

    return-void
.end method


# virtual methods
.method public final score(D)D
    .registers 13

    .line 528
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->threshold:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 p1, 0x0

    return-wide p1

    .line 531
    :cond_b
    iget-wide v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->weight:D

    long-to-double v0, v0

    div-double v4, p1, v0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(DDD)D

    move-result-wide p1

    mul-double/2addr v2, p1

    return-wide v2
.end method

.method public final scoreInverted(D)D
    .registers 15

    .line 535
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->threshold:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 p1, 0x0

    return-wide p1

    .line 538
    :cond_b
    iget-wide v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->weight:D

    const/4 v4, 0x1

    int-to-double v4, v4

    long-to-double v0, v0

    div-double/2addr p1, v0

    sub-double v6, v4, p1

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v6 .. v11}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(DDD)D

    move-result-wide p1

    mul-double/2addr v2, p1

    return-wide v2
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.RemoteMediaFileInfo (io.bidmachine.util.cache.MediaFileCacheManager$RemoteMediaFileInfo)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;
.super Ljava/lang/Object;
.source "MediaFileCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteMediaFileInfo"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final pingTime:J

.field public final score:D

.field public final size:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JD)V
    .registers 9

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    .line 423
    iput-wide p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    .line 424
    iput-object p4, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    .line 425
    iput-wide p5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    .line 426
    iput-wide p7, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;JDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 21

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_d

    .line 423
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 p2, 0x0

    sget-object p3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p2, p3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p2

    :cond_d
    move-wide v2, p2

    and-int/lit8 p2, p9, 0x4

    if-eqz p2, :cond_16

    .line 424
    const-string p2, ""

    move-object v4, p2

    goto :goto_17

    :cond_16
    move-object v4, p4

    :goto_17
    and-int/lit8 p2, p9, 0x8

    if-eqz p2, :cond_22

    const-wide p2, 0x7fffffffffffffffL

    move-wide v5, p2

    goto :goto_23

    :cond_22
    move-wide v5, p5

    :goto_23
    and-int/lit8 p2, p9, 0x10

    if-eqz p2, :cond_2b

    const-wide/16 p2, 0x0

    move-wide v7, p2

    goto :goto_2d

    :cond_2b
    move-wide/from16 v7, p7

    :goto_2d
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 421
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;-><init>(Ljava/lang/String;JLjava/lang/String;JDLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;JDLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p8}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;-><init>(Ljava/lang/String;JLjava/lang/String;JD)V

    return-void
.end method

.method public static synthetic copy-WPwdCS8$default(Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;Ljava/lang/String;JLjava/lang/String;JDILjava/lang/Object;)Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;
    .registers 11

    .line 0
    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_6

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_c

    iget-wide p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    :cond_c
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_12

    iget-object p4, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    :cond_12
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_18

    iget-wide p5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    :cond_18
    and-int/lit8 p9, p9, 0x10

    if-eqz p9, :cond_1e

    iget-wide p7, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    :cond_1e
    move-wide p9, p7

    move-wide p7, p5

    move-object p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p10}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->copy-WPwdCS8(Ljava/lang/String;JLjava/lang/String;JD)Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-WPwdCS8(Ljava/lang/String;JLjava/lang/String;JD)Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;
    .registers 20

    .line 0
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    const/4 v10, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;-><init>(Ljava/lang/String;JLjava/lang/String;JDLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_36

    return v2

    :cond_36
    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    iget-wide v5, p1, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_41

    return v2

    :cond_41
    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 2

    .line 424
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPingTime-UwyO8pc()J
    .registers 3

    .line 423
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    return-wide v0
.end method

.method public final getScore()D
    .registers 3

    .line 426
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    return-wide v0
.end method

.method public final getSize()J
    .registers 3

    .line 425
    iget-wide v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteMediaFileInfo(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->pingTime:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->score:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass2 (io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,595:1\n1959#2,14:596\n288#2,2:610\n13543#3,2:612\n*S KotlinDebug\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2\n*L\n346#1:596,14\n351#1:610,2\n364#1:612,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0x171
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public static synthetic $r8$lambda$lVdl59OXNY7DPLe0DzyTMqb_XTo(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invokeSuspend$lambda$2(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$lambda$2(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z
    .registers 3

    .line 364
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$isMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 338
    iget v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->label:I

    const-string v3, "mediaFile"

    const-string v4, "MediaFileCacheManager"

    const/4 v5, 0x1

    if-eqz v2, :cond_38

    if-ne v2, v5, :cond_30

    iget v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->I$1:I

    iget v6, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->I$0:I

    iget-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    iget-object v8, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$3:Ljava/lang/Object;

    check-cast v8, Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v9, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$2:Ljava/lang/Object;

    check-cast v9, [Ljava/io/File;

    iget-object v10, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    goto/16 :goto_141

    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-virtual {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getPolicyConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->getEvictionPolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 340
    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v1

    sget-object v2, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;

    invoke-interface {v1, v4, v2}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 341
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 344
    :cond_59
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getStorageSpaceMonitor$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/file/StorageSpaceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/util/file/StorageSpaceMonitor;->getStorageSpaceStat()Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_ab

    .line 346
    iget-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-virtual {v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getPolicyConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->getEvictionPolicyList()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 596
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 597
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7d

    goto :goto_a8

    .line 598
    :cond_7d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 599
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_88

    goto :goto_a8

    .line 600
    :cond_88
    move-object v8, v6

    check-cast v8, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    .line 347
    invoke-virtual {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v8

    .line 602
    :cond_8f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 603
    move-object v11, v10

    check-cast v11, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    .line 347
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v11

    .line 1967
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v13

    if-gez v13, :cond_a2

    move-object v6, v10

    move-wide v8, v11

    .line 1971
    :cond_a2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8f

    .line 1972
    :goto_a8
    check-cast v6, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    goto :goto_df

    .line 350
    :cond_ab
    invoke-virtual {v2}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->getUsedStorageSpaceInPercent()D

    move-result-wide v7

    .line 351
    iget-object v9, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-virtual {v9}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getPolicyConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->getEvictionPolicyList()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 610
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_bf
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    .line 352
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v12

    cmpg-double v12, v12, v7

    if-gtz v12, :cond_bf

    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v11

    cmpg-double v11, v7, v11

    if-gez v11, :cond_bf

    move-object v6, v10

    .line 289
    :cond_dd
    check-cast v6, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    :goto_df
    if-nez v6, :cond_f2

    .line 357
    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v1

    new-instance v3, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$2;

    invoke-direct {v3, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$2;-><init>(Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;)V

    invoke-interface {v1, v4, v3}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 360
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 362
    :cond_f2
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 364
    iget-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v7}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getCacheDir$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/io/File;

    move-result-object v7

    iget-object v8, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    new-instance v9, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V

    invoke-virtual {v7, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1d6

    iget-object v8, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    .line 612
    array-length v9, v7

    const/4 v10, 0x0

    move-object v11, v6

    move v6, v10

    move-object v10, v2

    move v2, v9

    move-object v9, v7

    :goto_113
    if-ge v6, v2, :cond_1d5

    aget-object v7, v9, v6

    .line 366
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$isMediaFileInUse(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_126

    move-object/from16 v17, v1

    move/from16 v16, v5

    goto/16 :goto_1cd

    .line 369
    :cond_126
    invoke-static {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v12

    iput-object v11, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->L$4:Ljava/lang/Object;

    iput v6, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->I$0:I

    iput v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->I$1:I

    iput v5, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->label:I

    invoke-virtual {v12, v7, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_141

    return-object v1

    :cond_141
    :goto_141
    check-cast v12, Lio/bidmachine/util/cache/MediaFileMetadata;

    if-nez v12, :cond_14d

    move-object/from16 v17, v1

    move/from16 v16, v5

    move/from16 p1, v6

    goto/16 :goto_1cb

    .line 370
    :cond_14d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getLastUsedTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 371
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMaxTtlMs()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v15

    long-to-double v13, v13

    invoke-virtual {v15, v13, v14}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->scoreInverted(D)D

    move-result-wide v13

    .line 372
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMinFrequency()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v15

    move/from16 v16, v5

    move/from16 p1, v6

    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getUsageFrequency()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v15, v5, v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->score(D)D

    move-result-wide v5

    .line 373
    sget-object v15, Lio/bidmachine/util/MimeTypes;->INSTANCE:Lio/bidmachine/util/MimeTypes;

    move-object/from16 v17, v1

    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lio/bidmachine/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 374
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v1

    move-wide/from16 v18, v5

    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getSizeBytes()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->scoreInverted(D)D

    move-result-wide v5

    goto :goto_1a1

    :cond_192
    move-wide/from16 v18, v5

    .line 377
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v1

    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getSizeBytes()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->scoreInverted(D)D

    move-result-wide v5

    :goto_1a1
    add-double v13, v13, v18

    add-double/2addr v13, v5

    .line 380
    invoke-virtual {v11}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;->getScore()D

    move-result-wide v5

    cmpg-double v1, v13, v5

    if-gez v1, :cond_1cb

    .line 381
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 382
    invoke-static {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v1

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->deleteMediaFileMetadata(Ljava/io/File;)V

    .line 383
    invoke-static {v7}, Lio/bidmachine/util/file/FileUtilsKt;->deleteFile(Ljava/io/File;)Z

    .line 384
    invoke-static {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v1

    new-instance v5, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$4$1;

    invoke-direct {v5, v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$4$1;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v4, v5}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    :cond_1cb
    :goto_1cb
    move/from16 v6, p1

    :goto_1cd
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    move-object/from16 v1, v17

    goto/16 :goto_113

    :cond_1d5
    move-object v2, v10

    .line 387
    :cond_1d6
    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v1

    new-instance v3, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$5;

    invoke-direct {v3, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$5;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-interface {v1, v4, v3}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 390
    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->resetMemoryCache()V

    .line 391
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass2.AnonymousClass1 (io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;

    invoke-direct {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 340
    const-string v0, "Cleanup is skipped due to empty eviction policy list"

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass2.C12102 (io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $storageSpaceStat:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$2;->$storageSpaceStat:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup is skipped due not existing eviction policy (free space "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$2;->$storageSpaceStat:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->getAvailableStorageSpaceInPercent()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass2.AnonymousClass5 (io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$5)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $removedFilesCount:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$5;->$removedFilesCount:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 387
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$5;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup is finished, total removed count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$5;->$removedFilesCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0 (io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v0, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->$r8$lambda$lVdl59OXNY7DPLe0DzyTMqb_XTo(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$4$1 (io.bidmachine.util.cache.MediaFileCacheManager$cleanup$2$4$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $mediaFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$4$1;->$mediaFile:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 384
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$4$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$cleanup$2$4$1;->$mediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42572 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lio/bidmachine/util/cache/MediaFileMetadata;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0x98
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaFile:Ljava/io/File;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileMetadataManager(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$2;->label:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass4 (io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$4)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileMetadata(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lio/bidmachine/util/cache/MediaFileMetadata;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$getMediaFileMetadata$4"
    f = "MediaFileCacheManager.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaUrl:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->$mediaUrl:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->$mediaUrl:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 157
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->$mediaUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getResourceCacheFile$bidmachine_android_sdk_bd_3_8_0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_26

    const/4 p1, 0x0

    return-object p1

    :cond_26
    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$getMediaFileMetadata$4;->label:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    return-object v0

    :cond_2f
    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.AnonymousClass1 (io.bidmachine.util.cache.MediaFileCacheManager$holdMediaFile$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->holdMediaFile(Ljava/io/File;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $holder:Ljava/lang/Object;

.field public final synthetic $mediaFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;->$mediaFile:Ljava/io/File;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;->$holder:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hold media file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;->$mediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", holder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$holdMediaFile$1;->$holder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42582 (io.bidmachine.util.cache.MediaFileCacheManager$onCachingStart$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->onCachingStart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;

    invoke-direct {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;-><init>()V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$onCachingStart$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 72
    const-string v0, "Cleanup is triggered by cache started event"

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42591 (io.bidmachine.util.cache.MediaFileCacheManager$onLowDiskSpace$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->onLowDiskSpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;

    invoke-direct {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 80
    const-string v0, "Cleanup is triggered by low disk space event"

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42602 (io.bidmachine.util.cache.MediaFileCacheManager$onLowDiskSpace$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->onLowDiskSpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$onLowDiskSpace$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0x51
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onLowDiskSpace$2;->label:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42611 (io.bidmachine.util.cache.MediaFileCacheManager$onSessionStarted$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->onSessionStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;

    invoke-direct {v0}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;->INSTANCE:Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "Cleanup is triggered by new session event"

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42622 (io.bidmachine.util.cache.MediaFileCacheManager$onSessionStarted$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->onSessionStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$onSessionStarted$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$onSessionStarted$2;->label:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$cleanup(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42632 (io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->pickRemoteMediaFile(Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,595:1\n1549#2:596\n1620#2,3:597\n1569#2,11:600\n1860#2,2:611\n1862#2:614\n1580#2:615\n1549#2:616\n1620#2,3:617\n1936#2,14:620\n2306#2,14:634\n1#3:613\n*S KotlinDebug\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2\n*L\n300#1:596\n300#1:597,3\n303#1:600,11\n303#1:611,2\n303#1:614\n303#1:615\n313#1:616\n313#1:617,3\n323#1:620,14\n331#1:634,14\n303#1:613\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0x12f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

.field public final synthetic $mediaUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public J$0:J

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iput-object p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$mediaUrlList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    iget-object v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$mediaUrlList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 32

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 293
    iget v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->label:I

    const/16 v4, 0xa

    const-string v5, "MediaFileCacheManager"

    if-eqz v3, :cond_26

    if-ne v3, v1, :cond_1e

    iget-wide v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->J$0:J

    iget-object v6, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_a8

    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->L$0:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 294
    iget-object v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v3

    new-instance v7, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$1;

    iget-object v8, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$mediaUrlList:Ljava/util/List;

    invoke-direct {v7, v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$1;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v5, v7}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 297
    iget-object v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-virtual {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getPolicyConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

    move-result-object v3

    .line 298
    iget-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$configuration:Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    invoke-virtual {v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;->getConnectionConfiguration()Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;->getHeadRequestTimeout-UwyO8pc()J

    move-result-wide v11

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 300
    iget-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$mediaUrlList:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    iget-object v9, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    .line 596
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 597
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_69
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 598
    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    move-object v7, v8

    .line 302
    new-instance v8, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    move-object/from16 v17, v9

    move-wide v12, v11

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object/from16 v18, v9

    move-object v9, v8

    const/4 v8, 0x0

    move-object/from16 v4, v18

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v7

    .line 598
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v8, v4

    move-wide v11, v12

    move-object/from16 v9, v17

    const/16 v4, 0xa

    goto :goto_69

    :cond_98
    move-object v4, v8

    .line 303
    iput-object v3, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->L$0:Ljava/lang/Object;

    iput-wide v14, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->J$0:J

    iput v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->label:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_a6

    return-object v2

    :cond_a6
    move-object v6, v3

    move-wide v2, v14

    .line 293
    :goto_a8
    check-cast v4, Ljava/lang/Iterable;

    iget-object v7, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$mediaUrlList:Ljava/util/List;

    .line 600
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 612
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v9, 0x0

    :goto_b6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_116

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-gez v9, :cond_c7

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 610
    :cond_c7
    check-cast v10, Lkotlin/Result;

    invoke-virtual {v10}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v10

    .line 305
    invoke-static {v10}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_d5

    move-object v10, v13

    :cond_d5
    check-cast v10, Lio/bidmachine/util/download/DownloadManager$CallData;

    if-eqz v10, :cond_10f

    .line 306
    new-instance v19, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 307
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/String;

    .line 308
    invoke-virtual {v10}, Lio/bidmachine/util/download/DownloadManager$CallData;->getExecutionTime-UwyO8pc()J

    move-result-wide v21

    .line 309
    invoke-virtual {v10}, Lio/bidmachine/util/download/DownloadManager$CallData;->contentType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_ef

    const-string v9, ""

    :cond_ef
    move-object/from16 v23, v9

    .line 310
    invoke-virtual {v10}, Lio/bidmachine/util/download/DownloadManager$CallData;->contentLength()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_fe

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_fb
    move-wide/from16 v24, v9

    goto :goto_104

    :cond_fe
    const-wide v9, 0x7fffffffffffffffL

    goto :goto_fb

    :goto_104
    const/16 v28, 0x10

    const/16 v29, 0x0

    const-wide/16 v26, 0x0

    .line 306
    invoke-direct/range {v19 .. v29}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;-><init>(Ljava/lang/String;JLjava/lang/String;JDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v13, v19

    :cond_10f
    if-eqz v13, :cond_114

    .line 610
    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_114
    move v9, v11

    goto :goto_b6

    .line 616
    :cond_116
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v8, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 617
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_125
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_164

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 618
    move-object v8, v7

    check-cast v8, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 315
    invoke-virtual {v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v7

    invoke-virtual {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getPingTime-UwyO8pc()J

    move-result-wide v9

    invoke-static {v9, v10}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v7, v9, v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->scoreInverted(D)D

    move-result-wide v9

    .line 316
    invoke-virtual {v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v7

    invoke-virtual {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getSize()J

    move-result-wide v11

    long-to-double v11, v11

    invoke-virtual {v7, v11, v12}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;->scoreInverted(D)D

    move-result-wide v11

    add-double v15, v9, v11

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    .line 317
    invoke-static/range {v8 .. v18}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->copy-WPwdCS8$default(Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;Ljava/lang/String;JLjava/lang/String;JDILjava/lang/Object;)Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    move-result-object v7

    .line 618
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_125

    .line 319
    :cond_164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 320
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 321
    new-instance v8, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->$mediaUrlList:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    const/16 v17, 0x1c

    const/16 v18, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v8 .. v18}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;-><init>(Ljava/lang/String;JLjava/lang/String;JDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    .line 620
    :cond_18f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 621
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21e

    .line 622
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 623
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a4

    goto :goto_1c4

    .line 624
    :cond_1a4
    move-object v4, v3

    check-cast v4, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 323
    invoke-virtual {v4}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getScore()D

    move-result-wide v6

    .line 626
    :cond_1ab
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 627
    move-object v8, v4

    check-cast v8, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 323
    invoke-virtual {v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getScore()D

    move-result-wide v8

    .line 628
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    if-gez v10, :cond_1be

    move-object v3, v4

    move-wide v6, v8

    .line 632
    :cond_1be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1ab

    .line 323
    :goto_1c4
    check-cast v3, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 324
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v2

    new-instance v4, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$2;

    invoke-direct {v4, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5, v4}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 327
    invoke-virtual {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getScore()D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1e2

    return-object v3

    .line 2306
    :cond_1e2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2307
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_218

    .line 2308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2309
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f7

    goto :goto_215

    .line 638
    :cond_1f7
    move-object v3, v2

    check-cast v3, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 331
    invoke-virtual {v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getSize()J

    move-result-wide v3

    .line 2312
    :cond_1fe
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 641
    move-object v6, v5

    check-cast v6, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    .line 331
    invoke-virtual {v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;->getSize()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-lez v8, :cond_20f

    move-object v2, v5

    move-wide v3, v6

    .line 646
    :cond_20f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1fe

    .line 647
    :goto_215
    check-cast v2, Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;

    return-object v2

    .line 2307
    :cond_218
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 621
    :cond_21e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42632.AnonymousClass1 (io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $mediaUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$1;->$mediaUrlList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 294
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 12

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start picking best file from:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$1;->$mediaUrlList:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42632.C12112 (io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $remoteMediaFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$RemoteMediaFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$2;->$remoteMediaFileInfoList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 12

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download and score stat:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$2;->$remoteMediaFileInfoList:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42641 (io.bidmachine.util.cache.MediaFileCacheManager$printHolderStat$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->printHolderStat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,595:1\n211#2,2:596\n*S KotlinDebug\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1\n*L\n412#1:596,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 406
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 15

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Holder stat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileHolderMapLock$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$printHolderStat$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    monitor-enter v1

    .line 409
    :try_start_10
    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileHolderMap$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 410
    const-string v2, "\n No active holds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    :catchall_20
    move-exception v0

    goto :goto_84

    .line 412
    :cond_22
    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getMediaFileHolderMap$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Ljava/util/Map;

    move-result-object v2

    .line 211
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nHolders: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    const-string v6, ", "

    const/16 v12, 0x3e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 212
    :cond_77
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_20

    .line 408
    :goto_79
    monitor-exit v1

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 408
    :goto_84
    monitor-exit v1

    throw v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42651 (io.bidmachine.util.cache.MediaFileCacheManager$unholdMediaFiles$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$unholdMediaFiles$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->unholdMediaFiles(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $holder:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$unholdMediaFiles$1;->$holder:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 129
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$unholdMediaFiles$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhold holder\'s media files, holder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$unholdMediaFiles$1;->$holder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager.C42662 (io.bidmachine.util.cache.MediaFileCacheManager$withContextAndLock$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;->withContextAndLock(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,595:1\n107#2,10:596\n*S KotlinDebug\n*F\n+ 1 MediaFileCacheManager.kt\nio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2\n*L\n402#1:596,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$withContextAndLock$2"
    f = "MediaFileCacheManager.kt"
    l = {
        0x259,
        0x192
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $mutex:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/Mutex;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->$block:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->$block:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;-><init>(Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 401
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_32

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_5e

    :catchall_17
    move-exception p1

    goto :goto_66

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_4d

    :cond_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 402
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 601
    iput-object v5, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->label:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4d

    goto :goto_5b

    .line 402
    :cond_4d
    :goto_4d
    :try_start_4d
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$withContextAndLock$2;->label:I

    invoke-interface {v1, v5, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_62

    if-ne v1, v0, :cond_5c

    :goto_5b
    return-object v0

    :cond_5c
    move-object v0, p1

    move-object p1, v1

    .line 116
    :goto_5e
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_62
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_66
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$mediaFileMetadataManager$2 (io.bidmachine.util.cache.MediaFileCacheManager$mediaFileMetadataManager$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;-><init>(Ljava/io/File;Lio/bidmachine/util/download/DownloadManager;Lio/bidmachine/util/file/StorageSpaceMonitor;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/bidmachine/util/cache/MediaFileMetadataManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/bidmachine/util/cache/MediaFileMetadataManager;
    .registers 4

    .line 49
    new-instance v0, Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getDispatchers$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/cache/MediaFileMetadataManager;-><init>(Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$mediaFileMetadataManager$2;->invoke()Lio/bidmachine/util/cache/MediaFileMetadataManager;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileCacheManager$scope$2 (io.bidmachine.util.cache.MediaFileCacheManager$scope$2)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$scope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager;-><init>(Ljava/io/File;Lio/bidmachine/util/download/DownloadManager;Lio/bidmachine/util/file/StorageSpaceMonitor;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$scope$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileCacheManager$scope$2;->invoke()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$scope$2;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getDispatchers$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
