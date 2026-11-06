###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse)
.class public final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;
.super Ljava/lang/Object;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 OperativeEventErrorDataKt.kt\ngatewayprotocol/v1/OperativeEventErrorDataKtKt\n*L\n1#1,379:1\n95#2:380\n135#2,3:381\n95#2:385\n135#2,3:386\n95#2:389\n135#2,3:390\n1#3:384\n1#3:394\n10#4:393\n*S KotlinDebug\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse\n*L\n138#1:380\n138#1:381,3\n228#1:385\n228#1:386,3\n346#1:389\n346#1:390,3\n366#1:394\n366#1:393\n*E\n"
.end annotation


# instance fields
.field private final adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

.field private final campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

.field private final getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;

.field private final getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

.field private final getLatestWebViewConfiguration:Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;

.field private final getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

.field private final getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

.field private final getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

.field private final preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

.field private final webViewLessLoadStrategy:Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;Lcom/unity3d/ads/adplayer/AdPlayerScope;Lcom/unity3d/ads/core/domain/GetAdPlayer;Lcom/unity3d/ads/core/domain/CacheWebViewAssets;Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;)V
    .registers 32

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "adRepository"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getWebViewContainerUseCase"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getWebViewBridge"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getHandleInvocationsFromAdViewer"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignRepository"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getOperativeEventApi"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getLatestWebViewConfiguration"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayerScope"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdPlayer"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheWebViewAssets"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewLessLoadStrategy"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preShowStrategy"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 60
    iput-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 61
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    .line 62
    iput-object v3, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    .line 63
    iput-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 64
    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    .line 65
    iput-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 66
    iput-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 67
    iput-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 68
    iput-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getLatestWebViewConfiguration:Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;

    .line 69
    iput-object v10, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    .line 70
    iput-object v11, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;

    .line 71
    iput-object v12, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    .line 72
    iput-object v13, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->webViewLessLoadStrategy:Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;

    .line 73
    iput-object v14, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 74
    iput-object v15, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    return-void
.end method

