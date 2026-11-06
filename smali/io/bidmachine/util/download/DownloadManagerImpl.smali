###### Class io.bidmachine.util.download.DownloadManagerImpl (io.bidmachine.util.download.DownloadManagerImpl)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/download/DownloadManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;,
        Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;,
        Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;,
        Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;,
        Lio/bidmachine/util/download/DownloadManagerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/download/DownloadManagerImpl$Companion;


# instance fields
.field public final activeDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;",
            "Lio/bidmachine/util/download/DownloadManager$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public final activeDownloadsLock:Ljava/lang/Object;

.field public final applicationContext:Landroid/content/Context;

.field public final cleanupDeferred:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final contentFetcher$delegate:Lkotlin/Lazy;

.field public final contentFetcherBuilder:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lio/bidmachine/util/log/LoggerInstance;",
            "Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;",
            ">;"
        }
    .end annotation
.end field

.field public final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field public final logger:Lio/bidmachine/util/log/LoggerInstance;

.field public final scope$delegate:Lkotlin/Lazy;

.field public final tempDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/download/DownloadManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/download/DownloadManagerImpl;->Companion:Lio/bidmachine/util/download/DownloadManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/io/File;",
            "-",
            "Lio/bidmachine/util/log/LoggerInstance;",
            "+",
            "Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;",
            ">;",
            "Lio/bidmachine/util/SdkDispatchers;",
            "Lio/bidmachine/util/log/LoggerInstance;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentFetcherBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->tempDir:Ljava/io/File;

    .line 32
    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->contentFetcherBuilder:Lkotlin/jvm/functions/Function3;

    .line 37
    iput-object p4, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    .line 38
    iput-object p5, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->logger:Lio/bidmachine/util/log/LoggerInstance;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->applicationContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lio/bidmachine/util/download/DownloadManagerImpl$scope$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/download/DownloadManagerImpl$scope$2;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->scope$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->contentFetcher$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloadsLock:Ljava/lang/Object;

    .line 52
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloads:Ljava/util/Map;

    .line 54
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl;->cleanupNotCompletedDownloads()Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->cleanupDeferred:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    .line 34
    sget-object p3, Lio/bidmachine/util/download/DownloadManagerImpl$1;->INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$1;

    :cond_6
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_11

    .line 37
    sget-object p3, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p3}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p4

    :cond_11
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1c

    .line 38
    sget-object p3, Lio/bidmachine/util/log/EmptyLoggerInstance;->Companion:Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;

    invoke-virtual {p3}, Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;->getINSTANCE()Lio/bidmachine/util/log/LoggerInstance;

    move-result-object p5

    :cond_1c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 29
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/util/download/DownloadManagerImpl;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V

    return-void
.end method

