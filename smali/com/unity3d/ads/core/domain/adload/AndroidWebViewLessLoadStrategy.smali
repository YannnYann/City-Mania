###### Class com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy (com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy)
.class public final Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;
.super Ljava/lang/Object;
.source "AndroidWebViewLessLoadStrategy.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;


# instance fields
.field private final adRefresh:Lcom/unity3d/ads/core/domain/AdRefresh;

.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final cacheAssets:Lcom/unity3d/ads/core/domain/CacheAssets;

.field private final campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/domain/CacheAssets;Lcom/unity3d/ads/core/domain/AdRefresh;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .registers 7

    const-string v0, "adRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheAssets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRefresh"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 21
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 22
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->cacheAssets:Lcom/unity3d/ads/core/domain/CacheAssets;

    .line 23
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->adRefresh:Lcom/unity3d/ads/core/domain/AdRefresh;

    .line 24
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public invoke(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    instance-of v2, v1, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;

    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 27
    iget v4, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_64

    if-eq v4, v6, :cond_4b

    if-ne v4, v5, :cond_43

    iget-boolean v3, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->Z$0:Z

    iget-object v4, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v5, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/google/protobuf/ByteString;

    iget-object v2, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f8

    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    iget-boolean v4, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->Z$0:Z

    iget-object v6, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v7, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/google/protobuf/ByteString;

    iget-object v9, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v7

    move-object v7, v9

    goto/16 :goto_ce

    :cond_64
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    invoke-virtual/range {p5 .. p5}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v14

    const-string v1, "getTrackingToken(...)"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v7, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-direct/range {v7 .. v12}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;-><init>(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    new-instance v10, Lcom/unity3d/ads/core/data/model/AdObject;

    const v28, 0xf8f0

    const/16 v29, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v11, p1

    move-object/from16 v19, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object/from16 v21, p7

    move/from16 v20, p8

    move-object/from16 v27, v7

    invoke-direct/range {v10 .. v29}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->cacheAssets:Lcom/unity3d/ads/core/domain/CacheAssets;

    invoke-virtual/range {p5 .. p5}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheList()Ljava/util/List;

    move-result-object v4

    const-string v7, "getAssetsToCacheList(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p3

    iput-object v7, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$3:Ljava/lang/Object;

    move/from16 v8, p8

    iput-boolean v8, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->Z$0:Z

    iput v6, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    invoke-interface {v1, v10, v4, v2}, Lcom/unity3d/ads/core/domain/CacheAssets;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_cb

    goto :goto_f2

    :cond_cb
    move v4, v8

    move-object v6, v10

    move-object v8, v12

    .line 27
    :goto_ce
    check-cast v1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent;

    .line 53
    instance-of v9, v1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;

    if-eqz v9, :cond_124

    .line 54
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-interface {v1, v8}, Lcom/unity3d/ads/core/data/repository/CampaignRepository;->setLoadTimestamp(Lcom/google/protobuf/ByteString;)V

    .line 55
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-interface {v1, v8, v6}, Lcom/unity3d/ads/core/data/repository/AdRepository;->addAd(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 58
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->adRefresh:Lcom/unity3d/ads/core/domain/AdRefresh;

    iput-object v7, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->L$3:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->Z$0:Z

    iput v5, v2, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    invoke-interface {v1, v6, v2}, Lcom/unity3d/ads/core/domain/AdRefresh;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f3

    :goto_f2
    return-object v3

    :cond_f3
    move v3, v4

    move-object v4, v6

    move-object v2, v7

    move-object v6, v8

    move-object v5, v13

    .line 60
    :goto_f8
    invoke-virtual {v2}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_104

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_117

    :cond_104
    invoke-virtual {v2}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_117

    const-string v2, "adMarkup"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 61
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-interface {v1, v5, v6}, Lcom/unity3d/ads/core/data/repository/AdRepository;->enqueueOpportunityForPlacement(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_117
    if-eqz v3, :cond_11e

    .line 65
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementTokenWinsCount()V

    .line 68
    :cond_11e
    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    invoke-direct {v1, v4}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    return-object v1

    .line 70
    :cond_124
    new-instance v2, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 71
    sget-object v3, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 72
    instance-of v4, v1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    if-eqz v4, :cond_12f

    check-cast v1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    goto :goto_130

    :cond_12f
    const/4 v1, 0x0

    :goto_130
    if-eqz v1, :cond_138

    invoke-virtual {v1}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13a

    :cond_138
    const-string v1, ""

    :cond_13a
    const/16 v4, 0x36

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p5, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p8, v4

    move-object/from16 p9, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    .line 70
    invoke-direct/range {p1 .. p9}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    return-object v1
.end method

###### Class com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy.AnonymousClass1 (com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy$invoke$1)
.class final Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidWebViewLessLoadStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->invoke(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy"
    f = "AndroidWebViewLessLoadStrategy.kt"
    l = {
        0x33,
        0x3a
    }
    m = "invoke"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;->invoke(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
