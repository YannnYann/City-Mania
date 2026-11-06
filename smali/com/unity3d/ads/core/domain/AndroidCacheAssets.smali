###### Class com.unity3d.ads.core.domain.AndroidCacheAssets (com.unity3d.ads.core.domain.AndroidCacheAssets)
.class public final Lcom/unity3d/ads/core/domain/AndroidCacheAssets;
.super Ljava/lang/Object;
.source "AndroidCacheAssets.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/CacheAssets;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCacheAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheAssets.kt\ncom/unity3d/ads/core/domain/AndroidCacheAssets\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n375#2:74\n1869#3,2:75\n*S KotlinDebug\n*F\n+ 1 AndroidCacheAssets.kt\ncom/unity3d/ads/core/domain/AndroidCacheAssets\n*L\n30#1:74\n36#1:75,2\n*E\n"
.end annotation


# instance fields
.field private final cacheFile:Lcom/unity3d/ads/core/domain/CacheFile;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/domain/CacheFile;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .registers 5

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->cacheFile:Lcom/unity3d/ads/core/domain/CacheFile;

    .line 21
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-void
.end method

.method public static final synthetic access$getCacheFile$p(Lcom/unity3d/ads/core/domain/AndroidCacheAssets;)Lcom/unity3d/ads/core/domain/CacheFile;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->cacheFile:Lcom/unity3d/ads/core/domain/CacheFile;

    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/CacheAssetsEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidCacheAssets;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 24
    iget v4, v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->label:I

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_3e

    if-ne v4, v6, :cond_36

    :try_start_2b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2b .. :try_end_2e} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_30

    goto/16 :goto_a6

    :catch_30
    move-exception v0

    goto/16 :goto_a9

    :catch_33
    move-exception v0

    goto/16 :goto_c7

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 30
    new-instance v7, Lkotlinx/coroutines/CoroutineName;

    const-string v8, "AssetDownloading"

    invoke-direct {v7, v8}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 31
    iget-object v7, v1, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v7}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    sget-object v8, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v7, v8}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/Job;

    .line 30
    invoke-static {v7}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v7

    invoke-interface {v4, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 29
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 36
    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Iterable;

    .line 75
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 46
    new-instance v10, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$2$downloadJob$1;

    const/4 v8, 0x0

    move-object/from16 v14, p1

    invoke-direct {v10, v1, v13, v14, v8}, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$2$downloadJob$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidCacheAssets;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v8

    .line 52
    invoke-virtual {v13}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getRequired()Z

    move-result v9

    if-eqz v9, :cond_77

    .line 53
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 58
    :cond_9d
    :try_start_9d
    iput v6, v2, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->label:I

    invoke-static {v0, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a6

    return-object v3

    .line 59
    :cond_a6
    :goto_a6
    sget-object v0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;->INSTANCE:Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;
    :try_end_a8
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_9d .. :try_end_a8} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_a8} :catch_30

    return-object v0

    .line 68
    :goto_a9
    iget-object v6, v1, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    const/16 v14, 0x7e

    const/4 v15, 0x0

    const-string v7, "native_webview_less_asset_cache_fail"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v15}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 69
    new-instance v2, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c2

    goto :goto_c3

    :cond_c2
    move-object v5, v0

    :goto_c3
    invoke-direct {v2, v5}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;-><init>(Ljava/lang/String;)V

    goto :goto_e4

    .line 63
    :goto_c7
    iget-object v6, v1, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    const/16 v14, 0x7e

    const/4 v15, 0x0

    const-string v7, "native_webview_less_asset_cache_timeout"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v15}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 64
    new-instance v2, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e0

    goto :goto_e1

    :cond_e0
    move-object v5, v0

    :goto_e1
    invoke-direct {v2, v5}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;-><init>(Ljava/lang/String;)V

    :goto_e4
    return-object v2
.end method

###### Class com.unity3d.ads.core.domain.AndroidCacheAssets.AnonymousClass1 (com.unity3d.ads.core.domain.AndroidCacheAssets$invoke$1)
.class final Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidCacheAssets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidCacheAssets"
    f = "AndroidCacheAssets.kt"
    l = {
        0x3a
    }
    m = "invoke"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidCacheAssets;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidCacheAssets;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidCacheAssets;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidCacheAssets;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidCacheAssets$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidCacheAssets;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/unity3d/ads/core/domain/AndroidCacheAssets;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