.method public static final synthetic access$cleanup(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdPlayerScope$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/adplayer/AdPlayerScope;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    return-object p0
.end method

.method public static final synthetic access$getCacheWebViewAssets$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/CacheWebViewAssets;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    return-object p0
.end method

.method public static final synthetic access$getGetAdPlayer$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/GetAdPlayer;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;

    return-object p0
.end method

.method public static final synthetic access$getGetHandleInvocationsFromAdViewer$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    return-object p0
.end method

.method public static final synthetic access$getGetWebViewBridge$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    return-object p0
.end method

.method public static final synthetic access$getPreShowStrategy$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    return-object p0
.end method

.method public static final synthetic access$loadUrl(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->loadUrl(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;

    iget v2, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_16

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    :goto_14
    move-object v9, v1

    goto :goto_1c

    :cond_16
    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lkotlin/coroutines/Continuation;)V

    goto :goto_14

    :goto_1c
    iget-object v0, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 360
    iget v2, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    const/4 v12, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_41

    if-eq v2, v3, :cond_39

    if-ne v2, v12, :cond_31

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ab

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9d

    :cond_41
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->Companion:Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->newBuilder()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;

    move-result-object v2

    const-string v4, "newBuilder(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;)Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;

    move-result-object v0

    .line 368
    sget-object v2, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;->OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;

    .line 367
    invoke-virtual {v0, v2}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->setErrorType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;)V

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6c

    :cond_64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6c

    const-string v2, ""

    :cond_6c
    invoke-virtual {v0, v2}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->setMessage(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->_build()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    move-result-object p1

    .line 371
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 372
    sget-object v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;->OPERATIVE_EVENT_TYPE_LOAD_ERROR:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;

    .line 374
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v5

    const-string v4, "getTrackingToken(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    const-string p1, "toByteString(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, p4

    .line 371
    iput-object p1, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    iput v3, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v4, p2

    move-object v3, v0

    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->invoke$default(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9d

    goto :goto_aa

    :cond_9d
    :goto_9d
    if-eqz p1, :cond_ae

    const/4 p2, 0x0

    .line 377
    iput-object p2, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    iput v12, v9, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    invoke-interface {p1, v9}, Lcom/unity3d/ads/adplayer/AdPlayer;->destroy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_ab

    :goto_aa
    return-object v1

    .line 378
    :cond_ab
    :goto_ab
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_ae
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final loadUrl(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/adplayer/WebViewContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;

    invoke-direct {v0, p0, p4}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 345
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-wide p1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->J$0:J

    iget-object p3, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/unity3d/ads/core/data/model/AdObject;

    :try_start_2b
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_54

    :catchall_2f
    move-exception v0

    move-object p4, v0

    goto :goto_60

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    sget-object p4, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    .line 135
    invoke-virtual {p4}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v4

    .line 347
    :try_start_43
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->J$0:J

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->label:I

    invoke-interface {p3, p2, v0}, Lcom/unity3d/ads/adplayer/WebViewContainer;->loadUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_5c

    if-ne p2, v1, :cond_52

    return-object v1

    :cond_52
    move-object p3, p1

    move-wide p1, v4

    :goto_54
    :try_start_54
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_2f

    :goto_5a
    move-object v5, p3

    goto :goto_6b

    :catchall_5c
    move-exception v0

    move-object p4, v0

    move-object p3, p1

    move-wide p1, v4

    :goto_60
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_5a

    :goto_6b
    invoke-static {p4}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p3

    .line 137
    new-instance p4, Lkotlin/time/TimedValue;

    invoke-static {p1, p2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p4, p3, p1, p2, v0}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    invoke-virtual {p4}, Lkotlin/time/TimedValue;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Lkotlin/time/TimedValue;->component2-UwyO8pc()J

    move-result-wide p2

    .line 349
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 350
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_93

    sget-object p4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_FILE_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    :goto_91
    move-object v1, p4

    goto :goto_96

    .line 351
    :cond_93
    sget-object p4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_FILE_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    goto :goto_91

    .line 352
    :goto_96
    sget-object p4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p2, p3, p4}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide p2

    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    const/16 v8, 0x6c

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 349
    invoke-static/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 355
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 358
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    instance-of v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;

    if-eqz v2, :cond_18

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    :goto_16
    move-object v8, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 76
    iget v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    packed-switch v3, :pswitch_data_dd6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_31
    iget-object v2, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d8c

    :pswitch_3a
    iget-object v2, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CancellationException;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_dcc

    :pswitch_43
    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/adplayer/model/LoadEvent;

    iget-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/ByteString;

    :try_start_57
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_57 .. :try_end_5a} :catch_66
    .catchall {:try_start_57 .. :try_end_5a} :catchall_60

    move-object v13, v1

    move-object v15, v2

    move-object v1, v3

    move-object v3, v8

    goto/16 :goto_b5c

    :catchall_60
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v8, v6

    goto/16 :goto_d4d

    :catch_66
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v8, v6

    goto/16 :goto_d8d

    :pswitch_6c
    iget-wide v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    iget v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    iget-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    iget-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/google/protobuf/ByteString;

    move-wide/from16 p1, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/UnityAdsLoadOptions;

    :try_start_9a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9a .. :try_end_9d} :catch_b7
    .catchall {:try_start_9a .. :try_end_9d} :catchall_ae

    move-object v1, v6

    move-object/from16 v16, v7

    move-object v4, v11

    move-object v7, v14

    move-object v11, v10

    move-object v14, v13

    move v13, v5

    move-object v10, v9

    move-wide/from16 v5, p1

    move-object v9, v3

    move-object v3, v8

    move-object v8, v15

    move-object v15, v2

    goto/16 :goto_ab6

    :catchall_ae
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    move-object v7, v14

    :goto_b4
    move-object v8, v15

    goto/16 :goto_d4d

    :catch_b7
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    move-object v7, v14

    :goto_bd
    move-object v8, v15

    goto/16 :goto_d8d

    :pswitch_c0
    iget-wide v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    iget v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    iget-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    iget-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/google/protobuf/ByteString;

    move-wide/from16 p1, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/UnityAdsLoadOptions;

    :try_start_ee
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ee .. :try_end_f1} :catch_10b
    .catchall {:try_start_ee .. :try_end_f1} :catchall_102

    move-object v0, v15

    move-object v15, v2

    move-object v2, v7

    move-object v7, v0

    move-object v0, v6

    move-object v4, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v14

    move-object v14, v13

    move v13, v5

    move-wide/from16 v5, p1

    goto/16 :goto_a85

    :catchall_102
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    move-object v8, v14

    move-object v7, v15

    goto/16 :goto_d4d

    :catch_10b
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    move-object v8, v14

    move-object v7, v15

    goto/16 :goto_d8d

    :pswitch_114
    iget-wide v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    iget v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    iget-boolean v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$11:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$10:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    check-cast v12, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    check-cast v14, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    iget-object v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    move-wide/from16 p1, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-object/from16 p3, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    move-object/from16 p4, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/UnityAdsLoadOptions;

    :try_start_150
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_16b

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move v2, v6

    move-object v13, v10

    move-object v15, v11

    move-wide/from16 v11, p1

    move-object v6, v3

    move-object v3, v8

    move-object v10, v9

    move-object/from16 v9, p3

    move-object v8, v7

    move-object/from16 v7, p4

    goto/16 :goto_7c0

    :catchall_16b
    move-exception v0

    move/from16 v20, v5

    move-object v5, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move-object v14, v2

    move v2, v6

    move-object v10, v7

    move-object v13, v9

    move-object/from16 v9, p3

    move-object/from16 v7, p4

    move-object v6, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v15

    move-object v15, v11

    move-wide/from16 v11, p1

    goto/16 :goto_825

    :pswitch_186
    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/google/protobuf/ByteString;

    :try_start_1a2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1a5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a2 .. :try_end_1a5} :catch_1b8
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_1af

    move-object v14, v10

    move-object v10, v7

    move-object v7, v14

    move-object v14, v2

    move-object v2, v5

    move-object v5, v3

    move-object v3, v8

    move-object v8, v9

    goto/16 :goto_6b1

    :catchall_1af
    move-exception v0

    move-object v1, v2

    move-object v4, v5

    move-object v5, v6

    move-object v3, v8

    move-object v8, v9

    move-object v7, v10

    goto/16 :goto_d4d

    :catch_1b8
    move-exception v0

    move-object v1, v2

    move-object v4, v5

    move-object v5, v6

    move-object v3, v8

    move-object v8, v9

    move-object v7, v10

    goto/16 :goto_d8d

    :pswitch_1c1
    iget v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    iget-boolean v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$1:Z

    iget-boolean v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    iget-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/google/protobuf/ByteString;

    move/from16 p1, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/UnityAdsLoadOptions;

    :try_start_1f1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1f4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1f1 .. :try_end_1f4} :catch_205
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_1fd

    move-object v0, v13

    move-object v13, v12

    move-object v12, v3

    move-object v3, v2

    move-object v2, v15

    move/from16 v15, p1

    goto/16 :goto_58c

    :catchall_1fd
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v7, v13

    goto/16 :goto_b4

    :catch_205
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v7, v13

    goto/16 :goto_bd

    :pswitch_20d
    iget-wide v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    iget-boolean v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$1:Z

    iget-boolean v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    check-cast v10, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    iget-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-wide/from16 p1, v3

    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    iget-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/UnityAdsLoadOptions;

    :try_start_23d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_240
    .catch Ljava/util/concurrent/CancellationException; {:try_start_23d .. :try_end_240} :catch_25c
    .catchall {:try_start_23d .. :try_end_240} :catchall_254

    move-object/from16 v20, v13

    move-object v13, v10

    move-object v10, v15

    move-object v15, v14

    move-object/from16 v14, v20

    move/from16 v29, v6

    move-object/from16 v20, v9

    move-object v6, v12

    move-object v12, v4

    move v9, v5

    move-object v5, v11

    move-object v11, v3

    move-wide/from16 v3, p1

    goto/16 :goto_48e

    :catchall_254
    move-exception v0

    move-object v1, v2

    move-object v7, v3

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_b4

    :catch_25c
    move-exception v0

    move-object v1, v2

    move-object v7, v3

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_bd

    :pswitch_264
    iget-boolean v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$1:Z

    iget-boolean v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    iget-object v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/google/protobuf/ByteString;

    iget-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/unity3d/ads/UnityAdsLoadOptions;

    :try_start_284
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_287
    .catch Ljava/util/concurrent/CancellationException; {:try_start_284 .. :try_end_287} :catch_29d
    .catchall {:try_start_284 .. :try_end_287} :catchall_294

    move/from16 v29, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move-object/from16 v28, v12

    move v9, v3

    goto/16 :goto_3a5

    :catchall_294
    move-exception v0

    move-object v1, v2

    move-object v4, v5

    move-object v5, v6

    :goto_298
    move-object v3, v8

    :goto_299
    move-object v8, v10

    move-object v7, v11

    goto/16 :goto_d4d

    :catch_29d
    move-exception v0

    move-object v1, v2

    move-object v4, v5

    move-object v5, v6

    :goto_2a1
    move-object v3, v8

    :goto_2a2
    move-object v8, v10

    move-object v7, v11

    goto/16 :goto_d8d

    :pswitch_2a6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 89
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 92
    :try_start_2b3
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasError()Z

    move-result v0
    :try_end_2b7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2b3 .. :try_end_2b7} :catch_d49
    .catchall {:try_start_2b3 .. :try_end_2b7} :catchall_d45

    if-eqz v0, :cond_320

    .line 93
    :try_start_2b9
    new-instance v19, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 94
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    const-string v3, "getErrorCode(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v3

    if-eqz v3, :cond_2f4

    invoke-virtual {v3}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v3

    if-eqz v3, :cond_2f4

    invoke-static {v3}, Lcom/unity3d/ads/UnityAdsErrorKt;->getLoadErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2db

    goto :goto_2f4

    :cond_2db
    :goto_2db
    move-object/from16 v21, v3

    goto :goto_2fd

    :catchall_2de
    move-exception v0

    move-object/from16 v7, p2

    move-object v1, v2

    move-object v3, v8

    move-object v5, v9

    move-object v4, v10

    move-object/from16 v8, p3

    goto/16 :goto_d4d

    :catch_2e9
    move-exception v0

    move-object/from16 v7, p2

    move-object v1, v2

    move-object v3, v8

    move-object v5, v9

    move-object v4, v10

    move-object/from16 v8, p3

    goto/16 :goto_d8d

    :cond_2f4
    :goto_2f4
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v3

    invoke-virtual {v3}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v3

    goto :goto_2db

    .line 96
    :goto_2fd
    const-string v23, "gateway"

    .line 97
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v3

    invoke-virtual {v3}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v24

    .line 98
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v3

    const-string v4, "getError(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/unity3d/ads/core/extensions/ErrorExtensionsKt;->getErrorTokenOrNull(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lcom/google/protobuf/ByteString;

    move-result-object v25

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v0

    .line 93
    invoke-direct/range {v19 .. v27}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_31f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2b9 .. :try_end_31f} :catch_2e9
    .catchall {:try_start_2b9 .. :try_end_31f} :catchall_2de

    return-object v19

    .line 102
    :cond_320
    :try_start_320
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0
    :try_end_328
    .catch Ljava/util/concurrent/CancellationException; {:try_start_320 .. :try_end_328} :catch_d49
    .catchall {:try_start_320 .. :try_end_328} :catchall_d45

    if-eqz v0, :cond_340

    .line 103
    :try_start_32a
    new-instance v19, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 104
    sget-object v20, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 105
    const-string v21, "Unity Ads SDK ad load failed: No ad fill available for the requested placement."

    .line 106
    const-string v23, "no_fill"

    const/16 v26, 0x34

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 103
    invoke-direct/range {v19 .. v27}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_33f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_32a .. :try_end_33f} :catch_2e9
    .catchall {:try_start_32a .. :try_end_33f} :catchall_2de

    return-object v19

    .line 110
    :cond_340
    :try_start_340
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getLatestWebViewConfiguration:Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;

    .line 111
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getVersion()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    .line 113
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getAdditionalFilesList()Ljava/util/List;

    move-result-object v6

    .line 114
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    .line 110
    iput-object v0, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;
    :try_end_36a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_340 .. :try_end_36a} :catch_d49
    .catchall {:try_start_340 .. :try_end_36a} :catchall_d45

    move-object/from16 v11, p2

    :try_start_36c
    iput-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;
    :try_end_36e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_36c .. :try_end_36e} :catch_d41
    .catchall {:try_start_36c .. :try_end_36e} :catchall_d3d

    move-object/from16 v12, p3

    :try_start_370
    iput-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    move-object/from16 v13, p5

    iput-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    move-object/from16 v14, p6

    iput-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    move/from16 v15, p7

    iput-boolean v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z
    :try_end_382
    .catch Ljava/util/concurrent/CancellationException; {:try_start_370 .. :try_end_382} :catch_d37
    .catchall {:try_start_370 .. :try_end_382} :catchall_d31

    move-object/from16 p4, v9

    move/from16 v9, p8

    :try_start_386
    iput-boolean v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$1:Z

    move-object/from16 v19, v3

    const/4 v3, 0x1

    iput v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    move-object/from16 v3, v19

    invoke-virtual/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;->invoke(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_393
    .catch Ljava/util/concurrent/CancellationException; {:try_start_386 .. :try_end_393} :catch_d27
    .catchall {:try_start_386 .. :try_end_393} :catchall_d1e

    if-ne v3, v2, :cond_398

    :goto_395
    move-object v1, v2

    goto/16 :goto_dca

    :cond_398
    move-object/from16 v5, p4

    move-object/from16 v28, v0

    move-object v0, v3

    move-object v4, v10

    move-object v10, v12

    move-object/from16 v22, v13

    move-object/from16 v30, v14

    move/from16 v29, v15

    .line 76
    :goto_3a5
    :try_start_3a5
    check-cast v0, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    .line 117
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    new-instance v6, Lcom/unity3d/ads/core/data/model/CoroutineOpportunity;

    invoke-direct {v6, v11}, Lcom/unity3d/ads/core/data/model/CoroutineOpportunity;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-static {v3, v6}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v20

    if-eqz v9, :cond_3e7

    .line 119
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-interface {v3, v11}, Lcom/unity3d/ads/core/data/repository/AdRepository;->getAd(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v3

    if-nez v3, :cond_3da

    new-instance v31, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 120
    sget-object v32, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 121
    const-string v33, "Internal error"

    .line 122
    const-string v35, "webviewless_ad_not_found"

    const/16 v38, 0x34

    const/16 v39, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 119
    invoke-direct/range {v31 .. v39}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v31

    :catchall_3d2
    move-exception v0

    :goto_3d3
    move-object v1, v2

    goto/16 :goto_298

    :catch_3d6
    move-exception v0

    :goto_3d7
    move-object v1, v2

    goto/16 :goto_2a1

    :cond_3da
    move-object/from16 v25, v3

    move-object/from16 v3, v20

    move-object/from16 v14, v22

    move-object/from16 v12, v28

    move/from16 v6, v29

    move-object/from16 v13, v30

    goto :goto_41e

    .line 128
    :cond_3e7
    invoke-virtual {v10}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    const-string v6, "getTrackingToken(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v19, Lcom/unity3d/ads/core/data/model/AdObject;
    :try_end_3f2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3a5 .. :try_end_3f2} :catch_3d6
    .catchall {:try_start_3a5 .. :try_end_3f2} :catchall_3d2

    const v37, 0x1f8f0

    const/16 v38, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v23, v3

    move-object/from16 v21, v11

    :try_start_40f
    invoke-direct/range {v19 .. v38}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_412
    .catch Ljava/util/concurrent/CancellationException; {:try_start_40f .. :try_end_412} :catch_d17
    .catchall {:try_start_40f .. :try_end_412} :catchall_d10

    move-object/from16 v3, v20

    move-object/from16 v14, v22

    move-object/from16 v12, v28

    move/from16 v6, v29

    move-object/from16 v13, v30

    move-object/from16 v25, v19

    .line 135
    :goto_41e
    :try_start_41e
    iget-object v7, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v7}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v7

    invoke-virtual {v7}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getUseOptimisticWebviewCache()Z

    move-result v7

    if-eqz v7, :cond_4d4

    .line 137
    iget-object v7, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    sget-object v21, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_WEBVIEW_CACHE_WARM_STARTED:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/16 v28, 0x6e

    const/16 v29, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v7

    invoke-static/range {v20 .. v29}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    move-object/from16 v7, v25

    .line 95
    sget-object v15, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    move/from16 v29, v6

    move-object/from16 v25, v7

    .line 135
    invoke-virtual {v15}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v6

    .line 138
    iget-object v15, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    iput-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v0, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    move-object/from16 v20, v3

    move-object/from16 v3, v25

    iput-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    move-object/from16 v25, v3

    move/from16 v3, v29

    iput-boolean v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    iput-boolean v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$1:Z

    iput-wide v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    move/from16 v29, v3

    const/4 v3, 0x2

    iput v3, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-interface {v15, v0, v8}, Lcom/unity3d/ads/core/domain/CacheWebViewAssets;->warmFromDisk(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_47e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_41e .. :try_end_47e} :catch_3d6
    .catchall {:try_start_41e .. :try_end_47e} :catchall_3d2

    if-ne v3, v2, :cond_482

    goto/16 :goto_395

    :cond_482
    move-object v15, v14

    move-object v14, v13

    move-object v13, v0

    move-object v0, v3

    move-object/from16 v45, v5

    move-object v5, v4

    move-wide v3, v6

    move-object/from16 v7, v25

    move-object/from16 v6, v45

    :goto_48e
    :try_start_48e
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-wide/from16 p1, v3

    .line 137
    new-instance v3, Lkotlin/time/TimedValue;
    :try_end_49c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_48e .. :try_end_49c} :catch_4d0
    .catchall {:try_start_48e .. :try_end_49c} :catchall_4cc

    move-object/from16 p3, v5

    :try_start_49e
    invoke-static/range {p1 .. p2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v4
    :try_end_4a2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_49e .. :try_end_4a2} :catch_4c8
    .catchall {:try_start_49e .. :try_end_4a2} :catchall_4c4

    move-object/from16 p1, v6

    const/4 v6, 0x0

    :try_start_4a5
    invoke-direct {v3, v0, v4, v5, v6}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4a8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4a5 .. :try_end_4a8} :catch_4bd
    .catchall {:try_start_4a5 .. :try_end_4a8} :catchall_4b6

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v24, v7

    move-object v0, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v7, v20

    move/from16 v6, v29

    goto :goto_4dd

    :catchall_4b6
    move-exception v0

    :goto_4b7
    move-object/from16 v5, p1

    move-object/from16 v4, p3

    goto/16 :goto_3d3

    :catch_4bd
    move-exception v0

    :goto_4be
    move-object/from16 v5, p1

    move-object/from16 v4, p3

    goto/16 :goto_3d7

    :catchall_4c4
    move-exception v0

    :goto_4c5
    move-object/from16 p1, v6

    goto :goto_4b7

    :catch_4c8
    move-exception v0

    :goto_4c9
    move-object/from16 p1, v6

    goto :goto_4be

    :catchall_4cc
    move-exception v0

    move-object/from16 p3, v5

    goto :goto_4c5

    :catch_4d0
    move-exception v0

    move-object/from16 p3, v5

    goto :goto_4c9

    :cond_4d4
    move-object/from16 v20, v3

    move/from16 v29, v6

    move-object/from16 v24, v25

    const/4 v3, 0x0

    move-object/from16 v7, v20

    :goto_4dd
    if-eqz v3, :cond_4ea

    .line 140
    :try_start_4df
    invoke-virtual {v3}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15
    :try_end_4e9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4df .. :try_end_4e9} :catch_3d6
    .catchall {:try_start_4df .. :try_end_4e9} :catchall_3d2

    goto :goto_4eb

    :cond_4ea
    const/4 v15, 0x0

    :goto_4eb
    if-eqz v3, :cond_539

    move-object/from16 p1, v3

    .line 143
    :try_start_4ef
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    :try_end_4f1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4ef .. :try_end_4f1} :catch_535
    .catchall {:try_start_4ef .. :try_end_4f1} :catchall_531

    if-eqz v15, :cond_4fc

    .line 144
    :try_start_4f3
    sget-object v19, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_WEBVIEW_CACHE_WARM_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    :try_end_4f5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4f3 .. :try_end_4f5} :catch_3d6
    .catchall {:try_start_4f3 .. :try_end_4f5} :catchall_3d2

    :goto_4f5
    move-object/from16 v29, v2

    move-object/from16 v20, v19

    move-object/from16 v19, v3

    goto :goto_4ff

    .line 145
    :cond_4fc
    :try_start_4fc
    sget-object v19, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_WEBVIEW_CACHE_WARM_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    :try_end_4fe
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4fc .. :try_end_4fe} :catch_535
    .catchall {:try_start_4fc .. :try_end_4fe} :catchall_531

    goto :goto_4f5

    .line 146
    :goto_4ff
    :try_start_4ff
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v2

    move/from16 p7, v15

    sget-object v15, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v15}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v21

    const/16 v27, 0x6c

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 143
    invoke-static/range {v19 .. v28}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V
    :try_end_51e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4ff .. :try_end_51e} :catch_529
    .catchall {:try_start_4ff .. :try_end_51e} :catchall_521

    move-object/from16 v2, v24

    goto :goto_53f

    :catchall_521
    move-exception v0

    :goto_522
    move-object v3, v8

    move-object v8, v10

    move-object v7, v11

    :goto_525
    move-object/from16 v1, v29

    goto/16 :goto_d4d

    :catch_529
    move-exception v0

    :goto_52a
    move-object v3, v8

    move-object v8, v10

    move-object v7, v11

    :goto_52d
    move-object/from16 v1, v29

    goto/16 :goto_d8d

    :catchall_531
    move-exception v0

    move-object/from16 v29, v2

    goto :goto_522

    :catch_535
    move-exception v0

    move-object/from16 v29, v2

    goto :goto_52a

    :cond_539
    move-object/from16 v29, v2

    move/from16 p7, v15

    move-object/from16 v2, v24

    :goto_53f
    if-nez p7, :cond_5b2

    .line 152
    :try_start_541
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    iput-object v12, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v0, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v2, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    iput-boolean v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    iput-boolean v9, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$1:Z

    move/from16 v15, p7

    iput v15, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    move-object/from16 v24, v2

    const/4 v2, 0x3

    iput v2, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I
    :try_end_564
    .catch Ljava/util/concurrent/CancellationException; {:try_start_541 .. :try_end_564} :catch_5b0
    .catchall {:try_start_541 .. :try_end_564} :catchall_5ae

    const/4 v2, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 p2, v0

    move/from16 p3, v2

    move-object/from16 p1, v3

    move-object/from16 p4, v8

    move/from16 p5, v19

    move-object/from16 p6, v20

    :try_start_575
    invoke-static/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/CacheWebViewAssets$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/CacheWebViewAssets;Lcom/unity3d/ads/core/data/model/WebViewConfiguration;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_579
    .catch Ljava/util/concurrent/CancellationException; {:try_start_575 .. :try_end_579} :catch_5a6
    .catchall {:try_start_575 .. :try_end_579} :catchall_59e

    move-object/from16 v2, p2

    move-object/from16 v3, v29

    if-ne v0, v3, :cond_582

    move-object v1, v3

    goto/16 :goto_dca

    :cond_582
    move v0, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v4

    move v4, v0

    move-object v0, v11

    move-object v11, v5

    move v5, v6

    move-object/from16 v6, v24

    :goto_58c
    move-object/from16 v19, v10

    move-object v10, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v14

    move-object v14, v13

    move-object v13, v11

    move v11, v5

    move v5, v15

    move-object v15, v9

    move-object v9, v12

    move-object v12, v6

    move v6, v4

    move-object v4, v7

    move-object v7, v0

    goto :goto_5c7

    :catchall_59e
    move-exception v0

    move-object/from16 v8, p4

    :goto_5a1
    move-object/from16 v3, v29

    move-object v1, v3

    goto/16 :goto_298

    :catch_5a6
    move-exception v0

    move-object/from16 v8, p4

    :goto_5a9
    move-object/from16 v3, v29

    move-object v1, v3

    goto/16 :goto_2a1

    :catchall_5ae
    move-exception v0

    goto :goto_5a1

    :catch_5b0
    move-exception v0

    goto :goto_5a9

    :cond_5b2
    move/from16 v15, p7

    move-object/from16 v24, v2

    move-object/from16 v3, v29

    move-object v2, v0

    move-object/from16 v19, v14

    move-object v14, v13

    move-object v13, v5

    move v5, v15

    move-object v15, v2

    move-object v2, v4

    move-object v4, v7

    move-object v7, v11

    move v11, v6

    move v6, v9

    move-object v9, v12

    move-object/from16 v12, v24

    .line 155
    :goto_5c7
    :try_start_5c7
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_5cf
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5c7 .. :try_end_5cf} :catch_d09
    .catchall {:try_start_5c7 .. :try_end_5cf} :catchall_d02

    if-nez v0, :cond_5f7

    .line 156
    :try_start_5d1
    new-instance v20, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 157
    sget-object v21, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 158
    const-string v22, "Internal error"

    .line 159
    const-string v24, "no_webview_entry_point"

    const/16 v27, 0x34

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 156
    invoke-direct/range {v20 .. v28}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_5e6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5d1 .. :try_end_5e6} :catch_5ef
    .catchall {:try_start_5d1 .. :try_end_5e6} :catchall_5e7

    return-object v20

    :catchall_5e7
    move-exception v0

    move-object v4, v2

    move-object v1, v3

    move-object v3, v8

    move-object v8, v10

    move-object v5, v13

    goto/16 :goto_d4d

    :catch_5ef
    move-exception v0

    move-object v4, v2

    move-object v1, v3

    move-object v3, v8

    move-object v8, v10

    move-object v5, v13

    goto/16 :goto_d8d

    .line 163
    :cond_5f7
    :try_start_5f7
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_5fe
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5f7 .. :try_end_5fe} :catch_d09
    .catchall {:try_start_5f7 .. :try_end_5fe} :catchall_d02

    move-object/from16 v29, v3

    :try_start_600
    const-string v3, ".html"

    move/from16 v20, v5

    move-object/from16 p1, v9

    move/from16 p2, v11

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-static {v0, v3, v11, v9, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_60f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_600 .. :try_end_60f} :catch_cfc
    .catchall {:try_start_600 .. :try_end_60f} :catchall_cf6

    if-eqz v3, :cond_612

    goto :goto_613

    :cond_612
    const/4 v0, 0x0

    :goto_613
    if-nez v0, :cond_628

    .line 164
    :try_start_615
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v0
    :try_end_619
    .catch Ljava/util/concurrent/CancellationException; {:try_start_615 .. :try_end_619} :catch_621
    .catchall {:try_start_615 .. :try_end_619} :catchall_61a

    goto :goto_628

    :catchall_61a
    move-exception v0

    move-object v4, v2

    move-object v3, v8

    move-object v8, v10

    move-object v5, v13

    goto/16 :goto_525

    :catch_621
    move-exception v0

    move-object v4, v2

    move-object v3, v8

    move-object v8, v10

    move-object v5, v13

    goto/16 :goto_52d

    .line 167
    :cond_628
    :goto_628
    :try_start_628
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_62d
    .catchall {:try_start_628 .. :try_end_62d} :catchall_cc2

    .line 177
    :try_start_62d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "?platform=android&mode=ad-viewer&webviewType="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x26

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3
    :try_end_647
    .catch Ljava/util/concurrent/CancellationException; {:try_start_62d .. :try_end_647} :catch_cba
    .catchall {:try_start_62d .. :try_end_647} :catchall_cb2

    if-nez v3, :cond_64b

    :try_start_649
    const-string v3, ""
    :try_end_64b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_649 .. :try_end_64b} :catch_621
    .catchall {:try_start_649 .. :try_end_64b} :catchall_61a

    :cond_64b
    :try_start_64b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "?"

    move/from16 p3, v6

    const/4 v6, 0x0

    const/4 v11, 0x2

    invoke-static {v0, v9, v6, v11, v6}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_66b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_64b .. :try_end_66b} :catch_cba
    .catchall {:try_start_64b .. :try_end_66b} :catchall_cb2

    if-nez p3, :cond_74a

    .line 182
    :try_start_66d
    sget-object v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_BANNER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    if-eq v14, v0, :cond_74a

    .line 183
    invoke-virtual {v10}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasCampaignMetadata()Z

    move-result v0

    if-eqz v0, :cond_74a

    .line 184
    invoke-virtual {v10}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheCount()I

    move-result v0

    if-lez v0, :cond_74a

    .line 185
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->webViewLessLoadStrategy:Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;

    iput-object v7, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v10, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v14, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v13, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v2, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v5, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v6, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I
    :try_end_69b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_66d .. :try_end_69b} :catch_744
    .catchall {:try_start_66d .. :try_end_69b} :catchall_73e

    move-object/from16 v6, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object v8, v10

    move-object v10, v14

    move-object/from16 v9, v19

    move-object/from16 v14, v29

    :try_start_6a6
    invoke-interface/range {v3 .. v12}, Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;->invoke(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6aa
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6a6 .. :try_end_6aa} :catch_739
    .catchall {:try_start_6a6 .. :try_end_6aa} :catchall_734

    move-object v3, v12

    if-ne v0, v14, :cond_6b0

    :goto_6ad
    move-object v1, v14

    goto/16 :goto_dca

    :cond_6b0
    move-object v6, v13

    .line 76
    :goto_6b1
    :try_start_6b1
    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;

    .line 194
    instance-of v9, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    if-eqz v9, :cond_733

    .line 195
    move-object v9, v0

    check-cast v9, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    invoke-virtual {v9}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v9

    .line 197
    invoke-virtual {v8}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v11

    const/4 v12, 0x2

    .line 196
    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 200
    new-instance v12, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;
    :try_end_6cd
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6b1 .. :try_end_6cd} :catch_719
    .catchall {:try_start_6b1 .. :try_end_6cd} :catchall_713

    const/4 v13, 0x0

    move-object/from16 p2, v1

    move-object/from16 p7, v5

    move-object/from16 p5, v8

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 p6, v11

    move-object/from16 p1, v12

    move-object/from16 p8, v13

    :try_start_6de
    invoke-direct/range {p1 .. p8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadWebView$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    :try_end_6e1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6de .. :try_end_6e1} :catch_725
    .catchall {:try_start_6de .. :try_end_6e1} :catchall_71f

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    .line 218
    :try_start_6e5
    new-instance v10, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;
    :try_end_6e7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6e5 .. :try_end_6e7} :catch_72f
    .catchall {:try_start_6e5 .. :try_end_6e7} :catchall_72b

    const/4 v11, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move-object/from16 p6, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v8

    move-object/from16 p7, v9

    move-object/from16 p1, v10

    move-object/from16 p8, v11

    :try_start_6f8
    invoke-direct/range {p1 .. p8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    :try_end_6fb
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6f8 .. :try_end_6fb} :catch_725
    .catchall {:try_start_6f8 .. :try_end_6fb} :catchall_71f

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v4

    move-object/from16 p4, v5

    move/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    :try_start_70f
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_712
    .catch Ljava/util/concurrent/CancellationException; {:try_start_70f .. :try_end_712} :catch_719
    .catchall {:try_start_70f .. :try_end_712} :catchall_713

    return-object v0

    :catchall_713
    move-exception v0

    :goto_714
    move-object v4, v2

    move-object v5, v6

    :goto_716
    move-object v1, v14

    goto/16 :goto_d4d

    :catch_719
    move-exception v0

    :goto_71a
    move-object v4, v2

    move-object v5, v6

    :goto_71c
    move-object v1, v14

    goto/16 :goto_d8d

    :catchall_71f
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    goto :goto_714

    :catch_725
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    goto :goto_71a

    :catchall_72b
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_714

    :catch_72f
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_71a

    :cond_733
    return-object v0

    :catchall_734
    move-exception v0

    move-object v3, v12

    :goto_736
    move-object v4, v2

    move-object v5, v13

    goto :goto_716

    :catch_739
    move-exception v0

    move-object v3, v12

    :goto_73b
    move-object v4, v2

    move-object v5, v13

    goto :goto_71c

    :catchall_73e
    move-exception v0

    move-object v3, v8

    move-object v8, v10

    move-object/from16 v14, v29

    goto :goto_736

    :catch_744
    move-exception v0

    move-object v3, v8

    move-object v8, v10

    move-object/from16 v14, v29

    goto :goto_73b

    :cond_74a
    move-object/from16 v6, p1

    move-object v3, v8

    move-object v8, v10

    move-object v10, v14

    move-object/from16 v9, v19

    move-object/from16 v14, v29

    .line 224
    :try_start_753
    invoke-virtual {v8}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const/4 v11, 0x2

    .line 223
    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 227
    iput-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    move-object/from16 p1, v11

    move-object/from16 v18, v12

    .line 135
    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v11
    :try_end_76c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_753 .. :try_end_76c} :catch_ca8
    .catchall {:try_start_753 .. :try_end_76c} :catchall_c9e

    .line 229
    :try_start_76c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->preShowStrategy:Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;
    :try_end_770
    .catchall {:try_start_76c .. :try_end_770} :catchall_81f

    move-object/from16 v29, v14

    :try_start_772
    iget-object v14, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v13, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v15, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;
    :try_end_786
    .catchall {:try_start_772 .. :try_end_786} :catchall_815

    move-object/from16 v23, v2

    move-object/from16 v2, v18

    :try_start_78a
    iput-object v2, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$10:Ljava/lang/Object;
    :try_end_78e
    .catchall {:try_start_78a .. :try_end_78e} :catchall_811

    move-object/from16 v18, v4

    move-object/from16 v4, p1

    :try_start_792
    iput-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$11:Ljava/lang/Object;
    :try_end_794
    .catchall {:try_start_792 .. :try_end_794} :catchall_80d

    move-object/from16 p1, v4

    move/from16 v4, p3

    :try_start_798
    iput-boolean v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z
    :try_end_79a
    .catchall {:try_start_798 .. :try_end_79a} :catchall_809

    move/from16 p3, v4

    move/from16 v4, v20

    :try_start_79e
    iput v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    iput-wide v11, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J
    :try_end_7a2
    .catchall {:try_start_79e .. :try_end_7a2} :catchall_805

    move/from16 v20, v4

    const/4 v4, 0x5

    :try_start_7a5
    iput v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-interface {v0, v14, v2, v3}, Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;->acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7ab
    .catchall {:try_start_7a5 .. :try_end_7ab} :catchall_7f2

    move-object/from16 v14, v29

    if-ne v0, v14, :cond_7b1

    goto/16 :goto_6ad

    :cond_7b1
    move-object v4, v15

    move-object v15, v5

    move/from16 v5, v20

    move-object/from16 v20, v4

    move-object v4, v8

    move-object/from16 v19, v18

    move-object/from16 v8, p1

    move-object/from16 v18, v2

    move/from16 v2, p3

    :goto_7c0
    :try_start_7c0
    check-cast v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7c6
    .catchall {:try_start_7c0 .. :try_end_7c6} :catchall_7e6

    move/from16 p1, v2

    move-object/from16 v2, v20

    move-object/from16 v45, v8

    move-object v8, v4

    move-object/from16 v4, v23

    move-object/from16 v46, v6

    move v6, v5

    move-object v5, v13

    move-object v13, v10

    move-object/from16 v10, v45

    move-object/from16 v45, v9

    move-object/from16 v9, v46

    :goto_7da
    move-object/from16 v25, v18

    move-wide/from16 v46, v11

    move-object/from16 v11, v45

    move-object/from16 v12, v19

    move-wide/from16 v18, v46

    goto/16 :goto_839

    :catchall_7e6
    move-exception v0

    move-object/from16 v21, v20

    move/from16 v20, v5

    move-object v5, v13

    move-object v13, v10

    move-object v10, v8

    move-object v8, v4

    move-object/from16 v4, v23

    goto :goto_825

    :catchall_7f2
    move-exception v0

    :goto_7f3
    move-object/from16 v14, v29

    :goto_7f5
    move-object/from16 v21, v15

    move-object/from16 v19, v18

    move-object/from16 v4, v23

    move-object/from16 v18, v2

    move-object v15, v5

    move-object v5, v13

    move/from16 v2, p3

    move-object v13, v10

    move-object/from16 v10, p1

    goto :goto_825

    :catchall_805
    move-exception v0

    move/from16 v20, v4

    goto :goto_7f3

    :catchall_809
    move-exception v0

    move/from16 p3, v4

    goto :goto_7f3

    :catchall_80d
    move-exception v0

    move-object/from16 p1, v4

    goto :goto_7f3

    :catchall_811
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_7f3

    :catchall_815
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v2, v18

    move-object/from16 v14, v29

    :goto_81c
    move-object/from16 v18, v4

    goto :goto_7f5

    :catchall_81f
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v2, v18

    goto :goto_81c

    :goto_825
    :try_start_825
    sget-object v22, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_82f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_825 .. :try_end_82f} :catch_c99
    .catchall {:try_start_825 .. :try_end_82f} :catchall_c94

    move/from16 p1, v2

    move-object/from16 v2, v21

    move-object/from16 v45, v9

    move-object v9, v6

    move/from16 v6, v20

    goto :goto_7da

    :goto_839
    :try_start_839
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    move-object/from16 p4, v15

    .line 137
    new-instance v15, Lkotlin/time/TimedValue;

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    invoke-static/range {v18 .. v19}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v11
    :try_end_849
    .catch Ljava/util/concurrent/CancellationException; {:try_start_839 .. :try_end_849} :catch_c8d
    .catchall {:try_start_839 .. :try_end_849} :catchall_c86

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :try_start_84c
    invoke-direct {v15, v0, v11, v12, v14}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    invoke-virtual {v15}, Lkotlin/time/TimedValue;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15}, Lkotlin/time/TimedValue;->component2-UwyO8pc()J

    move-result-wide v11

    .line 231
    iget-object v14, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 232
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0
    :try_end_863
    .catch Ljava/util/concurrent/CancellationException; {:try_start_84c .. :try_end_863} :catch_c7e
    .catchall {:try_start_84c .. :try_end_863} :catchall_c76

    if-eqz v0, :cond_874

    :try_start_865
    sget-object v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_WEBVIEW_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    :try_end_867
    .catch Ljava/util/concurrent/CancellationException; {:try_start_865 .. :try_end_867} :catch_86f
    .catchall {:try_start_865 .. :try_end_867} :catchall_86a

    :goto_867
    move-object/from16 v21, v0

    goto :goto_877

    :catchall_86a
    move-exception v0

    :goto_86b
    move-object/from16 v1, v18

    goto/16 :goto_d4d

    :catch_86f
    move-exception v0

    :goto_870
    move-object/from16 v1, v18

    goto/16 :goto_d8d

    :cond_874
    :try_start_874
    sget-object v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_WEBVIEW_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    goto :goto_867

    .line 233
    :goto_877
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v28, 0x6c

    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v14

    .line 231
    invoke-static/range {v20 .. v29}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 237
    invoke-virtual {v15}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;

    .line 238
    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;->getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object v11

    .line 240
    sget-object v12, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v12}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v14

    .line 241
    iget-object v12, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    sget-object v21, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_STARTED_AD_VIEWER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/16 v28, 0x6e

    const/16 v29, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v12

    invoke-static/range {v20 .. v29}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 248
    instance-of v12, v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    :try_end_8c4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_874 .. :try_end_8c4} :catch_c7e
    .catchall {:try_start_874 .. :try_end_8c4} :catchall_c76

    move/from16 v19, v12

    const-string v12, "getAdDataRefreshToken(...)"

    move-wide/from16 v40, v14

    const-string v14, "getAdData(...)"

    if-eqz v19, :cond_97d

    .line 252
    :try_start_8ce
    move-object v11, v0

    check-cast v11, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-virtual {v11}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object v11

    iput-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 254
    move-object/from16 v27, v11

    check-cast v27, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 255
    invoke-virtual/range {v25 .. v25}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v21

    .line 256
    invoke-virtual/range {v25 .. v25}, Lcom/unity3d/ads/core/data/model/AdObject;->getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object v37

    const v38, 0xffbe

    const/16 v39, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v25

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 253
    invoke-static/range {v20 .. v39}, Lcom/unity3d/ads/core/data/model/AdObject;->copy$default(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v11

    move-object/from16 v15, v20

    .line 258
    move-object v13, v0

    check-cast v13, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-virtual {v13}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->getBridge()Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object v13

    move/from16 v19, v6

    iget-object v6, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    move-object/from16 v42, v2

    .line 259
    invoke-virtual {v8}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_920
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8ce .. :try_end_920} :catch_976
    .catchall {:try_start_8ce .. :try_end_920} :catchall_96f

    move-object/from16 v43, v4

    move-object/from16 v44, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    :try_start_927
    invoke-static {v2, v4, v14, v8}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    invoke-virtual/range {v44 .. v44}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v4, v12, v14, v8}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v6, v2, v4, v10, v11}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/unity3d/ads/adplayer/WebViewBridge;->setExposedFunctions(Ljava/util/Map;)V

    .line 264
    check-cast v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->getLoadEvent()Lcom/unity3d/ads/adplayer/model/LoadEvent;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_94b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_927 .. :try_end_94b} :catch_966
    .catchall {:try_start_927 .. :try_end_94b} :catchall_95d

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v25, v15

    move-object/from16 v15, v18

    move/from16 v6, v19

    move-object/from16 v8, v44

    :goto_957
    move-object/from16 v2, v42

    move-object/from16 v4, v43

    goto/16 :goto_acc

    :catchall_95d
    move-exception v0

    :goto_95e
    move-object/from16 v1, v18

    move-object/from16 v4, v43

    move-object/from16 v8, v44

    goto/16 :goto_d4d

    :catch_966
    move-exception v0

    :goto_967
    move-object/from16 v1, v18

    move-object/from16 v4, v43

    move-object/from16 v8, v44

    goto/16 :goto_d8d

    :catchall_96f
    move-exception v0

    move-object/from16 v43, v4

    move-object/from16 v44, v8

    goto/16 :goto_86b

    :catch_976
    move-exception v0

    move-object/from16 v43, v4

    move-object/from16 v44, v8

    goto/16 :goto_870

    :cond_97d
    move-object/from16 v42, v2

    move-object/from16 v43, v4

    move/from16 v19, v6

    move-object/from16 v44, v8

    move-object/from16 v15, v25

    .line 266
    :try_start_987
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    iget-object v2, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    invoke-interface {v0, v11, v2}, Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;->invoke(Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object v0

    .line 267
    iget-object v2, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;

    invoke-interface {v2, v0, v11, v15, v13}, Lcom/unity3d/ads/core/domain/GetAdPlayer;->invoke(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/WebViewContainer;Lcom/unity3d/ads/core/data/model/AdObject;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object v2

    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 271
    move-object/from16 v27, v2

    check-cast v27, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 272
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v21

    .line 273
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/AdObject;->getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object v37

    const v38, 0xffbe

    const/16 v39, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v20, v15

    .line 270
    invoke-static/range {v20 .. v39}, Lcom/unity3d/ads/core/data/model/AdObject;->copy$default(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v2

    move-object/from16 v25, v20

    .line 275
    iget-object v4, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    .line 276
    invoke-virtual/range {v44 .. v44}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v6, v8, v14, v13}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 278
    invoke-virtual/range {v44 .. v44}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v15

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v8, v14, v13}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-virtual {v4, v6, v8, v10, v2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/unity3d/ads/adplayer/WebViewBridge;->setExposedFunctions(Ljava/util/Map;)V
    :try_end_9f1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_987 .. :try_end_9f1} :catch_c6c
    .catchall {:try_start_987 .. :try_end_9f1} :catchall_c62

    if-eqz p1, :cond_a3a

    .line 282
    :try_start_9f3
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getWebviewLessLoadParallelActivityLaunch()Z

    move-result v0

    if-eqz v0, :cond_a3a

    .line 283
    iget-object v12, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    new-instance v15, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadEvent$1;
    :try_end_a07
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9f3 .. :try_end_a07} :catch_966
    .catchall {:try_start_9f3 .. :try_end_a07} :catchall_95d

    const/4 v0, 0x0

    move-object/from16 p6, v0

    move-object/from16 p2, v1

    move-object/from16 p5, v11

    move-object/from16 p1, v15

    move-object/from16 p3, v25

    :try_start_a12
    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$loadEvent$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V
    :try_end_a15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a12 .. :try_end_a15} :catch_a35
    .catchall {:try_start_a12 .. :try_end_a15} :catchall_a30

    move-object/from16 v0, p3

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_a1d
    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 284
    sget-object v4, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;->INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;
    :try_end_a22
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a1d .. :try_end_a22} :catch_966
    .catchall {:try_start_a1d .. :try_end_a22} :catchall_95d

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v25, v0

    move-object/from16 v15, v18

    move/from16 v6, v19

    move-object/from16 v8, v44

    goto/16 :goto_ac6

    :catchall_a30
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_95e

    :catch_a35
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_967

    :cond_a3a
    move-object/from16 v15, p4

    move-object v4, v11

    move-object/from16 v0, v25

    .line 287
    :try_start_a3f
    iput-object v9, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;
    :try_end_a43
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a3f .. :try_end_a43} :catch_c6c
    .catchall {:try_start_a3f .. :try_end_a43} :catchall_c62

    move-object/from16 v8, v44

    :try_start_a45
    iput-object v8, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    move-object/from16 v6, p7

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;
    :try_end_a4d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a45 .. :try_end_a4d} :catch_c5a
    .catchall {:try_start_a45 .. :try_end_a4d} :catchall_c52

    move-object/from16 v10, v43

    :try_start_a4f
    iput-object v10, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    move-object/from16 v11, v42

    iput-object v11, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    move-object/from16 v12, p8

    iput-object v12, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$10:Ljava/lang/Object;

    iput-object v13, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$11:Ljava/lang/Object;

    move/from16 v13, v19

    iput v13, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I
    :try_end_a66
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a4f .. :try_end_a66} :catch_c4a
    .catchall {:try_start_a4f .. :try_end_a66} :catchall_c42

    move-object v14, v5

    move-object/from16 p7, v6

    move-wide/from16 v5, v40

    :try_start_a6b
    iput-wide v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    move-object/from16 p1, v2

    const/4 v2, 0x6

    iput v2, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-direct {v1, v0, v15, v4, v3}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->loadUrl(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a76
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a6b .. :try_end_a76} :catch_c3a
    .catchall {:try_start_a6b .. :try_end_a76} :catchall_c32

    move-object/from16 v15, v18

    if-ne v2, v15, :cond_a7d

    :goto_a7a
    move-object v1, v15

    goto/16 :goto_dca

    :cond_a7d
    move-object v2, v0

    move-object v4, v10

    move-object v10, v12

    move-object v12, v14

    move-object/from16 v0, p1

    move-object/from16 v14, p7

    .line 288
    :goto_a85
    :try_start_a85
    iget-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-interface {v1}, Lcom/unity3d/ads/adplayer/AdPlayer;->getOnLoadEvent()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v9, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v12, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v11, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    iput v13, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->I$0:I

    iput-wide v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    move-object/from16 v16, v2

    const/4 v2, 0x7

    iput v2, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->single(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_ab1

    :goto_ab0
    goto :goto_a7a

    :cond_ab1
    move-object/from16 v45, v1

    move-object v1, v0

    move-object/from16 v0, v45

    .line 76
    :goto_ab6
    check-cast v0, Lcom/unity3d/ads/adplayer/model/LoadEvent;
    :try_end_ab8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a85 .. :try_end_ab8} :catch_c2c
    .catchall {:try_start_a85 .. :try_end_ab8} :catchall_c26

    move-object v2, v1

    move-object/from16 v43, v4

    move-wide/from16 v40, v5

    move-object/from16 v42, v11

    move-object v5, v12

    move v6, v13

    move-object v11, v14

    move-object/from16 v25, v16

    move-object v4, v0

    move-object v12, v10

    .line 291
    :goto_ac6
    :try_start_ac6
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_aca
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ac6 .. :try_end_aca} :catch_c1e
    .catchall {:try_start_ac6 .. :try_end_aca} :catchall_c16

    goto/16 :goto_957

    .line 248
    :goto_acc
    :try_start_acc
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/unity3d/ads/core/data/model/AdObject;
    :try_end_ada
    .catch Ljava/util/concurrent/CancellationException; {:try_start_acc .. :try_end_ada} :catch_c11
    .catchall {:try_start_acc .. :try_end_ada} :catchall_c0c

    move-object/from16 v10, p0

    .line 294
    :try_start_adc
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAllowedPii()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 295
    new-instance v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;

    const/4 v14, 0x0

    invoke-direct {v13, v5, v14}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v13}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 296
    iget-object v13, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-interface {v13}, Lcom/unity3d/ads/adplayer/AdPlayer;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    invoke-static {v0, v13}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 298
    instance-of v0, v1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    if-eqz v0, :cond_b9e

    .line 299
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    sget-object v27, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_CREATE_AD_OBJECT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    invoke-static/range {v40 .. v41}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v34, 0x6c

    const/16 v35, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v35}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 300
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;
    :try_end_b20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_adc .. :try_end_b20} :catch_b9b
    .catchall {:try_start_adc .. :try_end_b20} :catchall_b98

    const/4 v6, 0x0

    move-object/from16 p4, v1

    move-object/from16 p1, v2

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p2, v10

    move-object/from16 p3, v25

    :try_start_b31
    invoke-direct/range {p1 .. p8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/adplayer/model/LoadEvent;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    :try_end_b34
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b31 .. :try_end_b34} :catch_b8e
    .catchall {:try_start_b31 .. :try_end_b34} :catchall_b84

    move-object/from16 v13, p2

    :try_start_b36
    iput-object v7, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    iput-object v8, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v4, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v1, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$10:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$11:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b57
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b36 .. :try_end_b57} :catch_b82
    .catchall {:try_start_b36 .. :try_end_b57} :catchall_b80

    if-ne v0, v15, :cond_b5b

    goto/16 :goto_ab0

    :cond_b5b
    move-object v6, v8

    .line 304
    :goto_b5c
    :try_start_b5c
    new-instance v16, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 305
    sget-object v17, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 306
    const-string v18, "Internal error"

    .line 307
    const-string v20, "adviewer"

    .line 308
    check-cast v1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x24

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 304
    invoke-direct/range {v16 .. v24}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_b75
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b5c .. :try_end_b75} :catch_b7b
    .catchall {:try_start_b5c .. :try_end_b75} :catchall_b76

    return-object v16

    :catchall_b76
    move-exception v0

    move-object v8, v6

    :goto_b78
    move-object v1, v15

    goto/16 :goto_d4d

    :catch_b7b
    move-exception v0

    move-object v8, v6

    :goto_b7d
    move-object v1, v15

    goto/16 :goto_d8d

    :catchall_b80
    move-exception v0

    goto :goto_b78

    :catch_b82
    move-exception v0

    goto :goto_b7d

    :catchall_b84
    move-exception v0

    move-object/from16 v13, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v5, p7

    goto :goto_b78

    :catch_b8e
    move-exception v0

    move-object/from16 v13, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v5, p7

    goto :goto_b7d

    :catchall_b98
    move-exception v0

    move-object v13, v10

    goto :goto_b78

    :catch_b9b
    move-exception v0

    move-object v13, v10

    goto :goto_b7d

    :cond_b9e
    move-object v13, v10

    .line 311
    :try_start_b9f
    iget-object v0, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 312
    sget-object v27, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_CREATE_AD_OBJECT_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 313
    invoke-static/range {v40 .. v41}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v34, 0x6c

    const/16 v35, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v0

    .line 311
    invoke-static/range {v26 .. v35}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    move-object/from16 v0, v31

    if-eqz v6, :cond_bdd

    .line 320
    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;

    const/4 v6, 0x0

    invoke-direct {v1, v13, v2, v6}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v6

    move-object/from16 p2, v10

    move-object/from16 p1, v12

    move-object/from16 p3, v14

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 323
    :cond_bdd
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-interface {v1, v7}, Lcom/unity3d/ads/core/data/repository/CampaignRepository;->setLoadTimestamp(Lcom/google/protobuf/ByteString;)V

    .line 324
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-interface {v1, v7, v0}, Lcom/unity3d/ads/core/data/repository/AdRepository;->addAd(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 325
    invoke-virtual {v9}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bf3

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c06

    :cond_bf3
    invoke-virtual {v9}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c06

    const-string v2, "adMarkup"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c06

    .line 326
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-interface {v1, v11, v7}, Lcom/unity3d/ads/core/data/repository/AdRepository;->enqueueOpportunityForPlacement(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    .line 329
    :cond_c06
    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    invoke-direct {v1, v0}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    :try_end_c0b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b9f .. :try_end_c0b} :catch_b82
    .catchall {:try_start_b9f .. :try_end_c0b} :catchall_b80

    return-object v1

    :catchall_c0c
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_b78

    :catch_c11
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_b7d

    :catchall_c16
    move-exception v0

    move-object/from16 v13, p0

    move-object v1, v15

    move-object/from16 v4, v43

    goto/16 :goto_d4d

    :catch_c1e
    move-exception v0

    move-object/from16 v13, p0

    move-object v1, v15

    move-object/from16 v4, v43

    goto/16 :goto_d8d

    :catchall_c26
    move-exception v0

    move-object/from16 v13, p0

    move-object v5, v12

    goto/16 :goto_b78

    :catch_c2c
    move-exception v0

    move-object/from16 v13, p0

    move-object v5, v12

    goto/16 :goto_b7d

    :catchall_c32
    move-exception v0

    move-object v13, v1

    move-object/from16 v15, v18

    move-object v4, v10

    move-object v5, v14

    goto/16 :goto_b78

    :catch_c3a
    move-exception v0

    move-object v13, v1

    move-object/from16 v15, v18

    move-object v4, v10

    move-object v5, v14

    goto/16 :goto_b7d

    :catchall_c42
    move-exception v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v15, v18

    :goto_c47
    move-object v4, v10

    goto/16 :goto_b78

    :catch_c4a
    move-exception v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v15, v18

    :goto_c4f
    move-object v4, v10

    goto/16 :goto_b7d

    :catchall_c52
    move-exception v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v15, v18

    move-object/from16 v10, v43

    goto :goto_c47

    :catch_c5a
    move-exception v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v15, v18

    move-object/from16 v10, v43

    goto :goto_c4f

    :catchall_c62
    move-exception v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v15, v18

    move-object/from16 v10, v43

    move-object/from16 v8, v44

    goto :goto_c47

    :catch_c6c
    move-exception v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v15, v18

    move-object/from16 v10, v43

    move-object/from16 v8, v44

    goto :goto_c4f

    :catchall_c76
    move-exception v0

    move-object v13, v1

    move-object v10, v4

    move-object v14, v5

    move-object/from16 v15, v18

    goto/16 :goto_b78

    :catch_c7e
    move-exception v0

    move-object v13, v1

    move-object v10, v4

    move-object v14, v5

    move-object/from16 v15, v18

    goto/16 :goto_b7d

    :catchall_c86
    move-exception v0

    move-object v13, v1

    move-object v10, v4

    move-object v15, v14

    move-object v14, v5

    goto/16 :goto_b78

    :catch_c8d
    move-exception v0

    move-object v13, v1

    move-object v10, v4

    move-object v15, v14

    move-object v14, v5

    goto/16 :goto_b7d

    :catchall_c94
    move-exception v0

    move-object v13, v1

    move-object v15, v14

    goto/16 :goto_b78

    :catch_c99
    move-exception v0

    move-object v13, v1

    move-object v15, v14

    goto/16 :goto_b7d

    :catchall_c9e
    move-exception v0

    move-object/from16 v23, v2

    move-object v15, v14

    :goto_ca2
    move-object v5, v13

    move-object v1, v15

    :goto_ca4
    move-object/from16 v4, v23

    goto/16 :goto_d4d

    :catch_ca8
    move-exception v0

    move-object/from16 v23, v2

    move-object v15, v14

    :goto_cac
    move-object v5, v13

    move-object v1, v15

    :goto_cae
    move-object/from16 v4, v23

    goto/16 :goto_d8d

    :catchall_cb2
    move-exception v0

    move-object/from16 v23, v2

    move-object v3, v8

    move-object v8, v10

    move-object/from16 v15, v29

    goto :goto_ca2

    :catch_cba
    move-exception v0

    move-object/from16 v23, v2

    move-object v3, v8

    move-object v8, v10

    move-object/from16 v15, v29

    goto :goto_cac

    :catchall_cc2
    move-object/from16 v23, v2

    move-object v3, v8

    move-object v8, v10

    move-object/from16 v15, v29

    .line 169
    :try_start_cc8
    new-instance v14, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    :try_end_cca
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cc8 .. :try_end_cca} :catch_cf3
    .catchall {:try_start_cc8 .. :try_end_cca} :catchall_cf0

    move-object/from16 v29, v15

    .line 170
    :try_start_ccc
    sget-object v15, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 171
    const-string v16, "Internal error"

    .line 172
    const-string v18, "invalid_url"
    :try_end_cd2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ccc .. :try_end_cd2} :catch_cec
    .catchall {:try_start_ccc .. :try_end_cd2} :catchall_ce8

    const/16 v21, 0x24

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v0

    move-object/from16 v1, v29

    .line 169
    :try_start_cde
    invoke-direct/range {v14 .. v22}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_ce1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cde .. :try_end_ce1} :catch_ce5
    .catchall {:try_start_cde .. :try_end_ce1} :catchall_ce2

    return-object v14

    :catchall_ce2
    move-exception v0

    :goto_ce3
    move-object v5, v13

    goto :goto_ca4

    :catch_ce5
    move-exception v0

    :goto_ce6
    move-object v5, v13

    goto :goto_cae

    :catchall_ce8
    move-exception v0

    :goto_ce9
    move-object/from16 v1, v29

    goto :goto_ce3

    :catch_cec
    move-exception v0

    :goto_ced
    move-object/from16 v1, v29

    goto :goto_ce6

    :catchall_cf0
    move-exception v0

    move-object v1, v15

    goto :goto_ce3

    :catch_cf3
    move-exception v0

    move-object v1, v15

    goto :goto_ce6

    :catchall_cf6
    move-exception v0

    move-object/from16 v23, v2

    move-object v3, v8

    move-object v8, v10

    goto :goto_ce9

    :catch_cfc
    move-exception v0

    move-object/from16 v23, v2

    move-object v3, v8

    move-object v8, v10

    goto :goto_ced

    :catchall_d02
    move-exception v0

    move-object/from16 v23, v2

    move-object v1, v3

    move-object v3, v8

    move-object v8, v10

    goto :goto_ce3

    :catch_d09
    move-exception v0

    move-object/from16 v23, v2

    move-object v1, v3

    move-object v3, v8

    move-object v8, v10

    goto :goto_ce6

    :catchall_d10
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object/from16 v11, v21

    goto/16 :goto_299

    :catch_d17
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    move-object/from16 v11, v21

    goto/16 :goto_2a2

    :catchall_d1e
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    :goto_d21
    move-object/from16 v5, p4

    move-object v4, v10

    move-object v7, v11

    move-object v8, v12

    goto :goto_d4d

    :catch_d27
    move-exception v0

    move-object v1, v2

    move-object v3, v8

    :goto_d2a
    move-object/from16 v5, p4

    move-object v4, v10

    move-object v7, v11

    move-object v8, v12

    goto/16 :goto_d8d

    :catchall_d31
    move-exception v0

    :goto_d32
    move-object v1, v2

    move-object v3, v8

    move-object/from16 p4, v9

    goto :goto_d21

    :catch_d37
    move-exception v0

    :goto_d38
    move-object v1, v2

    move-object v3, v8

    move-object/from16 p4, v9

    goto :goto_d2a

    :catchall_d3d
    move-exception v0

    :goto_d3e
    move-object/from16 v12, p3

    goto :goto_d32

    :catch_d41
    move-exception v0

    :goto_d42
    move-object/from16 v12, p3

    goto :goto_d38

    :catchall_d45
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_d3e

    :catch_d49
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_d42

    .line 337
    :goto_d4d
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;

    const/4 v9, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, v0

    move-object/from16 p2, v4

    move-object/from16 p7, v5

    move-object/from16 p1, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p8, v9

    invoke-direct/range {p1 .. p8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, p1

    iput-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$10:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$11:Ljava/lang/Object;

    const/16 v5, 0xa

    iput v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_d8b

    goto :goto_dca

    :cond_d8b
    move-object v2, v0

    .line 341
    :goto_d8c
    throw v2

    .line 331
    :goto_d8d
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;

    const/4 v9, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, v0

    move-object/from16 p2, v4

    move-object/from16 p7, v5

    move-object/from16 p1, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p8, v9

    invoke-direct/range {p1 .. p8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, p1

    iput-object v0, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$9:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$10:Ljava/lang/Object;

    iput-object v6, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$11:Ljava/lang/Object;

    const/16 v5, 0x9

    iput v5, v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_dcb

    :goto_dca
    return-object v1

    :cond_dcb
    move-object v2, v0

    .line 335
    :goto_dcc
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_dd3

    goto :goto_dd4

    :cond_dd3
    move-object v2, v0

    :goto_dd4
    throw v2

    nop

    :pswitch_data_dd6
    .packed-switch 0x0
        :pswitch_2a6
        :pswitch_264
        :pswitch_20d
        :pswitch_1c1
        :pswitch_186
        :pswitch_114
        :pswitch_c0
        :pswitch_6c
        :pswitch_43
        :pswitch_3a
        :pswitch_31
    .end packed-switch
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass1 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidHandleGatewayAdResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x173,
        0x179
    }
    m = "cleanup"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.C40251 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$1)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidHandleGatewayAdResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x6e,
        0x8a,
        0x98,
        0xb9,
        0xe5,
        0x11f,
        0x120,
        0x12c,
        0x14b,
        0x151
    }
    m = "invoke"
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0xda
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $loadWebView:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/unity3d/ads/adplayer/WebViewContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $webViewUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
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
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$webViewUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$adScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$loadWebView:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$webViewUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$adScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$loadWebView:Lkotlin/jvm/functions/Function2;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 218
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getPreShowStrategy$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$eagerAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$webViewUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$adScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->$loadWebView:Lkotlin/jvm/functions/Function2;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;->label:I

    move-object v9, p0

    invoke-interface/range {v3 .. v9}, Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;->onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass3 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x127
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->invoke(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 295
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_36

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const-string v3, "toByteArray(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;->label:I

    invoke-interface {v1, p1, p0}, Lcom/unity3d/ads/adplayer/AdPlayer;->onAllowedPiiChange([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_36

    return-object v0

    :cond_36
    :goto_36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass4 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$4)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$4"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x12d,
        0x12e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $tmpAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/adplayer/model/LoadEvent;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lcom/unity3d/ads/adplayer/model/LoadEvent;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$tmpAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$tmpAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/adplayer/model/LoadEvent;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 300
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_56

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getPreShowStrategy$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$tmpAdObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iput v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->label:I

    invoke-interface {p1, v1, p0}, Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    goto :goto_55

    .line 302
    :cond_32
    :goto_32
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    new-instance v4, Ljava/lang/Error;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    check-cast p1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/unity3d/ads/adplayer/AdPlayer;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_56

    :goto_55
    return-object v0

    .line 303
    :cond_56
    :goto_56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass5 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x140
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $webviewConfiguration:Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Lcom/unity3d/ads/core/data/model/WebViewConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->$webviewConfiguration:Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

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
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->$webviewConfiguration:Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 320
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getCacheWebViewAssets$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->$webviewConfiguration:Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;->label:I

    invoke-interface {p1, v1, v2, p0}, Lcom/unity3d/ads/core/domain/CacheWebViewAssets;->invoke(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass6 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$6)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n1#2:380\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$6"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x14c,
        0x14d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $t:Ljava/util/concurrent/CancellationException;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            ">;",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Ljava/util/concurrent/CancellationException;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$t:Ljava/util/concurrent/CancellationException;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$t:Ljava/util/concurrent/CancellationException;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 331
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject;

    if-eqz p1, :cond_38

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getPreShowStrategy$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    move-result-object v1

    iput v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->label:I

    invoke-interface {v1, p1, p0}, Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    goto :goto_50

    .line 333
    :cond_38
    :goto_38
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$t:Ljava/util/concurrent/CancellationException;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/unity3d/ads/adplayer/AdPlayer;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$6;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    :goto_50
    return-object v0

    .line 334
    :cond_51
    :goto_51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass7 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$7)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n1#2:380\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$7"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x152,
        0x153
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field final synthetic $t:Ljava/lang/Throwable;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            ">;",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Ljava/lang/Throwable;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$t:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$t:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 337
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 338
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$preShowAdObject:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject;

    if-eqz p1, :cond_38

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$getPreShowStrategy$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;

    move-result-object v1

    iput v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->label:I

    invoke-interface {v1, p1, p0}, Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    goto :goto_50

    .line 339
    :cond_38
    :goto_38
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$t:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$response:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->$adPlayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/unity3d/ads/adplayer/AdPlayer;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$7;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$cleanup(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    :goto_50
    return-object v0

    .line 340
    :cond_51
    :goto_51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.C40261 (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$loadUrl$1)
.class final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidHandleGatewayAdResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->loadUrl(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse"
    f = "AndroidHandleGatewayAdResponse.kt"
    l = {
        0x15b
    }
    m = "loadUrl"
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$loadUrl$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->access$loadUrl(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
