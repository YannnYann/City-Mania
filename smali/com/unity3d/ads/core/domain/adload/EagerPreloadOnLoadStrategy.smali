###### Class com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy)
.class public final Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;
.super Ljava/lang/Object;
.source "EagerPreloadOnLoadStrategy.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEagerPreloadOnLoadStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EagerPreloadOnLoadStrategy.kt\ncom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation


# instance fields
.field private final deferreds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V
    .registers 5

    const-string v0, "getWebViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    .line 35
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 36
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 20

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 137
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eager WebView preload failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-interface {v2, v3, v4}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 140
    invoke-static/range {p2 .. p2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 141
    const-string v2, "reason"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v2, "reason_debug"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    const/16 v12, 0x68

    const/4 v13, 0x0

    .line 138
    const-string v5, "native_eager_preshow_preload_failure_time"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p1

    invoke-static/range {v4 .. v13}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic reportPreloadFailure$default(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;-><init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4f

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9f

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    :try_start_45
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_86

    :catchall_49
    move-exception p2

    goto :goto_a9

    :cond_4b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_4f
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/CompletableDeferred;

    if-nez p3, :cond_73

    .line 107
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput v5, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6b

    goto :goto_9e

    :cond_6b
    :goto_6b
    check-cast p3, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    new-instance p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    invoke-direct {p1, p3}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object p1

    .line 109
    :cond_73
    :try_start_73
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_a7

    if-ne v2, v1, :cond_82

    goto :goto_9e

    :cond_82
    move-object v7, v2

    move-object v2, p1

    move-object p1, p3

    move-object p3, v7

    .line 105
    :goto_86
    :try_start_86
    check-cast p3, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_49

    .line 112
    invoke-interface {p1, v6}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    if-eqz p3, :cond_8e

    return-object p3

    .line 117
    :cond_8e
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-virtual {p1, v2, p2, v0}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9f

    :goto_9e
    return-object v1

    :cond_9f
    :goto_9f
    check-cast p3, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    new-instance p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    invoke-direct {p1, p3}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object p1

    :catchall_a7
    move-exception p2

    move-object p1, p3

    .line 112
    :goto_a9
    invoke-interface {p1, v6}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    throw p2
.end method

.method public onAdExpired(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    return-object p1

    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/unity3d/ads/adplayer/WebViewContainer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    instance-of v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;

    if-eqz v3, :cond_19

    move-object v3, v0

    check-cast v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;

    iget v4, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;

    invoke-direct {v3, v1, v0}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;-><init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v0, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 44
    iget v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_7f

    if-eq v5, v9, :cond_67

    if-eq v5, v8, :cond_51

    if-eq v5, v7, :cond_42

    if-ne v5, v6, :cond_3a

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1b7

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-wide v4, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iget-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15d

    :cond_51
    iget-wide v8, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iget-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/unity3d/ads/core/data/model/AdObject;

    :try_start_5f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_64

    goto/16 :goto_122

    :catchall_64
    move-exception v0

    goto/16 :goto_12f

    :cond_67
    iget-wide v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iget-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v9, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/data/model/AdObject;

    :try_start_75
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7a

    move-object v13, v5

    goto :goto_b1

    :catchall_7a
    move-exception v0

    move-object v13, v5

    :goto_7c
    move-object v5, v2

    move-object v2, v9

    goto :goto_c0

    :cond_7f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    invoke-static {v10, v9, v10}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    .line 52
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v11

    .line 59
    :try_start_95
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_bd

    move-object/from16 v13, p5

    :try_start_9d
    iput-object v13, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput-wide v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iput v9, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    move-object/from16 v9, p4

    invoke-virtual {v0, v9, v2, v3}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_bb

    if-ne v0, v4, :cond_af

    goto/16 :goto_1b6

    :cond_af
    move-object v9, v2

    move-object v2, v5

    :goto_b1
    :try_start_b1
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_b9

    move-object v5, v2

    goto :goto_cb

    :catchall_b9
    move-exception v0

    goto :goto_7c

    :catchall_bb
    move-exception v0

    goto :goto_c0

    :catchall_bd
    move-exception v0

    move-object/from16 v13, p5

    :goto_c0
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v2

    .line 60
    :goto_cb
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_105

    .line 65
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {v5, v10}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 67
    instance-of v0, v2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_103

    .line 68
    invoke-static {v11, v12}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ef

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_ef
    const-string v4, "create_container"

    move-object/from16 p3, v0

    move-object/from16 p1, v1

    move-object/from16 p6, v2

    move-object/from16 p5, v3

    move-object/from16 p4, v4

    move-object/from16 p2, v9

    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_103
    move-object v0, v2

    .line 67
    throw v0

    .line 71
    :cond_105
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 73
    :try_start_10b
    iput-object v9, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput-wide v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iput v8, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-interface {v13, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_119
    .catchall {:try_start_10b .. :try_end_119} :catchall_129

    if-ne v0, v4, :cond_11d

    goto/16 :goto_1b6

    :cond_11d
    move-wide/from16 v21, v11

    move-object v11, v9

    move-wide/from16 v8, v21

    :goto_122
    :try_start_122
    check-cast v0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_128
    .catchall {:try_start_122 .. :try_end_128} :catchall_64

    goto :goto_139

    :catchall_129
    move-exception v0

    move-wide/from16 v21, v11

    move-object v11, v9

    move-wide/from16 v8, v21

    :goto_12f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_139
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_185

    .line 78
    invoke-interface {v5, v10}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v5, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$3$1;

    invoke-direct {v5, v2, v10}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$3$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    iput-object v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput-wide v8, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iput v7, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_15a

    goto :goto_1b6

    :cond_15a
    move-object v2, v1

    move-wide v4, v8

    move-object v3, v11

    .line 80
    :goto_15d
    instance-of v0, v2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_183

    .line 81
    invoke-static {v4, v5}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16f

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_16f
    const-string v4, "load_webview"

    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p2, v3

    move-object/from16 p4, v4

    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_183
    move-object v1, v2

    .line 80
    throw v1

    .line 86
    :cond_185
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->component1()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->component2()Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object v7

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->component3()Lcom/unity3d/ads/adplayer/model/LoadEvent;

    move-result-object v0

    .line 87
    new-instance v12, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-direct {v12, v2, v1, v7, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V

    invoke-interface {v5, v12}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ba

    .line 89
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;

    invoke-direct {v1, v2, v10}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_1b7

    :goto_1b6
    return-object v4

    .line 90
    :cond_1b7
    :goto_1b7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 96
    :cond_1ba
    instance-of v1, v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    if-eqz v1, :cond_1f2

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v8, v9}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v3

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v4, "load_event_error"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure$default(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_21b

    :cond_1f2
    move-object/from16 v1, p0

    move-object/from16 v16, v11

    .line 100
    sget-object v2, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;->INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 101
    iget-object v11, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v8, v9}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v13

    const/16 v19, 0x6c

    const/16 v20, 0x0

    const-string v12, "native_eager_preshow_preload_success_time"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v20}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 103
    :goto_21b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 95
    :cond_21e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;-><init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 120
    iget v2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    if-nez p1, :cond_4c

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4c
    const/4 p2, 0x0

    .line 123
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 124
    iput v4, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    goto :goto_6e

    :cond_5c
    :goto_5c
    check-cast p2, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    if-eqz p2, :cond_72

    invoke-virtual {p2}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_72

    iput v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->destroy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6f

    :goto_6e
    return-object v1

    .line 126
    :cond_6f
    :goto_6f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.AnonymousClass1 (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1)
.class final Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "EagerPreloadOnLoadStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy"
    f = "EagerPreloadOnLoadStrategy.kt"
    l = {
        0x6b,
        0x6d,
        0x75
    }
    m = "acquireForShow"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.C40371 (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$1)
.class final Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "EagerPreloadOnLoadStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy"
    f = "EagerPreloadOnLoadStrategy.kt"
    l = {
        0x3b,
        0x49,
        0x4f,
        0x59
    }
    m = "onLoadSuccess"
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.AnonymousClass4 (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$4)
.class final Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EagerPreloadOnLoadStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$4"
    f = "EagerPreloadOnLoadStrategy.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

.field label:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->$container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

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
    new-instance p1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->$container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->$container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iput v2, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;->label:I

    invoke-virtual {p1, p0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->destroy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.C40381 (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1)
.class final Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "EagerPreloadOnLoadStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy"
    f = "EagerPreloadOnLoadStrategy.kt"
    l = {
        0x7c,
        0x7c
    }
    m = "onShowComplete"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->this$0:Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
