###### Class com.unity3d.ads.core.domain.AndroidSendAdViewerRequest (com.unity3d.ads.core.domain.AndroidSendAdViewerRequest)
.class public final Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;
.super Ljava/lang/Object;
.source "AndroidSendAdViewerRequest.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/SendAdViewerRequest;


# instance fields
.field private final defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

.field private final getAdViewerRequest:Lcom/unity3d/ads/core/domain/GetAdViewerRequest;

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdViewerRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)V
    .registers 6

    const-string v0, "defaultDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdViewerRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getRequestPolicy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->getAdViewerRequest:Lcom/unity3d/ads/core/domain/GetAdViewerRequest;

    .line 13
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 14
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    return-void
.end method

.method public static final synthetic access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    return-object p0
.end method

.method public static final synthetic access$getGetAdViewerRequest$p(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;)Lcom/unity3d/ads/core/domain/GetAdViewerRequest;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->getAdViewerRequest:Lcom/unity3d/ads/core/domain/GetAdViewerRequest;

    return-object p0
.end method

.method public static final synthetic access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->label:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_45

    return-object v1

    :cond_45
    :goto_45
    const-string p1, "withContext(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method

###### Class com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.AnonymousClass1 (com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$1)
.class final Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidSendAdViewerRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidSendAdViewerRequest"
    f = "AndroidSendAdViewerRequest.kt"
    l = {
        0x14
    }
    m = "invoke"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.AnonymousClass2 (com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2)
.class final Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidSendAdViewerRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2"
    f = "AndroidSendAdViewerRequest.kt"
    l = {
        0x15,
        0x17
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $payload:Lcom/google/protobuf/ByteString;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->$payload:Lcom/google/protobuf/ByteString;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->$payload:Lcom/google/protobuf/ByteString;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->label:I

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

    goto :goto_34

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->access$getGetAdViewerRequest$p(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;)Lcom/unity3d/ads/core/domain/GetAdViewerRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->$payload:Lcom/google/protobuf/ByteString;

    iput v3, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->label:I

    invoke-interface {p1, v1, v4, p0}, Lcom/unity3d/ads/core/domain/GetAdViewerRequest;->invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    goto :goto_55

    .line 20
    :cond_34
    :goto_34
    move-object v5, p1

    check-cast v5, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 22
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v6

    .line 23
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v3

    .line 26
    sget-object v7, Lcom/unity3d/ads/core/data/model/OperationType;->AD_VIEWER_REQUEST:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 23
    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidSendAdViewerRequest$invoke$2;->label:I

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v10}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_56

    :goto_55
    return-object v0

    .line 20
    :cond_56
    :goto_56
    check-cast p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 28
    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object p1

    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdViewerResponse()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object p1

    return-object p1
.end method
