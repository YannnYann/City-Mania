###### Class org.chromium.net.impl.AndroidHttpEngineWrapper (org.chromium.net.impl.AndroidHttpEngineWrapper)
.class public Lorg/chromium/net/impl/AndroidHttpEngineWrapper;
.super Lorg/chromium/net/impl/CronetEngineBase;
.source "AndroidHttpEngineWrapper.java"


# static fields
.field public static sGlobalMetricsUnsupportedLogged:Z

.field public static sNetlogUnsupportedLogged:Z


# instance fields
.field public final mBackend:Landroid/net/http/HttpEngine;

.field public final mFinishedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/net/RequestFinishedInfo$Listener;",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TupJpCHcfem7kwicnhvsBzU93as(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->lambda$openConnection$0(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hyJ0rO7V-u1T5-Vvo3JjtbhYpM4(Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V
    .registers 3

    .line 157
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 159
    const-string p1, "HttpEngineWrapper"

    const-string v0, "Exception thrown from observation task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Landroid/net/http/HttpEngine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetEngineBase;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mFinishedListenerMap:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    return-void
.end method


# virtual methods
.method public addRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mFinishedListenerMap:Ljava/util/Map;

    new-instance v1, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    invoke-direct {v1, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;-><init>(Lorg/chromium/net/RequestFinishedInfo$Listener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bindToNetwork(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkHandle"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->getNetwork(J)Landroid/net/Network;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline19;->m(Landroid/net/http/HttpEngine;Landroid/net/Network;)V

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
            "requestAnnotations",
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

    .line 183
    new-instance p13, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;

    invoke-direct {p13, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;-><init>(Lorg/chromium/net/BidirectionalStream$Callback;)V

    .line 186
    iget-object p2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    .line 187
    invoke-static {p2, p1, p3, p13}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/HttpEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/BidirectionalStream$Callback;)Landroid/net/http/BidirectionalStream$Builder;

    move-result-object p2

    .line 188
    invoke-static {p2, p4}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/BidirectionalStream$Builder;Ljava/lang/String;)Landroid/net/http/BidirectionalStream$Builder;

    .line 189
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p2, p5, p4}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/BidirectionalStream$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/BidirectionalStream$Builder;

    goto :goto_12

    .line 192
    :cond_2e
    invoke-static {p2, p6}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/http/BidirectionalStream$Builder;I)Landroid/net/http/BidirectionalStream$Builder;

    .line 193
    invoke-static {p2, p7}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/http/BidirectionalStream$Builder;Z)Landroid/net/http/BidirectionalStream$Builder;

    if-eqz p9, :cond_39

    .line 196
    invoke-static {p2, p10}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/http/BidirectionalStream$Builder;I)Landroid/net/http/BidirectionalStream$Builder;

    :cond_39
    if-eqz p11, :cond_3e

    .line 199
    invoke-static {p2, p12}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline6;->m(Landroid/net/http/BidirectionalStream$Builder;I)Landroid/net/http/BidirectionalStream$Builder;

    .line 203
    :cond_3e
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline7;->m(Landroid/net/http/BidirectionalStream$Builder;)Landroid/net/http/BidirectionalStream;

    move-result-object p2

    .line 202
    invoke-static {p2, p13, p0, p1, p8}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->createAndAddToCallback(Landroid/net/http/BidirectionalStream;Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;)Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    move-result-object p1

    return-object p1
.end method