.method public static final synthetic access$getActiveDownloads$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/util/Map;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloads:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getActiveDownloadsLock$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/lang/Object;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloadsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getApplicationContext$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getContentFetcher(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl;->getContentFetcher()Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContentFetcherBuilder$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lkotlin/jvm/functions/Function3;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->contentFetcherBuilder:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic access$getDispatchers$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/SdkDispatchers;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/log/LoggerInstance;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->logger:Lio/bidmachine/util/log/LoggerInstance;

    return-object p0
.end method

.method public static final synthetic access$getTempDir$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/io/File;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->tempDir:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final cleanupNotCompletedDownloads()Lkotlinx/coroutines/Deferred;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final createDownloadKey(Ljava/lang/String;Ljava/io/File;)Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;
    .registers 5

    .line 134
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "outputFile.path"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public download-moChb0s(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;
    .registers 7

    .line 92
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl;->createDownloadKey(Ljava/lang/String;Ljava/io/File;)Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloads:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/util/download/DownloadManager$DownloadTask;

    if-eqz v2, :cond_2b

    .line 96
    iget-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->logger:Lio/bidmachine/util/log/LoggerInstance;

    const-string p3, "DownloadManager"

    new-instance v1, Lio/bidmachine/util/download/DownloadManagerImpl$download$1$1;

    invoke-direct {v1, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$download$1$1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3, v1}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 97
    monitor-exit v0

    return-object v2

    :catchall_29
    move-exception p1

    goto :goto_3b

    .line 99
    :cond_2b
    :try_start_2b
    new-instance v2, Lio/bidmachine/util/download/DownloadManager$DownloadTask;

    .line 101
    invoke-virtual {p0, v1, p1, p2, p3}, Lio/bidmachine/util/download/DownloadManagerImpl;->runDownload-Q2Q30fc(Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lkotlinx/coroutines/Deferred;

    move-result-object p2

    .line 99
    invoke-direct {v2, p1, p2}, Lio/bidmachine/util/download/DownloadManager$DownloadTask;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Deferred;)V

    .line 108
    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloads:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_29

    .line 109
    monitor-exit v0

    return-object v2

    :goto_3b
    monitor-exit v0

    throw p1
.end method

.method public final ensureCleanupCompleted$bidmachine_android_sdk_bd_3_8_0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
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
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->cleanupDeferred:Lkotlinx/coroutines/Deferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getActiveDownloadTask(Ljava/lang/String;Ljava/io/File;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;
    .registers 5

    .line 84
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_d
    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->activeDownloads:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl;->createDownloadKey(Ljava/lang/String;Ljava/io/File;)Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/download/DownloadManager$DownloadTask;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getContentFetcher()Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;
    .registers 2

    .line 47
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->contentFetcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;

    return-object v0
.end method

.method public getHeadCallData-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$CallData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;

    iget v1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    iget-object p3, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {p3}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    new-instance v2, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$1;->label:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 43
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final runDownload-Q2Q30fc(Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lkotlinx/coroutines/Deferred;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/time/Duration;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.AnonymousClass1 (io.bidmachine.util.download.DownloadManagerImpl$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/content/Context;",
        "Ljava/io/File;",
        "Lio/bidmachine/util/log/LoggerInstance;",
        "Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$1;

    invoke-direct {v0}, Lio/bidmachine/util/download/DownloadManagerImpl$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/download/DownloadManagerImpl$1;->INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;Ljava/io/File;Lio/bidmachine/util/log/LoggerInstance;)Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempDownloadDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;-><init>(Landroid/content/Context;Ljava/io/File;Lio/bidmachine/util/log/LoggerInstance;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 34
    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/io/File;

    check-cast p3, Lio/bidmachine/util/log/LoggerInstance;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/download/DownloadManagerImpl$1;->invoke(Landroid/content/Context;Ljava/io/File;Lio/bidmachine/util/log/LoggerInstance;)Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.Companion (io.bidmachine.util.download.DownloadManagerImpl$Companion)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$Companion;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.ContentFetcher (io.bidmachine.util.download.DownloadManagerImpl$ContentFetcher)
.class public interface abstract Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentFetcher"
.end annotation


# virtual methods
.method public abstract get-WS52aQU(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$CallData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.CoroutineNetworkRequestListener (io.bidmachine.util.download.DownloadManagerImpl$CoroutineNetworkRequestListener)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/network/NetworkRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoroutineNetworkRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/network/NetworkRequest$Listener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final errorBuilder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TT;>;",
            "Lio/bidmachine/util/network/NetworkError;",
            "TR;>;"
        }
    .end annotation
.end field

.field public request:Lio/bidmachine/util/network/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final successBuilder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TT;>;TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TT;>;-TT;+TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TT;>;-",
            "Lio/bidmachine/util/network/NetworkError;",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 223
    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->successBuilder:Lkotlin/jvm/functions/Function2;

    .line 224
    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->errorBuilder:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public onError(Lio/bidmachine/util/network/NetworkError;)V
    .registers 5

    const-string v0, "networkError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 240
    :cond_e
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->errorBuilder:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->request:Lio/bidmachine/util/network/NetworkRequest;

    invoke-interface {v1, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 233
    :cond_9
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->successBuilder:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->request:Lio/bidmachine/util/network/NetworkRequest;

    invoke-interface {v1, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final setRequest(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TT;>;)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->request:Lio/bidmachine/util/network/NetworkRequest;

    return-void
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.DownloadKey (io.bidmachine.util.download.DownloadManagerImpl$DownloadKey)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadKey"
.end annotation


# instance fields
.field public final outputFilePath:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->url:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->outputFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->outputFilePath:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->outputFilePath:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->outputFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadKey(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;->outputFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.NetworkContentFetcher (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkContentFetcher"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManagerImpl.kt\nio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,257:1\n314#2,11:258\n314#2,11:269\n*S KotlinDebug\n*F\n+ 1 DownloadManagerImpl.kt\nio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher\n*L\n158#1:258,11\n194#1:269,11\n*E\n"
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final logger:Lio/bidmachine/util/log/LoggerInstance;

.field public final tempDownloadDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lio/bidmachine/util/log/LoggerInstance;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempDownloadDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->tempDownloadDir:Ljava/io/File;

    .line 149
    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->logger:Lio/bidmachine/util/log/LoggerInstance;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Landroid/content/Context;
    .registers 1

    .line 146
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Lio/bidmachine/util/log/LoggerInstance;
    .registers 1

    .line 146
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->logger:Lio/bidmachine/util/log/LoggerInstance;

    return-object p0
.end method

.method public static final synthetic access$getTempDownloadDir$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Ljava/io/File;
    .registers 1

    .line 146
    iget-object p0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->tempDownloadDir:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public get-WS52aQU(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;

    iget v1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;

    invoke-direct {v0, p0, p4}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 154
    iget v2, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    if-ne v2, v3, :cond_3a

    iget-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/time/Duration;

    iget-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c3

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 314
    iput-object p0, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$1;->label:I

    .line 315
    new-instance p4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p4, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 265
    invoke-virtual {p4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 159
    new-instance v2, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;

    new-instance v4, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;

    invoke-direct {v4, p0, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Ljava/lang/String;)V

    new-instance v5, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;

    invoke-direct {v5, p0, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Ljava/lang/String;)V

    invoke-direct {v2, p4, v4, v5}, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 176
    new-instance v4, Lio/bidmachine/util/network/FileResponseProcessor;

    .line 177
    invoke-static {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->access$getApplicationContext$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Landroid/content/Context;

    move-result-object v5

    .line 179
    invoke-static {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->access$getTempDownloadDir$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Ljava/io/File;

    move-result-object v6

    .line 176
    invoke-direct {v4, v5, p2, v6}, Lio/bidmachine/util/network/FileResponseProcessor;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    .line 181
    new-instance p2, Lio/bidmachine/util/network/NetworkRequest$Builder;

    sget-object v5, Lio/bidmachine/util/network/Method;->Get:Lio/bidmachine/util/network/Method;

    invoke-direct {p2, p1, v5}, Lio/bidmachine/util/network/NetworkRequest$Builder;-><init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;)V

    .line 182
    invoke-virtual {p2, v4}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setResponseProcessor(Lio/bidmachine/util/network/ResponseProcessor;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p2

    .line 183
    invoke-virtual {p2, v2}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setListener(Lio/bidmachine/util/network/NetworkRequest$Listener;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p2

    const/4 v4, 0x0

    if-eqz p3, :cond_96

    .line 184
    invoke-virtual {p3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_97

    :cond_96
    move-object p3, v4

    :goto_97
    invoke-virtual {p2, p3}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setTimeoutMs(Ljava/lang/Long;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p2

    .line 185
    invoke-virtual {p2}, Lio/bidmachine/util/network/NetworkRequest$Builder;->build()Lio/bidmachine/util/network/NetworkRequest;

    move-result-object p2

    .line 186
    invoke-virtual {v2, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->setRequest(Lio/bidmachine/util/network/NetworkRequest;)V

    .line 187
    invoke-static {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object p3

    new-instance v2, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$1;

    invoke-direct {v2, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$1;-><init>(Ljava/lang/String;)V

    const-string p1, "DownloadManager"

    invoke-interface {p3, p1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 188
    invoke-static {p2, v4, v3, v4}, Lio/bidmachine/util/network/NetworkRequest;->send$default(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/taskmanager/TaskManager;ILjava/lang/Object;)V

    .line 267
    invoke-virtual {p4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p4

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_c0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_c0
    if-ne p4, v1, :cond_c3

    return-object v1

    .line 268
    :cond_c3
    :goto_c3
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$CallData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;

    iget v1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 191
    iget v2, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/time/Duration;

    iget-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9a

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 314
    iput-object p1, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$1;->label:I

    .line 315
    new-instance p3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p3, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 276
    invoke-virtual {p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 195
    new-instance v2, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;

    sget-object v4, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;->INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;

    sget-object v5, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;->INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;

    invoke-direct {v2, p3, v4, v5}, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 210
    new-instance v4, Lio/bidmachine/util/network/NetworkRequest$Builder;

    sget-object v5, Lio/bidmachine/util/network/Method;->Head:Lio/bidmachine/util/network/Method;

    invoke-direct {v4, p1, v5}, Lio/bidmachine/util/network/NetworkRequest$Builder;-><init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;)V

    .line 211
    new-instance p1, Lio/bidmachine/util/network/HeadersResponseProcessor;

    invoke-direct {p1}, Lio/bidmachine/util/network/HeadersResponseProcessor;-><init>()V

    invoke-virtual {v4, p1}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setResponseProcessor(Lio/bidmachine/util/network/ResponseProcessor;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v2}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setListener(Lio/bidmachine/util/network/NetworkRequest$Listener;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p2, :cond_7b

    .line 213
    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_7c

    :cond_7b
    move-object p2, v4

    :goto_7c
    invoke-virtual {p1, p2}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setTimeoutMs(Ljava/lang/Long;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lio/bidmachine/util/network/NetworkRequest$Builder;->build()Lio/bidmachine/util/network/NetworkRequest;

    move-result-object p1

    .line 215
    invoke-virtual {v2, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$CoroutineNetworkRequestListener;->setRequest(Lio/bidmachine/util/network/NetworkRequest;)V

    .line 216
    invoke-static {p1, v4, v3, v4}, Lio/bidmachine/util/network/NetworkRequest;->send$default(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/taskmanager/TaskManager;ILjava/lang/Object;)V

    .line 278
    invoke-virtual {p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p3

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_97

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_97
    if-ne p3, v1, :cond_9a

    return-object v1

    .line 279
    :cond_9a
    :goto_9a
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$1 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->get-WS52aQU(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field public final synthetic $url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$1;->$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->get-WS52aQU(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/bidmachine/util/network/NetworkRequest<",
        "Ljava/io/File;",
        ">;",
        "Ljava/io/File;",
        "Lkotlin/Result<",
        "+",
        "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $url:Ljava/lang/String;

.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Ljava/lang/String;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;->$url:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 159
    check-cast p1, Lio/bidmachine/util/network/NetworkRequest;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;->invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Ljava/io/File;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    invoke-static {v0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1;

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;->$url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1;-><init>(Ljava/lang/String;)V

    const-string v2, "DownloadManager"

    invoke-interface {v0, v2, v1}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 163
    invoke-virtual {p1}, Lio/bidmachine/util/network/NetworkRequest;->getExecutionTime-FghU774()Lkotlin/time/Duration;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    move-object p1, v0

    :goto_1b
    if-eqz p2, :cond_2f

    if-eqz p1, :cond_2f

    .line 165
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p2, v0}, Lio/bidmachine/util/download/DownloadManager$DownloadData;-><init>(JLjava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 167
    :cond_2f
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1.AnonymousClass1 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1;->invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Ljava/io/File;)Ljava/lang/Object;
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
.field public final synthetic $url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1;->$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 162
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$1$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->get-WS52aQU(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/bidmachine/util/network/NetworkRequest<",
        "Ljava/io/File;",
        ">;",
        "Lio/bidmachine/util/network/NetworkError;",
        "Lkotlin/Result<",
        "+",
        "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $url:Ljava/lang/String;

.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;Ljava/lang/String;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;->$url:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 159
    check-cast p1, Lio/bidmachine/util/network/NetworkRequest;

    check-cast p2, Lio/bidmachine/util/network/NetworkError;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;->invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/network/NetworkError;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/network/NetworkError;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "Ljava/io/File;",
            ">;",
            "Lio/bidmachine/util/network/NetworkError;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p1, "networkError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;

    invoke-static {p1}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object p1

    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;->$url:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;-><init>(Lio/bidmachine/util/network/NetworkError;Ljava/lang/String;)V

    const-string v1, "DownloadManager"

    invoke-interface {p1, v1, v0}, Lio/bidmachine/util/log/LoggerInstance;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 172
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/network/NetworkError;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2.AnonymousClass1 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2;->invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/network/NetworkError;)Ljava/lang/Object;
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
.field public final synthetic $networkError:Lio/bidmachine/util/network/NetworkError;

.field public final synthetic $url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/network/NetworkError;Ljava/lang/String;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;->$networkError:Lio/bidmachine/util/network/NetworkError;

    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;->$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;->$networkError:Lio/bidmachine/util/network/NetworkError;

    invoke-virtual {v1}, Lio/bidmachine/util/network/NetworkError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$get$2$listener$2$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/bidmachine/util/network/NetworkRequest<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lkotlin/Result<",
        "+",
        "Lio/bidmachine/util/download/DownloadManager$CallData;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;

    invoke-direct {v0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;->INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 195
    check-cast p1, Lio/bidmachine/util/network/NetworkRequest;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$1;->invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Ljava/util/Map;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 198
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 199
    new-instance v0, Lio/bidmachine/util/download/DownloadManager$CallData;

    if-eqz p1, :cond_11

    .line 200
    invoke-virtual {p1}, Lio/bidmachine/util/network/NetworkRequest;->getExecutionTime-FghU774()Lkotlin/time/Duration;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v1

    goto :goto_1a

    :cond_11
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 p1, 0x0

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    :goto_1a
    if-nez p2, :cond_20

    .line 201
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_20
    const/4 p1, 0x0

    .line 199
    invoke-direct {v0, v1, v2, p2, p1}, Lio/bidmachine/util/download/DownloadManager$CallData;-><init>(JLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2 (io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher;->head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/bidmachine/util/network/NetworkRequest<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;",
        "Lio/bidmachine/util/network/NetworkError;",
        "Lkotlin/Result<",
        "+",
        "Lio/bidmachine/util/download/DownloadManager$CallData;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;

    invoke-direct {v0}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;-><init>()V

    sput-object v0, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;->INSTANCE:Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 195
    check-cast p1, Lio/bidmachine/util/network/NetworkRequest;

    check-cast p2, Lio/bidmachine/util/network/NetworkError;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$NetworkContentFetcher$head$2$listener$2;->invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/network/NetworkError;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-gIAlu-s(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/network/NetworkError;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Lio/bidmachine/util/network/NetworkError;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p1, "networkError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p2}, Lio/bidmachine/util/network/NetworkError;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.C42701 (io.bidmachine.util.download.DownloadManagerImpl$cleanupNotCompletedDownloads$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;->cleanupNotCompletedDownloads()Lkotlinx/coroutines/Deferred;
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
    c = "io.bidmachine.util.download.DownloadManagerImpl$cleanupNotCompletedDownloads$1"
    f = "DownloadManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManagerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

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
    new-instance p1, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;

    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 56
    iget v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->label:I

    if-nez v0, :cond_30

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 58
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v0}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getTempDir$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$1;

    invoke-direct {v1, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-static {v0, v1}, Lio/bidmachine/util/file/FileUtilsKt;->deleteChildFiles(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 65
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v0}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v0

    new-instance v1, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$2;

    invoke-direct {v1, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    const-string p1, "DownloadManager"

    invoke-interface {v0, p1, v1}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 56
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.C42701.C12121 (io.bidmachine.util.download.DownloadManagerImpl$cleanupNotCompletedDownloads$1$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/File;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/io/File;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 61
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 63
    :cond_13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 58
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$1;->invoke(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl.C42701.AnonymousClass2 (io.bidmachine.util.download.DownloadManagerImpl$cleanupNotCompletedDownloads$1$2)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup unused files completed, removed count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$cleanupNotCompletedDownloads$1$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$contentFetcher$2 (io.bidmachine.util.download.DownloadManagerImpl$contentFetcher$2)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;
    .registers 5

    .line 48
    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v0}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getContentFetcherBuilder$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v1}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getApplicationContext$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v2}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getTempDir$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v3}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getLogger$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$contentFetcher$2;->invoke()Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$download$1$1 (io.bidmachine.util.download.DownloadManagerImpl$download$1$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$download$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;->download-moChb0s(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lio/bidmachine/util/download/DownloadManager$DownloadTask;
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
.field public final synthetic $url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$download$1$1;->$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$download$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active download detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$download$1$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.download.DownloadManagerImpl$scope$2 (io.bidmachine.util.download.DownloadManagerImpl$scope$2)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$scope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function3;Lio/bidmachine/util/SdkDispatchers;Lio/bidmachine/util/log/LoggerInstance;)V
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
.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$scope$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lio/bidmachine/util/download/DownloadManagerImpl$scope$2;->invoke()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$scope$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v1}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getDispatchers$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
