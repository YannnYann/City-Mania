###### Class com.unity3d.ads.core.domain.events.LifecycleEventObserver (com.unity3d.ads.core.domain.events.LifecycleEventObserver)
.class public final Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;
.super Ljava/lang/Object;
.source "LifecycleEventObserver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLifecycleEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleEventObserver.kt\ncom/unity3d/ads/core/domain/events/LifecycleEventObserver\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,69:1\n214#2,5:70\n*S KotlinDebug\n*F\n+ 1 LifecycleEventObserver.kt\ncom/unity3d/ads/core/domain/events/LifecycleEventObserver\n*L\n35#1:70,5\n*E\n"
.end annotation


# instance fields
.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

.field private final getByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

.field private final getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

.field private final isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$GlGnQKlTmwTvptHC04fdHyIa-UY(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->invoke$lambda$1(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/log/Logger;)V
    .registers 10

    const-string v0, "getUniversalRequestForPayLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleDataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getRequestPolicy"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getByteStringId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 24
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 25
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    .line 26
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 27
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 28
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 29
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->getByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 30
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 32
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final synthetic access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    return-object p0
.end method

.method public static final synthetic access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    return-object p0
.end method

.method public static final synthetic access$getGetByteStringId$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetByteStringId;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->getByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    return-object p0
.end method

.method public static final synthetic access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object p0
.end method

.method public static final synthetic access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/log/Logger;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method private static final invoke$lambda$1(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final invoke()V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 215
    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 216
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 36
    :cond_1b
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;->getAppActive()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v1, 0x1

    .line 37
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->drop(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

###### Class com.unity3d.ads.core.domain.events.LifecycleEventObserver.AnonymousClass2 (com.unity3d.ads.core.domain.events.LifecycleEventObserver$invoke$2)
.class final Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LifecycleEventObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLifecycleEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleEventObserver.kt\ncom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2\n+ 2 LifecycleEventRequestKt.kt\ngatewayprotocol/v1/LifecycleEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,69:1\n10#2:70\n1#3:71\n1#3:73\n484#4:72\n*S KotlinDebug\n*F\n+ 1 LifecycleEventObserver.kt\ncom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2\n*L\n45#1:70\n45#1:71\n51#1:73\n51#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.events.LifecycleEventObserver$invoke$2"
    f = "LifecycleEventObserver.kt"
    l = {
        0x2e,
        0x36,
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

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
    new-instance v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->Z$0:Z

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 38
    iget v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    const-string v1, "newBuilder(...)"

    const/4 v2, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_44

    if-eq v0, v3, :cond_27

    if-eq v0, v9, :cond_21

    if-ne v0, v2, :cond_19

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_14 .. :try_end_17} :catch_f1

    goto/16 :goto_fc

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :try_start_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_24
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_21 .. :try_end_24} :catch_f1

    move-object v0, p1

    goto/16 :goto_ce

    :cond_27
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$4:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    iget-object v11, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    :try_start_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3b .. :try_end_3e} :catch_f1

    move-object v12, v11

    move-object v11, v7

    move-object v7, v6

    move-object v6, v4

    move-object v4, p1

    goto :goto_7d

    :cond_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->Z$0:Z

    if-eqz v0, :cond_4f

    .line 41
    :try_start_4b
    sget-object v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;->LIFECYCLE_EVENT_TYPE_FOREGROUND:Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    :goto_4d
    move-object v11, v0

    goto :goto_52

    .line 43
    :cond_4f
    sget-object v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;->LIFECYCLE_EVENT_TYPE_BACKGROUND:Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    goto :goto_4d

    .line 45
    :goto_52
    iget-object v7, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    .line 10
    sget-object v0, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->newBuilder()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;)Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;

    move-result-object v0

    .line 46
    invoke-static {v7}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object v4

    iput-object v11, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    invoke-interface {v4, p0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_79

    goto/16 :goto_f0

    :cond_79
    move-object v6, v0

    move-object v12, v11

    move-object v11, v7

    move-object v7, v6

    :goto_7d
    check-cast v4, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-virtual {v0, v4}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 47
    invoke-static {v11}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getDeviceInfoRepository$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 48
    invoke-virtual {v6, v12}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setLifecycleEventType(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;)V

    .line 49
    invoke-static {v11}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGetByteStringId$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetByteStringId;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetByteStringId;->invoke()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->setEventId(Lcom/google/protobuf/ByteString;)V

    .line 10
    invoke-virtual {v7}, Lgatewayprotocol/v1/LifecycleEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    move-result-object v0

    .line 51
    sget-object v3, Lgatewayprotocol/v1/UniversalRequestKt;->INSTANCE:Lgatewayprotocol/v1/UniversalRequestKt;

    .line 484
    sget-object v3, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setLifecycleEventRequest(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    .line 484
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    move-result-object v1

    iput-object v10, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v10, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$1:Ljava/lang/Object;

    iput-object v10, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$2:Ljava/lang/Object;

    iput-object v10, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$3:Ljava/lang/Object;

    iput-object v10, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->L$4:Ljava/lang/Object;

    iput v9, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    invoke-interface {v1, v0, p0}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_ce

    goto :goto_f0

    .line 38
    :cond_ce
    :goto_ce
    check-cast v0, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 55
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object v1

    .line 57
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v3}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    move-result-object v3

    .line 58
    sget-object v4, Lcom/unity3d/ads/core/data/model/OperationType;->LIFECYCLE_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 55
    iput v2, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->label:I

    move-object v2, v0

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v7}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ee
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_4b .. :try_end_ee} :catch_f1

    if-ne v0, v8, :cond_fc

    :goto_f0
    return-object v8

    .line 62
    :catch_f1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->access$getLogger$p(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v0

    const-string v1, "Failed to send lifecycle event, likely due to network issues. Event will be dropped."

    invoke-static {v0, v1, v10, v9, v10}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    :cond_fc
    :goto_fc
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.events.LifecycleEventObserver$$ExternalSyntheticLambda0 (com.unity3d.ads.core.domain.events.LifecycleEventObserver$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;->$r8$lambda$GlGnQKlTmwTvptHC04fdHyIa-UY(Lcom/unity3d/ads/core/domain/events/LifecycleEventObserver;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
