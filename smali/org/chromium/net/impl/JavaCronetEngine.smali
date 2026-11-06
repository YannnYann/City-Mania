###### Class org.chromium.net.impl.JavaCronetEngine (org.chromium.net.impl.JavaCronetEngine)
.class public final Lorg/chromium/net/impl/JavaCronetEngine;
.super Lorg/chromium/net/impl/CronetEngineBase;
.source "JavaCronetEngine.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JavaCronetEngine"


# instance fields
.field public final mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mContext:Landroid/content/Context;

.field public final mCronetEngineId:I

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mLogger:Lorg/chromium/net/impl/CronetLogger;

.field public mNetworkHandle:J

.field public final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/CronetEngineBuilderImpl;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetEngineBase;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mNetworkHandle:J

    .line 64
    const-string v0, "JavaCronetEngine#JavaCronetEngine"

    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 65
    :try_start_14
    invoke-virtual {p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mCronetEngineId:I

    .line 67
    invoke-virtual {p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mUserAgent:Ljava/lang/String;

    .line 70
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lorg/chromium/net/impl/JavaCronetEngine$1;

    invoke-direct {v11, p0}, Lorg/chromium/net/impl/JavaCronetEngine$1;-><init>(Lorg/chromium/net/impl/JavaCronetEngine;)V

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-wide/16 v7, 0x32

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 95
    sget-object v10, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 96
    invoke-static {v0, v10}, Lorg/chromium/net/impl/CronetLoggerFactory;->createLogger(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Lorg/chromium/net/impl/CronetLogger;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mLogger:Lorg/chromium/net/impl/CronetLogger;
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_54

    int-to-long v6, v2

    .line 100
    :try_start_48
    invoke-virtual {p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->toLoggerInfo()Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;

    move-result-object v8

    .line 101
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaCronetEngine;->buildCronetVersion()Lorg/chromium/net/impl/CronetLogger$CronetVersion;

    move-result-object v9

    .line 98
    invoke-virtual/range {v5 .. v10}, Lorg/chromium/net/impl/CronetLogger;->logCronetEngineCreation(JLorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Lorg/chromium/net/impl/CronetLogger$CronetVersion;Lorg/chromium/net/impl/CronetLogger$CronetSource;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_53} :catch_57
    .catchall {:try_start_48 .. :try_end_53} :catchall_54

    goto :goto_60

    :catchall_54
    move-exception v0

    move-object p1, v0

    goto :goto_6d

    :catch_57
    move-exception v0

    move-object p1, v0

    .line 105
    :try_start_59
    sget-object v0, Lorg/chromium/net/impl/JavaCronetEngine;->TAG:Ljava/lang/String;

    const-string v2, "Error while trying to log JavaCronetEngine creation: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :goto_60
    sget-object p1, Lorg/chromium/net/impl/JavaCronetEngine;->TAG:Ljava/lang/String;

    const-string v0, "using the fallback Cronet Engine implementation. Performance will suffer and many HTTP client features, including caching, will not work."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_54

    if-eqz v1, :cond_6c

    .line 111
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_6c
    return-void

    :goto_6d
    if-eqz v1, :cond_77

    .line 64
    :try_start_6f
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw p1
.end method


# virtual methods
.method public addRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public addRttListener(Lorg/chromium/net/NetworkQualityRttListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public addThroughputListener(Lorg/chromium/net/NetworkQualityThroughputListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public bindToNetwork(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkHandle"
        }
    .end annotation

    .line 269
    iput-wide p1, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mNetworkHandle:J

    return-void
.end method

.method public final buildCronetVersion()Lorg/chromium/net/impl/CronetLogger$CronetVersion;
    .registers 3

    .line 215
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaCronetEngine;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 219
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 220
    new-instance v1, Lorg/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-direct {v1, v0}, Lorg/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public configureNetworkQualityEstimatorForTesting(ZZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "useLocalHostRequests",
            "useSmallerResponses",
            "disableOfflineCheck"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public createBidirectionalStream(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZIJ)Lorg/chromium/net/ExperimentalBidirectionalStream;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "callback",
            "executor",
            "httpMethod",
            "requestHeaders",
            "priority",
            "delayRequestHeadersUntilFirstFlush",
            "connectionAnnotations",
            "trafficStatsTagSet",
            "trafficStatsTag",
            "trafficStatsUidSet",
            "trafficStatsUid",
            "networkHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/BidirectionalStream$Callback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZIJ)",
            "Lorg/chromium/net/ExperimentalBidirectionalStream;"
        }
    .end annotation

    .line 197
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can\'t create a bidi stream - httpurlconnection doesn\'t have those APIs"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRequest(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest;
    .registers 42
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "callback",
            "executor",
            "priority",
            "connectionAnnotations",
            "disableCache",
            "disableConnectionMigration",
            "allowDirectExecutor",
            "trafficStatsTagSet",
            "trafficStatsTag",
            "trafficStatsUidSet",
            "trafficStatsUid",
            "requestFinishedListener",
            "idempotency",
            "networkHandle",
            "method",
            "requestHeaders",
            "uploadDataProvider",
            "uploadDataProviderExecutor",
            "sharedDictionaryHash",
            "sharedDictionary",
            "sharedDictionaryId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/UrlRequest$Callback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/RequestFinishedInfo$Listener;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/chromium/net/UploadDataProvider;",
            "Ljava/util/concurrent/Executor;",
            "[B",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ")",
            "Lorg/chromium/net/ExperimentalUrlRequest;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p15

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 161
    iput-wide v2, v1, Lorg/chromium/net/impl/JavaCronetEngine;->mNetworkHandle:J

    .line 163
    :cond_c
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v3, v1, Lorg/chromium/net/impl/JavaCronetEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v6, v1, Lorg/chromium/net/impl/JavaCronetEngine;->mUserAgent:Ljava/lang/String;

    iget-wide v12, v1, Lorg/chromium/net/impl/JavaCronetEngine;->mNetworkHandle:J

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v16, p19

    move-object/from16 v17, p20

    invoke-direct/range {v0 .. v17}, Lorg/chromium/net/impl/JavaUrlRequest;-><init>(Lorg/chromium/net/impl/JavaCronetEngine;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;ZZIZIJLjava/lang/String;Ljava/util/ArrayList;Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
    .registers 2

    .line 310
    new-instance v0, Lorg/chromium/net/impl/JavaCronetEngine$2;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaCronetEngine$2;-><init>(Lorg/chromium/net/impl/JavaCronetEngine;)V

    return-object v0
.end method

.method public decrementActiveRequestCount()V
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public getActiveRequestCount()I
    .registers 2

    .line 264
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCronetEngineId()I
    .registers 2

    .line 125
    iget v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mCronetEngineId:I

    return v0
.end method

.method public getCronetLogger()Lorg/chromium/net/impl/CronetLogger;
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mLogger:Lorg/chromium/net/impl/CronetLogger;

    return-object v0
.end method

.method public getDownstreamThroughputKbps()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getEffectiveConnectionType()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getGlobalMetricsDeltas()[B
    .registers 2

    const/4 v0, 0x0

    .line 239
    new-array v0, v0, [B

    return-object v0
.end method

.method public getHttpRttMs()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getTransportRttMs()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 4

    .line 211
    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersionWithLastChange()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CronetHttpURLConnection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementActiveRequestCount()V
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public bridge synthetic newBidirectionalStreamBuilder(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/BidirectionalStream$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "url",
            "callback",
            "executor"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/JavaCronetEngine;->newBidirectionalStreamBuilder(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBidirectionalStreamBuilder(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "callback",
            "executor"
        }
    .end annotation

    .line 204
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The bidirectional stream API is not supported by the Java implementation of Cronet Engine"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "url",
            "callback",
            "executor"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/net/impl/CronetEngineBase;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "proxy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public removeRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public removeRttListener(Lorg/chromium/net/NetworkQualityRttListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public removeThroughputListener(Lorg/chromium/net/NetworkQualityThroughputListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 225
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public startNetLogToDisk(Ljava/lang/String;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dirPath",
            "logAll",
            "maxSize"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public startNetLogToFile(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "logAll"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public stopNetLog()V
    .registers 1

    .line 0
    return-void
.end method

###### Class org.chromium.net.impl.JavaCronetEngine.AnonymousClass1 (org.chromium.net.impl.JavaCronetEngine$1)
.class public Lorg/chromium/net/impl/JavaCronetEngine$1;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaCronetEngine;-><init>(Lorg/chromium/net/impl/CronetEngineBuilderImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/chromium/net/impl/JavaCronetEngine;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/JavaCronetEngine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/chromium/net/impl/JavaCronetEngine$1;->this$0:Lorg/chromium/net/impl/JavaCronetEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "r"
        }
    .end annotation

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/impl/JavaCronetEngine$1$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/net/impl/JavaCronetEngine$1$1;-><init>(Lorg/chromium/net/impl/JavaCronetEngine$1;Ljava/lang/Runnable;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

###### Class org.chromium.net.impl.JavaCronetEngine.AnonymousClass1.RunnableC12171 (org.chromium.net.impl.JavaCronetEngine$1$1)
.class public Lorg/chromium/net/impl/JavaCronetEngine$1$1;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaCronetEngine$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/chromium/net/impl/JavaCronetEngine$1;

.field public final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/JavaCronetEngine$1;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p2, p0, Lorg/chromium/net/impl/JavaCronetEngine$1$1;->val$r:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/chromium/net/impl/JavaCronetEngine$1$1;->this$1:Lorg/chromium/net/impl/JavaCronetEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "JavaCronetEngine"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetEngine$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class org.chromium.net.impl.JavaCronetEngine.AnonymousClass2 (org.chromium.net.impl.JavaCronetEngine$2)
.class public Lorg/chromium/net/impl/JavaCronetEngine$2;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaCronetEngine;->createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/chromium/net/impl/JavaCronetEngine;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/JavaCronetEngine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lorg/chromium/net/impl/JavaCronetEngine$2;->this$0:Lorg/chromium/net/impl/JavaCronetEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protocol"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method
