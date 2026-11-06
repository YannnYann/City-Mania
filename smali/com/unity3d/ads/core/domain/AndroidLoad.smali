###### Class com.unity3d.ads.core.domain.AndroidLoad (com.unity3d.ads.core.domain.AndroidLoad)
.class public final Lcom/unity3d/ads/core/domain/AndroidLoad;
.super Ljava/lang/Object;
.source "AndroidLoad.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/Load;


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

.field private final getAdPlayerConfigRequest:Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

.field private final getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

.field private final handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

.field private final validateExtrasSize:Lcom/unity3d/ads/core/domain/ValidateExtrasSize;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/ValidateExtrasSize;)V
    .registers 12

    const-string v0, "defaultDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdPlayerConfigRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getRequestPolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleGatewayAdResponse"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayClient"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validateExtrasSize"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 54
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

    .line 55
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdPlayerConfigRequest:Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

    .line 56
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 57
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    .line 58
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 59
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 60
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 61
    iput-object p9, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 62
    iput-object p10, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->validateExtrasSize:Lcom/unity3d/ads/core/domain/ValidateExtrasSize;

    return-void
.end method

.method public static final synthetic access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/AdRepository;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-object p0
.end method

.method public static final synthetic access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    return-object p0
.end method

.method public static final synthetic access$getGetAdPlayerConfigRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdPlayerConfigRequest:Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

    return-object p0
.end method

.method public static final synthetic access$getGetAdRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

    return-object p0
.end method

.method public static final synthetic access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object p0
.end method

.method public static final synthetic access$getHandleGatewayAdResponse$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object p0
.end method

