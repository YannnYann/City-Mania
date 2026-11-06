###### Class io.bidmachine.util.cache.MediaFileMetadataManager (io.bidmachine.util.cache.MediaFileMetadataManager)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager;
.super Ljava/lang/Object;
.source "MediaFileMetadataManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileMetadataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileMetadataManager.kt\nio/bidmachine/util/cache/MediaFileMetadataManager\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,164:1\n846#2,4:165\n846#2,4:169\n*S KotlinDebug\n*F\n+ 1 MediaFileMetadataManager.kt\nio/bidmachine/util/cache/MediaFileMetadataManager\n*L\n92#1:165,4\n125#1:169,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;


# instance fields
.field public final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field public final logger:Lio/bidmachine/util/log/LoggerInstance;

.field public final mediaFileMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/cache/MediaFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaFileMetadataMapLock:Ljava/lang/Object;

.field public final scope$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->Companion:Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;-><init>(Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
    .registers 4

    const-string v0, "dispatchers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    .line 19
    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    .line 22
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMapLock:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMap:Ljava/util/Map;

    .line 25
    new-instance p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$scope$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager$scope$2;-><init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->scope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_a

    .line 18
    sget-object p1, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p1

    :cond_a
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_14

    .line 19
    sget-object p2, Lio/bidmachine/util/log/EmptyLoggerInstance;->Companion:Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;->getINSTANCE()Lio/bidmachine/util/log/LoggerInstance;

    move-result-object p2

    .line 17
    :cond_14
    invoke-direct {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager;-><init>(Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V

    return-void
.end method

.method public static final synthetic access$getDispatchers$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Lio/bidmachine/util/SdkDispatchers;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Lio/bidmachine/util/log/LoggerInstance;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->logger:Lio/bidmachine/util/log/LoggerInstance;

    return-object p0
.end method

.method public static final synthetic access$getMediaFileMetadataMap$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Ljava/util/Map;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getMediaFileMetadataMapLock$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Ljava/lang/Object;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$loadMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadataManager;Ljava/io/File;)Lio/bidmachine/util/cache/MediaFileMetadata;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->loadMediaFileMetadata(Ljava/io/File;)Lio/bidmachine/util/cache/MediaFileMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toJSONObject(Lio/bidmachine/util/cache/MediaFileMetadataManager;Lio/bidmachine/util/cache/MediaFileMetadata;)Lorg/json/JSONObject;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->toJSONObject(Lio/bidmachine/util/cache/MediaFileMetadata;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deleteMediaFileMetadata(Ljava/io/File;)V
    .registers 10

    const-string v0, "mediaFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_8
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/cache/MediaFileMetadata;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_27

    .line 84
    monitor-exit v1

    .line 87
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v5, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_27
    move-exception v0

    move-object p1, v0

    .line 84
    monitor-exit v1

    throw p1
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

    .line 47
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;-><init>(Ljava/io/File;Lio/bidmachine/util/cache/MediaFileMetadataManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 25
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final isMediaMetadataFile(Ljava/io/File;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final loadMediaFileMetadata(Ljava/io/File;)Lio/bidmachine/util/cache/MediaFileMetadata;
    .registers 7

    const/4 v0, 0x0

    .line 93
    :try_start_1
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaMetadataFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    goto :goto_25

    .line 97
    :cond_16
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v0}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->toMediaFileMetadata(Lorg/json/JSONObject;)Lio/bidmachine/util/cache/MediaFileMetadata;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    :cond_25
    :goto_25
    return-object v0
.end method

.method public final mediaMetadataFile(Ljava/io/File;)Ljava/io/File;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->isMediaMetadataFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p1

    .line 142
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".meta"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final resetMemoryCache()V
    .registers 3

    .line 30
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 32
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 30
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final saveMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadata;)V
    .registers 10

    const-string v0, "mediaFileMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_8
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaFileMetadataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediaFileMetadata.file.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2f

    .line 102
    monitor-exit v1

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v5, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;-><init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;Lio/bidmachine/util/cache/MediaFileMetadata;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_2f
    move-exception v0

    move-object p1, v0

    .line 102
    monitor-exit v1

    throw p1
.end method

.method public final toJSONObject(Lio/bidmachine/util/cache/MediaFileMetadata;)Lorg/json/JSONObject;
    .registers 6

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "mime"

    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "size"

    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getSizeBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string v1, "frequency"

    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getUsageFrequency()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getPingTime-UwyO8pc()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    const-string v3, "pingTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getDownloadTime-UwyO8pc()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    const-string v3, "downloadTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getLastUsedTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "lastUsed"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p1}, Lio/bidmachine/util/cache/MediaFileMetadata;->getCreatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p1, "createdAt"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final toMediaFileMetadata(Lorg/json/JSONObject;)Lio/bidmachine/util/cache/MediaFileMetadata;
    .registers 18

    move-object/from16 v0, p1

    .line 126
    :try_start_2
    new-instance v1, Lio/bidmachine/util/cache/MediaFileMetadata;

    move-object v2, v1

    .line 127
    new-instance v1, Ljava/io/File;

    const-string v3, "file"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v3, "mime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(KEY_MIME_TYPE)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    const-string v4, "size"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 130
    const-string v6, "frequency"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 131
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const-string v8, "pingTime"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sget-object v10, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v8, v9, v10}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    .line 132
    const-string v11, "downloadTime"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12, v10}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    move-object v12, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    .line 133
    new-instance v11, Ljava/util/Date;

    const-string v13, "lastUsed"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-direct {v11, v13, v14}, Ljava/util/Date;-><init>(J)V

    move-object v13, v12

    .line 134
    new-instance v12, Ljava/util/Date;

    const-string v14, "createdAt"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object v0, v13

    const/4 v13, 0x0

    .line 126
    invoke-direct/range {v0 .. v13}, Lio/bidmachine/util/cache/MediaFileMetadata;-><init>(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_62

    return-object v0

    :catchall_62
    const/4 v0, 0x0

    return-object v0
.end method

.method public final trackUsage(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;-><init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager.Companion (io.bidmachine.util.cache.MediaFileMetadataManager$Companion)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;
.super Ljava/lang/Object;
.source "MediaFileMetadataManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager.AnonymousClass2 (io.bidmachine.util.cache.MediaFileMetadataManager$deleteMediaFileMetadata$2)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileMetadataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager;->deleteMediaFileMetadata(Ljava/io/File;)V
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
    c = "io.bidmachine.util.cache.MediaFileMetadataManager$deleteMediaFileMetadata$2"
    f = "MediaFileMetadataManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaFile:Ljava/io/File;

.field public label:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 87
    iget v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->label:I

    if-nez v0, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$deleteMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    invoke-static {p1}, Lio/bidmachine/util/file/FileUtilsKt;->deleteFile(Ljava/io/File;)Z

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 87
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager.C42672 (io.bidmachine.util.cache.MediaFileMetadataManager$getMediaFileMetadata$2)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileMetadataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaFileMetadataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileMetadataManager.kt\nio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,164:1\n846#2,4:165\n*S KotlinDebug\n*F\n+ 1 MediaFileMetadataManager.kt\nio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2\n*L\n66#1:165,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileMetadataManager$getMediaFileMetadata$2"
    f = "MediaFileMetadataManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaFile:Ljava/io/File;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/bidmachine/util/cache/MediaFileMetadataManager;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

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
    new-instance v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;-><init>(Ljava/io/File;Lio/bidmachine/util/cache/MediaFileMetadataManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 47
    iget v0, v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->label:I

    if-nez v0, :cond_97

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 48
    iget-object v0, v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    return-object v2

    .line 51
    :cond_1a
    iget-object v0, v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    invoke-static {v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$getMediaFileMetadataMapLock$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iget-object v5, v1, Lio/bidmachine/util/cache/MediaFileMetadataManager$getMediaFileMetadata$2;->$mediaFile:Ljava/io/File;

    monitor-enter v3

    .line 53
    :try_start_25
    invoke-static {v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$getMediaFileMetadataMap$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/util/cache/MediaFileMetadata;
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_4f

    if-eqz v4, :cond_37

    .line 55
    monitor-exit v3

    return-object v4

    .line 59
    :cond_37
    :try_start_37
    invoke-static {v0, v5}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$loadMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadataManager;Ljava/io/File;)Lio/bidmachine/util/cache/MediaFileMetadata;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 61
    invoke-static {v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$getMediaFileMetadataMap$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mediaFile.name"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_4f

    .line 62
    monitor-exit v3

    return-object v4

    :catchall_4f
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_95

    .line 67
    :cond_53
    :try_start_53
    new-instance v4, Lio/bidmachine/util/cache/MediaFileMetadata;

    .line 69
    const-string v6, ""

    .line 70
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 72
    sget-object v9, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v9, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/4 v10, 0x0

    invoke-static {v10, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    .line 73
    invoke-static {v10, v9}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    .line 74
    new-instance v15, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 75
    new-instance v9, Ljava/util/Date;
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_86

    move-object/from16 p1, v3

    :try_start_75
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x0

    move-object/from16 v16, v9

    const-wide/16 v9, 0x0

    .line 67
    invoke-direct/range {v4 .. v17}, Lio/bidmachine/util/cache/MediaFileMetadata;-><init>(Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_88

    goto :goto_89

    :catchall_86
    move-object/from16 p1, v3

    :catchall_88
    const/4 v4, 0x0

    :goto_89
    if-eqz v4, :cond_92

    .line 78
    :try_start_8b
    invoke-virtual {v0, v4}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->saveMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadata;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_90

    move-object v2, v4

    goto :goto_93

    :catchall_90
    move-exception v0

    goto :goto_95

    :cond_92
    const/4 v2, 0x0

    .line 51
    :goto_93
    monitor-exit p1

    return-object v2

    :goto_95
    monitor-exit p1

    throw v0

    .line 47
    :cond_97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager.C42682 (io.bidmachine.util.cache.MediaFileMetadataManager$saveMediaFileMetadata$2)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileMetadataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager;->saveMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadata;)V
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
    value = "SMAP\nMediaFileMetadataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaFileMetadataManager.kt\nio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,164:1\n846#2,4:165\n*S KotlinDebug\n*F\n+ 1 MediaFileMetadataManager.kt\nio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2\n*L\n106#1:165,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileMetadataManager$saveMediaFileMetadata$2"
    f = "MediaFileMetadataManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaFileMetadata:Lio/bidmachine/util/cache/MediaFileMetadata;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;Lio/bidmachine/util/cache/MediaFileMetadata;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager;",
            "Lio/bidmachine/util/cache/MediaFileMetadata;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->$mediaFileMetadata:Lio/bidmachine/util/cache/MediaFileMetadata;

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
    new-instance v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->$mediaFileMetadata:Lio/bidmachine/util/cache/MediaFileMetadata;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;-><init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;Lio/bidmachine/util/cache/MediaFileMetadata;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 105
    iget v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->label:I

    if-nez v0, :cond_31

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 106
    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$saveMediaFileMetadata$2;->$mediaFileMetadata:Lio/bidmachine/util/cache/MediaFileMetadata;

    .line 107
    :try_start_12
    invoke-virtual {v0}, Lio/bidmachine/util/cache/MediaFileMetadata;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->mediaMetadataFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$toJSONObject(Lio/bidmachine/util/cache/MediaFileMetadataManager;Lio/bidmachine/util/cache/MediaFileMetadata;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mediaFileMetadata.toJSONObject().toString(2)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0, v2}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 108
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2e

    .line 109
    :catchall_2e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 105
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager.C42692 (io.bidmachine.util.cache.MediaFileMetadataManager$trackUsage$2)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileMetadataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager;->trackUsage(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "io.bidmachine.util.cache.MediaFileMetadataManager$trackUsage$2"
    f = "MediaFileMetadataManager.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $mediaFile:Ljava/io/File;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->$mediaFile:Ljava/io/File;

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
    new-instance p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;

    iget-object v0, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->$mediaFile:Ljava/io/File;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;-><init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    if-ne v2, v3, :cond_13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_3d

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    invoke-static {v2}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$getLogger$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v2

    new-instance v4, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2$1;

    iget-object v5, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->$mediaFile:Ljava/io/File;

    invoke-direct {v4, v5}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2$1;-><init>(Ljava/io/File;)V

    const-string v5, "MediaFileMetadataManager"

    invoke-interface {v2, v5, v4}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 37
    iget-object v2, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    iget-object v4, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->$mediaFile:Ljava/io/File;

    iput v3, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->label:I

    invoke-virtual {v2, v4, v0}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->getMediaFileMetadata(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3d

    return-object v1

    :cond_3d
    :goto_3d
    move-object v3, v2

    check-cast v3, Lio/bidmachine/util/cache/MediaFileMetadata;

    if-eqz v3, :cond_68

    iget-object v1, v0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    .line 40
    invoke-virtual {v3}, Lio/bidmachine/util/cache/MediaFileMetadata;->getUsageFrequency()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v8, v4, v6

    .line 41
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const/16 v16, 0xb7

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    .line 39
    invoke-static/range {v3 .. v17}, Lio/bidmachine/util/cache/MediaFileMetadata;->copy-77cDFVw$default(Lio/bidmachine/util/cache/MediaFileMetadata;Ljava/io/File;Ljava/lang/String;JJJJLjava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lio/bidmachine/util/cache/MediaFileMetadata;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->saveMediaFileMetadata(Lio/bidmachine/util/cache/MediaFileMetadata;)V

    .line 37
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_68
    const/4 v1, 0x0

    return-object v1
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager.C42692.AnonymousClass1 (io.bidmachine.util.cache.MediaFileMetadataManager$trackUsage$2$1)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileMetadataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2$1;->$mediaFile:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track usage for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$trackUsage$2$1;->$mediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.cache.MediaFileMetadataManager$scope$2 (io.bidmachine.util.cache.MediaFileMetadataManager$scope$2)
.class public final Lio/bidmachine/util/cache/MediaFileMetadataManager$scope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaFileMetadataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileMetadataManager;-><init>(Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
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
.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileMetadataManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$scope$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/util/cache/MediaFileMetadataManager$scope$2;->invoke()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileMetadataManager$scope$2;->this$0:Lio/bidmachine/util/cache/MediaFileMetadataManager;

    invoke-static {v1}, Lio/bidmachine/util/cache/MediaFileMetadataManager;->access$getDispatchers$p(Lio/bidmachine/util/cache/MediaFileMetadataManager;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