.method public createRequest(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest;
    .registers 25
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
            "requestAnnotations",
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
            "dictionarySha256Hash",
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

    move-object/from16 p7, p19

    .line 230
    new-instance v0, Lorg/chromium/net/impl/AndroidUrlRequestCallbackWrapper;

    invoke-direct {v0, p2}, Lorg/chromium/net/impl/AndroidUrlRequestCallbackWrapper;-><init>(Lorg/chromium/net/UrlRequest$Callback;)V

    .line 232
    iget-object p2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    .line 233
    invoke-static {p2, p1, p3, v0}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline8;->m(Landroid/net/http/HttpEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)Landroid/net/http/UrlRequest$Builder;

    move-result-object p2

    .line 235
    invoke-static {p2, p4}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline10;->m(Landroid/net/http/UrlRequest$Builder;I)Landroid/net/http/UrlRequest$Builder;

    if-eqz p6, :cond_15

    .line 240
    invoke-static {p2, p6}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline11;->m(Landroid/net/http/UrlRequest$Builder;Z)Landroid/net/http/UrlRequest$Builder;

    :cond_15
    if-eqz p8, :cond_1a

    .line 246
    invoke-static {p2, p8}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline12;->m(Landroid/net/http/UrlRequest$Builder;Z)Landroid/net/http/UrlRequest$Builder;

    :cond_1a
    if-eqz p9, :cond_1f

    .line 249
    invoke-static {p2, p10}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline13;->m(Landroid/net/http/UrlRequest$Builder;I)Landroid/net/http/UrlRequest$Builder;

    :cond_1f
    if-eqz p11, :cond_24

    .line 252
    invoke-static {p2, p12}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline13;->m(Landroid/net/http/UrlRequest$Builder;I)Landroid/net/http/UrlRequest$Builder;

    :cond_24
    move-wide/from16 p3, p15

    .line 254
    invoke-virtual {p0, p3, p4}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->getNetwork(J)Landroid/net/Network;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline14;->m(Landroid/net/http/UrlRequest$Builder;Landroid/net/Network;)Landroid/net/http/UrlRequest$Builder;

    move-object/from16 p3, p17

    .line 255
    invoke-static {p2, p3}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline15;->m(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;

    .line 256
    invoke-virtual/range {p18 .. p18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_36
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p2, p6, p4}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline16;->m(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;

    goto :goto_36

    :cond_52
    if-eqz p7, :cond_5e

    .line 260
    new-instance p3, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;

    invoke-direct {p3, p7}, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;-><init>(Lorg/chromium/net/UploadDataProvider;)V

    move-object/from16 p4, p20

    invoke-static {p2, p3, p4}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline17;->m(Landroid/net/http/UrlRequest$Builder;Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/http/UrlRequest$Builder;

    .line 266
    :cond_5e
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline9;->m(Landroid/net/http/UrlRequest$Builder;)Landroid/net/http/UrlRequest;

    move-result-object p6

    move-object p8, p0

    move-object p9, p1

    move-object p10, p5

    move-object p11, p13

    move-object p7, v0

    .line 265
    invoke-static/range {p6 .. p11}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->createAndAddToCallback(Landroid/net/http/UrlRequest;Lorg/chromium/net/impl/AndroidUrlRequestCallbackWrapper;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Listener;)Lorg/chromium/net/impl/AndroidUrlRequestWrapper;

    move-result-object p1

    return-object p1
.end method

.method public createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline18;->m(Landroid/net/http/HttpEngine;)Ljava/net/URLStreamHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalMetricsDeltas()[B
    .registers 3

    .line 83
    sget-boolean v0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->sGlobalMetricsUnsupportedLogged:Z

    if-nez v0, :cond_e

    .line 84
    const-string v0, "HttpEngineWrapper"

    const-string v1, "GlobalMetricsDelta is unsupported when HttpEngineNativeProvider is used. An empty protobuf is returned."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 88
    sput-boolean v0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->sGlobalMetricsUnsupportedLogged:Z

    :cond_e
    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [B

    return-object v0
.end method

.method public final getNetwork(J)Landroid/net/Network;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkHandle"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 280
    :cond_8
    invoke-static {p1, p2}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline22;->m(J)Landroid/net/Network;

    move-result-object p1

    return-object p1
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 2

    .line 58
    invoke-static {}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline21;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lambda$openConnection$0(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline23;->m(Landroid/net/http/HttpEngine;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
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

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->newBidirectionalStreamBuilder(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBidirectionalStreamBuilder(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 5
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

    .line 126
    new-instance v0, Lorg/chromium/net/impl/BidirectionalStreamBuilderImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/chromium/net/impl/BidirectionalStreamBuilderImpl;-><init>(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/CronetEngineBase;)V

    return-object v0
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

    .line 40
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/net/impl/CronetEngineBase;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
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

    .line 100
    new-instance v0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;-><init>(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/net/URL;)V

    const-class p1, Ljava/io/IOException;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->executeTranslatingCronetExceptions(Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
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

    .line 108
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_39

    .line 111
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 112
    const-string v0, "http"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "https"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_34

    .line 115
    :cond_1d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_34
    :goto_34
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    .line 109
    :cond_39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mFinishedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportRequestFinished(Lorg/chromium/net/RequestFinishedInfo;Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestInfo",
            "extraRequestListener"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mFinishedListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 146
    :try_start_8
    iget-object v2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mFinishedListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_3e

    if-eqz p2, :cond_17

    .line 149
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    .line 153
    :try_start_27
    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;

    invoke-direct {v2, v0, p1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;-><init>(Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V

    .line 154
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_33
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_1b

    :catch_34
    move-exception v0

    .line 163
    const-string v1, "HttpEngineWrapper"

    const-string v2, "Exception posting task to executor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :cond_3d
    return-void

    :catchall_3e
    move-exception p1

    .line 147
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public shutdown()V
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->mBackend:Landroid/net/http/HttpEngine;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline20;->m(Landroid/net/http/HttpEngine;)V

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

    .line 69
    sget-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->sNetlogUnsupportedLogged:Z

    if-nez p1, :cond_e

    .line 70
    const-string p1, "HttpEngineWrapper"

    const-string p2, "Netlog is unsupported when HttpEngineNativeProvider is used."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 71
    sput-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->sNetlogUnsupportedLogged:Z

    :cond_e
    return-void
.end method

.method public stopNetLog()V
    .registers 1

    .line 0
    return-void
.end method

###### Class org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda24 (org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda24)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

.field public final synthetic f$1:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/net/URL;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;->f$0:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iput-object p2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;->f$1:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;->f$0:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda24;->f$1:Ljava/net/URL;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->$r8$lambda$TupJpCHcfem7kwicnhvsBzU93as(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

###### Class org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda25 (org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda25)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

.field public final synthetic f$1:Lorg/chromium/net/RequestFinishedInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iput-object p2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;->f$1:Lorg/chromium/net/RequestFinishedInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda25;->f$1:Lorg/chromium/net/RequestFinishedInfo;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->$r8$lambda$hyJ0rO7V-u1T5-Vvo3JjtbhYpM4(Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method