.method public static final synthetic access$getTmpAdObject(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 6

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/AndroidLoad;->getTmpAdObject(Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getValidateExtrasSize$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/ValidateExtrasSize;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->validateExtrasSize:Lcom/unity3d/ads/core/domain/ValidateExtrasSize;

    return-object p0
.end method

.method public static final synthetic access$handleGatewayException(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayException(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$incrementLoadRequestAdmCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->incrementLoadRequestAdmCount(Z)V

    return-void
.end method

.method public static final synthetic access$incrementLoadRequestCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->incrementLoadRequestCount(Z)V

    return-void
.end method

.method public static final synthetic access$isCachePhaseFailure(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/unity3d/ads/core/data/model/LoadResult$Failure;)Z
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->isCachePhaseFailure(Lcom/unity3d/ads/core/data/model/LoadResult$Failure;)Z

    move-result p0

    return p0
.end method

.method private final getTmpAdObject(Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 12

    .line 255
    sget-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;->Companion:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;->getTmpAdObjectForEventSending(Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLcom/unity3d/ads/UnityAdsLoadOptions;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    return-object p1
.end method

.method private final handleGatewayException(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    .registers 11

    .line 204
    instance-of v0, p1, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    if-eqz v0, :cond_8

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    :cond_6
    :goto_6
    move-object v3, v1

    goto :goto_1b

    .line 205
    :cond_8
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    if-eqz v1, :cond_18

    move-object v1, p1

    check-cast v1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_6

    .line 206
    :cond_18
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    goto :goto_6

    :goto_1b
    if-eqz v0, :cond_21

    .line 209
    const-string v1, "Unity Ads SDK ad load failed: Request timed out. Check your network connection and try again later.\n"

    :cond_1f
    :goto_1f
    move-object v4, v1

    goto :goto_42

    .line 210
    :cond_21
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    if-eqz v1, :cond_3b

    move-object v1, p1

    check-cast v1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-static {v1}, Lcom/unity3d/ads/UnityAdsErrorKt;->getLoadErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    :cond_34
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-static {v1}, Lcom/unity3d/ads/UnityAdsErrorKt;->getLoadErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    .line 211
    :cond_3b
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-static {v1}, Lcom/unity3d/ads/UnityAdsErrorKt;->getLoadErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :goto_42
    if-eqz v0, :cond_48

    .line 214
    const-string v0, "timeout"

    :goto_46
    move-object v6, v0

    goto :goto_4b

    .line 215
    :cond_48
    const-string v0, "gateway"

    goto :goto_46

    .line 217
    :goto_4b
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 219
    instance-of v0, p1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    if-eqz v0, :cond_5c

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    :goto_5a
    move-object v8, v0

    goto :goto_5e

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5a

    .line 202
    :goto_5e
    new-instance v2, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    return-object v2
.end method

.method private final incrementLoadRequestAdmCount(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 242
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementBannerLoadRequestAdmCount()V

    return-void

    .line 244
    :cond_8
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementLoadRequestAdmCount()V

    return-void
.end method

.method private final incrementLoadRequestCount(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 234
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementBannerLoadRequestCount()V

    return-void

    .line 236
    :cond_8
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementLoadRequestCount()V

    return-void
.end method

.method private final isCachePhaseFailure(Lcom/unity3d/ads/core/data/model/LoadResult$Failure;)Z
    .registers 4

    .line 224
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x43723f41

    if-eq v0, v1, :cond_2a

    const v1, -0x38caecd9

    if-eq v0, v1, :cond_21

    const v1, -0x2a6ba80b

    if-eq v0, v1, :cond_18

    goto :goto_32

    :cond_18
    const-string v0, "adviewer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_32

    :cond_21
    const-string v0, "invalid_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_34

    :cond_2a
    const-string v0, "no_webview_entry_point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    :cond_32
    :goto_32
    const/4 p1, 0x0

    return p1

    :cond_34
    :goto_34
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;",
            "Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, p1

    move-object v6, p2

    move-object v5, p3

    move-object v4, p4

    move-object v2, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/core/domain/AndroidLoad;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object/from16 p1, p7

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidLoad.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidLoad$invoke$2)
.class final Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidLoad.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidLoad;->invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/unity3d/ads/core/data/model/LoadResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidLoad.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLoad.kt\ncom/unity3d/ads/core/domain/AndroidLoad$invoke$2\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AdResponseKt.kt\ngatewayprotocol/v1/AdResponseKtKt\n*L\n1#1,263:1\n95#2:264\n135#2,3:265\n95#2:269\n135#2,3:270\n1#3:268\n1#3:274\n10#4:273\n*S KotlinDebug\n*F\n+ 1 AndroidLoad.kt\ncom/unity3d/ads/core/domain/AndroidLoad$invoke$2\n*L\n99#1:264\n99#1:265,3\n121#1:269\n121#1:270,3\n147#1:274\n147#1:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidLoad$invoke$2"
    f = "AndroidLoad.kt"
    l = {
        0x61,
        0x65,
        0x77,
        0x7b,
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

.field final synthetic $loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $placement:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;


# direct methods
.method public constructor <init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/core/domain/AndroidLoad;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;",
            "Lcom/unity3d/ads/core/domain/AndroidLoad;",
            "Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$context:Landroid/content/Context;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/core/domain/AndroidLoad;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 44

    move-object/from16 v5, p0

    const/4 v8, 0x1

    const-string v9, "getAdData(...)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 72
    iget v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I

    const-string v11, "native_load_config_failure_time"

    const-string v12, "native_load_config_success_time"

    const/4 v13, 0x5

    const/4 v7, 0x4

    const/4 v1, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_195

    if-eq v0, v8, :cond_14c

    if-eq v0, v6, :cond_ff

    if-eq v0, v1, :cond_ac

    if-eq v0, v7, :cond_3f

    if-ne v0, v13, :cond_37

    iget-wide v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iget v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    iget-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/domain/AndroidLoad;

    :try_start_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_2b .. :try_end_2e} :catch_34

    move-wide v11, v1

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_66a

    :catch_34
    move-exception v0

    goto/16 :goto_6db

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-wide v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$1:J

    iget v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    iget-wide v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iget v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Context;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/protobuf/ByteString;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/unity3d/ads/core/domain/AndroidLoad;

    :try_start_77
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_92

    move-object/from16 v0, p1

    move-object/from16 v29, v11

    move-object/from16 v15, v16

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move-object/from16 v11, v23

    move-object/from16 v23, v9

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move-object/from16 v9, v21

    move-object/from16 v21, v19

    goto/16 :goto_48b

    :catchall_92
    move-exception v0

    move-wide v13, v6

    move-object/from16 v29, v11

    move-object/from16 v15, v16

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move v11, v3

    move v3, v4

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move-object/from16 v4, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v19

    goto/16 :goto_4c6

    :cond_ac
    iget v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    iget-wide v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iget v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iget-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$8:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    check-cast v6, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v14, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    iget-object v14, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    check-cast v14, Landroid/content/Context;

    iget-object v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    check-cast v13, Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v7, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    check-cast v15, Lcom/google/protobuf/ByteString;

    move/from16 v20, v8

    iget-object v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v8, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    move/from16 v21, v0

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/unity3d/ads/core/domain/AndroidLoad;

    :try_start_dc
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_df
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_dc .. :try_end_df} :catch_fa

    move-object v0, v15

    move-object v15, v4

    move-object v4, v0

    move-object/from16 v0, p1

    move-object/from16 v23, v9

    move-object/from16 v29, v11

    move/from16 v11, v21

    move-object/from16 v9, v22

    move-object/from16 v22, v12

    move-object v12, v6

    move-object v6, v8

    move v8, v3

    move-object v3, v7

    move-wide/from16 v40, v1

    move-object v2, v13

    move-object v1, v14

    move-wide/from16 v13, v40

    goto/16 :goto_41c

    :catch_fa
    move-exception v0

    move-object/from16 v4, v22

    goto/16 :goto_6db

    :cond_ff
    move/from16 v20, v8

    iget-wide v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$1:J

    iget v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    iget-wide v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iget v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/content/Context;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/protobuf/ByteString;

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/unity3d/ads/core/domain/AndroidLoad;

    :try_start_12e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_139

    move-object/from16 v0, p1

    move-object/from16 v29, v11

    move-object/from16 v22, v12

    goto/16 :goto_2e6

    :catchall_139
    move-exception v0

    move-object/from16 v29, v11

    move-object/from16 v22, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v18

    move-object v12, v9

    move-object/from16 v18, v14

    move-wide v13, v6

    move-object v9, v8

    move v8, v4

    :goto_148
    move-object/from16 v4, v21

    goto/16 :goto_316

    :cond_14c
    move/from16 v20, v8

    iget v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    iget-wide v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iget v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iget-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v7, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/google/protobuf/ByteString;

    iget-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/unity3d/ads/core/domain/AndroidLoad;

    :try_start_174
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_177
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_174 .. :try_end_177} :catch_191

    move-object/from16 v29, v11

    move-object/from16 v22, v12

    move-object v6, v14

    move v11, v0

    move-object v12, v7

    move-object/from16 v0, p1

    move-object/from16 v40, v8

    move v8, v3

    move-object v3, v10

    move/from16 v10, v20

    move-object/from16 v41, v9

    move-object v9, v4

    move-object v4, v13

    move-wide v13, v1

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    goto/16 :goto_277

    :catch_191
    move-exception v0

    :goto_192
    move-object v4, v15

    goto/16 :goto_6db

    :cond_195
    move/from16 v20, v8

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 73
    iget-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    if-eqz v2, :cond_1a5

    move/from16 v7, v20

    goto :goto_1a6

    :cond_1a5
    const/4 v7, 0x0

    .line 74
    :goto_1a6
    sget-object v2, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v2}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v13

    .line 76
    iget-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    iget-object v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    iget-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    iget-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    move-object/from16 v23, v3

    iget-object v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    iget-object v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$context:Landroid/content/Context;

    .line 78
    :try_start_1bc
    invoke-static {v4}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->isSdkInitialized()Z

    move-result v21
    :try_end_1c4
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_1bc .. :try_end_1c4} :catch_6d6

    if-nez v21, :cond_1e4

    .line 79
    :try_start_1c6
    new-instance v28, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 80
    sget-object v29, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 81
    const-string v30, "Unity Ads SDK ad load failed: The Unity Ads SDK is not initialized. Initialize the SDK before loading ads."

    .line 82
    const-string v32, "not_initialized"

    const/16 v35, 0x34

    const/16 v36, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 79
    invoke-direct/range {v28 .. v36}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1db
    move-object/from16 v0, v28

    goto/16 :goto_6e1

    :catch_1df
    move-exception v0

    :goto_1e0
    move v3, v7

    :goto_1e1
    move-wide v1, v13

    goto/16 :goto_6db

    :cond_1e4
    if-eqz v7, :cond_1eb

    .line 86
    sget-object v21, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_BANNER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;
    :try_end_1e8
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_1c6 .. :try_end_1e8} :catch_1df

    :goto_1e8
    move-object/from16 v25, v21

    goto :goto_1ee

    :cond_1eb
    :try_start_1eb
    sget-object v21, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_FULLSCREEN:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    goto :goto_1e8

    .line 87
    :goto_1ee
    invoke-virtual {v8}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v28
    :try_end_1f6
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_1eb .. :try_end_1f6} :catch_6d6

    move-object/from16 v29, v11

    xor-int/lit8 v11, v28, 0x1

    xor-int/lit8 v24, v28, 0x1

    move-object/from16 v22, v2

    move-object/from16 v21, v4

    move-object/from16 v26, v15

    .line 88
    :try_start_202
    invoke-static/range {v21 .. v26}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getTmpAdObject(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v15
    :try_end_206
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_202 .. :try_end_206} :catch_6d2

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object/from16 v12, v26

    move v3, v1

    move-object/from16 v1, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v25

    .line 90
    :try_start_217
    iget-object v3, v12, Lcom/unity3d/ads/UnityAdsLoadOptions;->loadConfiguration:Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;
    :try_end_219
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_217 .. :try_end_219} :catch_6ce

    if-eqz v3, :cond_234

    move-object/from16 v25, v3

    .line 91
    :try_start_21d
    invoke-static {v2}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getValidateExtrasSize$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/ValidateExtrasSize;

    move-result-object v3

    move-object/from16 v26, v8

    invoke-virtual/range {v25 .. v25}, Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;->getExtras()Ljava/util/Map;

    move-result-object v8

    move-object/from16 v25, v10

    const-string v10, "load"

    invoke-virtual {v3, v8, v10, v15}, Lcom/unity3d/ads/core/domain/ValidateExtrasSize;->invoke(Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 90
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_230
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_21d .. :try_end_230} :catch_231

    goto :goto_238

    :catch_231
    move-exception v0

    move-object v4, v2

    goto :goto_1e0

    :cond_234
    move-object/from16 v26, v8

    move-object/from16 v25, v10

    :goto_238
    if-eqz v28, :cond_3bc

    .line 96
    :try_start_23a
    invoke-static {v2, v7}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$incrementLoadRequestCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V

    .line 97
    invoke-static {v2}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetAdRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdRequest;

    move-result-object v3

    iget-object v8, v12, Lcom/unity3d/ads/UnityAdsLoadOptions;->loadConfiguration:Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;

    iput-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v12, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    iput-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    iput-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    iput v7, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iput-wide v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iput v11, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    move/from16 v10, v20

    iput v10, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_25d
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_23a .. :try_end_25d} :catch_3b9

    move-object v0, v8

    move-object v8, v2

    move-object v2, v4

    move-object v4, v0

    move-object v0, v3

    move-object/from16 v3, v21

    :try_start_264
    invoke-interface/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/GetAdRequest;->invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_268
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_264 .. :try_end_268} :catch_3b4

    move-object/from16 v3, v25

    if-ne v0, v3, :cond_26f

    move-object v10, v3

    goto/16 :goto_667

    :cond_26f
    move-object v4, v1

    move-object v1, v6

    move-object v6, v2

    move-object v2, v12

    move-object v12, v9

    move-object v9, v15

    move-object v15, v8

    move v8, v7

    .line 72
    :goto_277
    :try_start_277
    check-cast v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 98
    invoke-static {v15}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object v7

    invoke-interface {v7}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v7

    .line 95
    sget-object v18, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    move/from16 v21, v11

    .line 135
    invoke-virtual/range {v18 .. v18}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v10
    :try_end_289
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_277 .. :try_end_289} :catch_3af

    .line 100
    :try_start_289
    sget-object v18, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v18, v0

    .line 101
    invoke-static {v15}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v0

    .line 104
    sget-object v23, Lcom/unity3d/ads/core/data/model/OperationType;->LOAD:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 101
    iput-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    iput-object v12, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;
    :try_end_2a1
    .catchall {:try_start_289 .. :try_end_2a1} :catchall_312

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :try_start_2a4
    iput-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    iput v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iput-wide v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J
    :try_end_2aa
    .catchall {:try_start_2a4 .. :try_end_2aa} :catchall_310

    move/from16 v1, v21

    :try_start_2ac
    iput v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    iput-wide v10, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$1:J

    move-object/from16 p1, v0

    const/4 v0, 0x2

    iput v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_2b5
    .catchall {:try_start_2ac .. :try_end_2b5} :catchall_304

    move/from16 v21, v1

    const/4 v1, 0x0

    move-object/from16 v25, v6

    const/4 v6, 0x1

    move-object/from16 v26, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move-object/from16 v18, v2

    move-object v2, v0

    move-object/from16 v0, p1

    move-wide/from16 v27, v10

    move-object/from16 v10, v26

    move-object v11, v4

    move-object/from16 v4, v23

    :try_start_2cd
    invoke-static/range {v0 .. v7}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d1
    .catchall {:try_start_2cd .. :try_end_2d1} :catchall_2fc

    if-ne v0, v10, :cond_2d5

    goto/16 :goto_667

    :cond_2d5
    move v4, v8

    move-object v8, v9

    move-object v9, v12

    move-wide v6, v13

    move-object/from16 v14, v18

    move/from16 v3, v21

    move-object/from16 v13, v24

    move-object/from16 v18, v25

    move-wide/from16 v1, v27

    move-object/from16 v21, v15

    move-object v15, v11

    .line 72
    :goto_2e6
    :try_start_2e6
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 100
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2ec
    .catchall {:try_start_2e6 .. :try_end_2ec} :catchall_2ef

    move-object/from16 v35, v8

    goto :goto_32d

    :catchall_2ef
    move-exception v0

    move-object v12, v9

    move-object/from16 v24, v13

    move-object/from16 v25, v18

    move-object v9, v8

    move-object/from16 v18, v14

    move v8, v4

    move-wide v13, v6

    goto/16 :goto_148

    :catchall_2fc
    move-exception v0

    :goto_2fd
    move-object v4, v15

    move/from16 v3, v21

    move-wide/from16 v1, v27

    move-object v15, v11

    goto :goto_316

    :catchall_304
    move-exception v0

    move/from16 v21, v1

    :goto_307
    move-object/from16 v18, v2

    move-object/from16 v25, v6

    move-wide/from16 v27, v10

    move-object v10, v3

    move-object v11, v4

    goto :goto_2fd

    :catchall_310
    move-exception v0

    goto :goto_307

    :catchall_312
    move-exception v0

    move-object/from16 v24, v1

    goto :goto_307

    :goto_316
    :try_start_316
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_320
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_316 .. :try_end_320} :catch_3ab

    move-object/from16 v21, v4

    move v4, v8

    move-object/from16 v35, v9

    move-object v9, v12

    move-wide v6, v13

    move-object/from16 v14, v18

    move-object/from16 v13, v24

    move-object/from16 v18, v25

    .line 106
    :goto_32d
    :try_start_32d
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 137
    new-instance v8, Lkotlin/time/TimedValue;

    invoke-static {v1, v2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v1

    const/4 v11, 0x0

    invoke-direct {v8, v0, v1, v2, v11}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    invoke-virtual {v8}, Lkotlin/time/TimedValue;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8}, Lkotlin/time/TimedValue;->component2-UwyO8pc()J

    move-result-wide v1

    .line 108
    invoke-static/range {v21 .. v21}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v30

    .line 109
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_356

    move-object/from16 v31, v22

    goto :goto_358

    :cond_356
    move-object/from16 v31, v29

    .line 110
    :goto_358
    sget-object v11, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v11}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v32

    .line 112
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_376

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/ErrorExtensionsKt;->getErrorTokenOrNull(Ljava/lang/Throwable;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_378

    :catch_36f
    move-exception v0

    move v3, v4

    move-wide v1, v6

    move-object/from16 v4, v21

    goto/16 :goto_6db

    :cond_376
    const/16 v37, 0x0

    :goto_378
    const/16 v38, 0x2c

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    .line 108
    invoke-static/range {v30 .. v39}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 114
    invoke-virtual {v8}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 115
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0
    :try_end_39c
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_32d .. :try_end_39c} :catch_36f

    move v1, v3

    move-object v3, v0

    move v0, v1

    move-object v1, v13

    move v13, v4

    move-object v4, v1

    move-object v1, v14

    move-object/from16 v14, v21

    move-wide v11, v6

    move-object v6, v9

    move-object/from16 v2, v18

    goto/16 :goto_635

    :catch_3ab
    move-exception v0

    move v3, v8

    goto/16 :goto_1e1

    :catch_3af
    move-exception v0

    move v3, v8

    move-wide v1, v13

    goto/16 :goto_192

    :catch_3b4
    move-exception v0

    :goto_3b5
    move v3, v7

    move-object v4, v8

    goto/16 :goto_1e1

    :catch_3b9
    move-exception v0

    move-object v8, v2

    goto :goto_3b5

    :cond_3bc
    move-object v8, v2

    move-object v2, v4

    move-object/from16 v3, v21

    move-object/from16 v10, v25

    .line 118
    :try_start_3c2
    invoke-static {v8, v7}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$incrementLoadRequestAdmCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V

    .line 119
    invoke-static {v8}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetAdPlayerConfigRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

    move-result-object v4

    move-object/from16 v21, v3

    invoke-virtual/range {v26 .. v26}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getConfigurationToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    move-object/from16 p1, v4

    const-string v4, "getConfigurationToken(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d6
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3c2 .. :try_end_3d6} :catch_6ca

    if-eqz v21, :cond_3dd

    :try_start_3d8
    sget-object v4, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    :try_end_3da
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3d8 .. :try_end_3da} :catch_3b4

    :goto_3da
    move-object/from16 v21, v3

    goto :goto_3df

    :cond_3dd
    const/4 v4, 0x0

    goto :goto_3da

    :goto_3df
    :try_start_3df
    iget-object v3, v12, Lcom/unity3d/ads/UnityAdsLoadOptions;->loadConfiguration:Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;

    iput-object v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;
    :try_end_3e3
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3df .. :try_end_3e3} :catch_6ca

    move-object/from16 v25, v8

    move-object/from16 v8, v26

    :try_start_3e7
    iput-object v8, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v12, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    iput-object v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    iput-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$8:Ljava/lang/Object;

    iput v7, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iput-wide v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iput v11, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    const/4 v0, 0x3

    iput v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_400
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3e7 .. :try_end_400} :catch_6c8

    move-object v0, v5

    move-object v5, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v6

    move-object v6, v0

    move-object/from16 v0, p1

    :try_start_409
    invoke-interface/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;->invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_40d
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_409 .. :try_end_40d} :catch_6c1

    move-object v5, v6

    if-ne v0, v10, :cond_412

    goto/16 :goto_667

    :cond_412
    move-object v3, v1

    move-object v4, v2

    move-object v6, v8

    move-object v2, v12

    move-object/from16 v1, v21

    move v8, v7

    move-object v12, v9

    move-object/from16 v9, v25

    .line 72
    :goto_41c
    :try_start_41c
    check-cast v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 120
    invoke-static {v9}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object v7

    invoke-interface {v7}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v7

    .line 95
    sget-object v21, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;
    :try_end_428
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_41c .. :try_end_428} :catch_6bd

    move-object/from16 p1, v7

    move/from16 v24, v8

    .line 135
    :try_start_42c
    invoke-virtual/range {v21 .. v21}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v7
    :try_end_430
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_42c .. :try_end_430} :catch_6b7

    .line 122
    :try_start_430
    sget-object v21, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v21, v0

    .line 123
    invoke-static {v9}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v0

    .line 126
    sget-object v25, Lcom/unity3d/ads/core/data/model/OperationType;->LOAD_HEADER_BIDDING:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 123
    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v6, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v4, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v3, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    iput-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    iput-object v12, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    iput-object v15, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;
    :try_end_44a
    .catchall {:try_start_430 .. :try_end_44a} :catchall_4c2

    move-object/from16 v26, v1

    const/4 v1, 0x0

    :try_start_44d
    iput-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$8:Ljava/lang/Object;
    :try_end_44f
    .catchall {:try_start_44d .. :try_end_44f} :catchall_4c0

    move/from16 v1, v24

    :try_start_451
    iput v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iput-wide v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    iput v11, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$1:I

    iput-wide v7, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$1:J

    move-object/from16 v24, v0

    const/4 v0, 0x4

    iput v0, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_45e
    .catchall {:try_start_451 .. :try_end_45e} :catchall_4b3

    move/from16 v18, v1

    const/4 v1, 0x0

    move-object/from16 v27, v6

    const/4 v6, 0x1

    move-wide/from16 v30, v7

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move-object/from16 v21, v2

    move-object v2, v0

    move-object v8, v4

    move-object/from16 v0, v24

    move-object/from16 v4, v25

    move/from16 v24, v18

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    :try_start_477
    invoke-static/range {v0 .. v7}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_47b
    .catchall {:try_start_477 .. :try_end_47b} :catchall_4a7

    if-ne v0, v10, :cond_47f

    goto/16 :goto_667

    :cond_47f
    move v3, v11

    move-wide v6, v13

    move/from16 v4, v24

    move-wide/from16 v1, v30

    move-object v11, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v26

    .line 72
    :goto_48b
    :try_start_48b
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 122
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_491
    .catchall {:try_start_48b .. :try_end_491} :catchall_4a0

    move-object v13, v11

    move v11, v3

    move v3, v4

    move-object v4, v13

    :goto_495
    move-object/from16 v35, v15

    move-object/from16 v13, v18

    move-object/from16 v14, v21

    move-object v15, v8

    move-object/from16 v18, v9

    move-object v9, v12

    goto :goto_4d2

    :catchall_4a0
    move-exception v0

    move-object v13, v11

    move v11, v3

    move v3, v4

    move-object v4, v13

    move-wide v13, v6

    goto :goto_4c6

    :catchall_4a7
    move-exception v0

    :goto_4a8
    move-object v4, v9

    move/from16 v3, v24

    move-wide/from16 v1, v30

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v26

    goto :goto_4c6

    :catchall_4b3
    move-exception v0

    move/from16 v24, v1

    :goto_4b6
    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move-object/from16 v27, v6

    move-wide/from16 v30, v7

    move-object v8, v4

    goto :goto_4a8

    :catchall_4c0
    move-exception v0

    goto :goto_4b6

    :catchall_4c2
    move-exception v0

    move-object/from16 v26, v1

    goto :goto_4b6

    :goto_4c6
    :try_start_4c6
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4d0
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_4c6 .. :try_end_4d0} :catch_6b4

    move-wide v6, v13

    goto :goto_495

    .line 128
    :goto_4d2
    :try_start_4d2
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 137
    new-instance v8, Lkotlin/time/TimedValue;

    invoke-static {v1, v2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v1

    const/4 v12, 0x0

    invoke-direct {v8, v0, v1, v2, v12}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    invoke-virtual {v8}, Lkotlin/time/TimedValue;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8}, Lkotlin/time/TimedValue;->component2-UwyO8pc()J

    move-result-wide v1

    .line 130
    invoke-static {v4}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v30

    .line 131
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4fb

    move-object/from16 v31, v22

    goto :goto_4fd

    :cond_4fb
    move-object/from16 v31, v29

    .line 132
    :goto_4fd
    sget-object v12, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v12}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v32

    .line 134
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_518

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/ErrorExtensionsKt;->getErrorTokenOrNull(Ljava/lang/Throwable;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    move-object/from16 v37, v1

    goto :goto_51a

    :catch_514
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_6db

    :cond_518
    const/16 v37, 0x0

    :goto_51a
    const/16 v38, 0x2c

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    .line 130
    invoke-static/range {v30 .. v39}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 136
    invoke-virtual {v8}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 137
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasError()Z

    move-result v1
    :try_end_53a
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_4d2 .. :try_end_53a} :catch_514

    const-string v2, "getError(...)"

    if-eqz v1, :cond_58a

    .line 138
    :try_start_53e
    new-instance v28, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 139
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v1

    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v1

    const-string v8, "getErrorCode(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v8

    invoke-virtual {v8}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v8

    if-eqz v8, :cond_561

    invoke-static {v8}, Lcom/unity3d/ads/UnityAdsErrorKt;->getLoadErrorMsg(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_55e

    goto :goto_561

    :cond_55e
    :goto_55e
    move-object/from16 v30, v8

    goto :goto_564

    :cond_561
    :goto_561
    const-string v8, "Internal error"

    goto :goto_55e

    .line 141
    :goto_564
    const-string v32, "gateway"

    .line 142
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v8

    invoke-virtual {v8}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v33

    .line 143
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/ErrorExtensionsKt;->getErrorTokenOrNull(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lcom/google/protobuf/ByteString;

    move-result-object v34

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v31, 0x0

    move-object/from16 v29, v1

    .line 138
    invoke-direct/range {v28 .. v36}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v13, v6

    move-object/from16 v0, v28

    move v7, v3

    goto/16 :goto_6e1

    .line 146
    :cond_58a
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    .line 10
    sget-object v1, Lgatewayprotocol/v1/AdResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->newBuilder()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    move-result-object v8

    const-string v12, "newBuilder(...)"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)Lgatewayprotocol/v1/AdResponseKt$Dsl;

    move-result-object v1

    .line 148
    invoke-virtual/range {v27 .. v27}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v8

    move-object/from16 v12, v23

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdData(Lcom/google/protobuf/ByteString;)V

    .line 149
    invoke-virtual/range {v27 .. v27}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getAdDataVersion()I

    move-result v8

    invoke-virtual {v1, v8}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataVersion(I)V

    .line 150
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v8

    move-object/from16 p1, v0

    const-string v0, "getTrackingToken(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setTrackingToken(Lcom/google/protobuf/ByteString;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v8, "getImpressionConfiguration(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setImpressionConfiguration(Lcom/google/protobuf/ByteString;)V

    .line 152
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getImpressionConfigurationVersion()I

    move-result v0

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setImpressionConfigurationVersion(I)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    const-string v8, "getWebviewConfiguration(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v8, "getAdDataRefreshToken(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    const-string v8, "getCampaignMetadata(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_609

    .line 157
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    .line 159
    :cond_609
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/protobuf/kotlin/ByteStringsKt;->isNotEmpty(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_627

    .line 160
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdData(Lcom/google/protobuf/ByteString;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdDataVersion()I

    move-result v0

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataVersion(I)V

    .line 10
    :cond_627
    invoke-virtual {v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_build()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0
    :try_end_62b
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_53e .. :try_end_62b} :catch_514

    move-object v1, v14

    move-object v14, v4

    move-object v4, v13

    move v13, v3

    move-object v3, v0

    move v0, v11

    move-object/from16 v2, v18

    move-wide v11, v6

    move-object v6, v9

    .line 166
    :goto_635
    :try_start_635
    invoke-static {v14}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getHandleGatewayAdResponse$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    move-result-object v7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_640

    const/4 v8, 0x1

    goto :goto_641

    :cond_640
    const/4 v8, 0x0

    :goto_641
    iput-object v14, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$4:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$5:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$6:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$7:Ljava/lang/Object;

    iput-object v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$8:Ljava/lang/Object;

    iput v13, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    iput-wide v11, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    const/4 v9, 0x5

    iput v9, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_65b
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_635 .. :try_end_65b} :catch_6b2

    move-object v0, v7

    move v7, v8

    const/4 v8, 0x0

    move-object v9, v5

    move-object v5, v15

    :try_start_660
    invoke-interface/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_664
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_660 .. :try_end_664} :catch_6ac

    move-object v5, v9

    if-ne v0, v10, :cond_668

    :goto_667
    return-object v10

    :cond_668
    move v3, v13

    move-object v4, v14

    .line 72
    :goto_66a
    :try_start_66a
    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;

    .line 168
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    if-eqz v1, :cond_69c

    .line 169
    invoke-static {v4}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/AdRepository;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/unity3d/ads/core/data/repository/AdRepository;->getAd(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v0

    if-nez v0, :cond_695

    .line 171
    new-instance v13, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    sget-object v14, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const-string v15, "[UnityAds] Ad not found"

    const-string v17, "ad_object_not_found"

    const/16 v20, 0x34

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v21}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v13

    goto :goto_6a0

    :catch_691
    move-exception v0

    move-wide v1, v11

    goto/16 :goto_6db

    .line 173
    :cond_695
    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    invoke-direct {v1, v0}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    move-object v0, v1

    goto :goto_6a0

    .line 176
    :cond_69c
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    if-eqz v1, :cond_6a6

    :goto_6a0
    move-wide v13, v11

    :goto_6a1
    move-object/from16 v28, v0

    move v7, v3

    goto/16 :goto_1db

    .line 167
    :cond_6a6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_6ac
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_66a .. :try_end_6ac} :catch_691

    :catch_6ac
    move-exception v0

    move-object v5, v9

    :goto_6ae
    move-wide v1, v11

    move v3, v13

    move-object v4, v14

    goto :goto_6db

    :catch_6b2
    move-exception v0

    goto :goto_6ae

    :catch_6b4
    move-exception v0

    goto/16 :goto_1e1

    :catch_6b7
    move-exception v0

    :goto_6b8
    move-object v4, v9

    move-wide v1, v13

    move/from16 v3, v24

    goto :goto_6db

    :catch_6bd
    move-exception v0

    move/from16 v24, v8

    goto :goto_6b8

    :catch_6c1
    move-exception v0

    move-object v5, v6

    :goto_6c3
    move v3, v7

    move-wide v1, v13

    move-object/from16 v4, v25

    goto :goto_6db

    :catch_6c8
    move-exception v0

    goto :goto_6c3

    :catch_6ca
    move-exception v0

    move-object/from16 v25, v8

    goto :goto_6c3

    :catch_6ce
    move-exception v0

    move-object/from16 v25, v2

    goto :goto_6c3

    :catch_6d2
    move-exception v0

    move-object/from16 v25, v21

    goto :goto_6c3

    :catch_6d6
    move-exception v0

    move-object/from16 v25, v4

    goto/16 :goto_1e0

    .line 179
    :goto_6db
    invoke-static {v4, v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$handleGatewayException(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    move-result-object v0

    move-wide v13, v1

    goto :goto_6a1

    :goto_6e1
    if-nez v7, :cond_72b

    .line 184
    iget-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v1

    invoke-static {v13, v14}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setLastLoadLatency(I)V

    .line 186
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    if-eqz v1, :cond_703

    .line 187
    iget-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementSuccessCount()V

    goto :goto_72b

    .line 189
    :cond_703
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    if-eqz v1, :cond_725

    .line 190
    iget-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementAllErrorsCount()V

    .line 191
    iget-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    invoke-static {v1, v2}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$isCachePhaseFailure(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/unity3d/ads/core/data/model/LoadResult$Failure;)Z

    move-result v1

    if-eqz v1, :cond_72b

    .line 192
    iget-object v1, v5, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementCacheTimeoutErrorsCount()V

    goto :goto_72b

    .line 185
    :cond_725
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_72b
    :goto_72b
    return-object v0
.end method
