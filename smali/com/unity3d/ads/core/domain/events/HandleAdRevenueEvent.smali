###### Class com.unity3d.ads.core.domain.events.HandleAdRevenueEvent (com.unity3d.ads.core.domain.events.HandleAdRevenueEvent)
.class public final Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;
.super Ljava/lang/Object;
.source "HandleAdRevenueEvent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandleAdRevenueEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleAdRevenueEvent.kt\ncom/unity3d/ads/core/domain/events/HandleAdRevenueEvent\n+ 2 AdRevenueEventRequestKt.kt\ngatewayprotocol/v1/AdRevenueEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n10#2:42\n1#3:43\n*S KotlinDebug\n*F\n+ 1 HandleAdRevenueEvent.kt\ncom/unity3d/ads/core/domain/events/HandleAdRevenueEvent\n*L\n25#1:42\n25#1:43\n*E\n"
.end annotation


# instance fields
.field private final adRevenueRepository:Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

.field private final getAdRevenueEventData:Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;)V
    .registers 5

    const-string v0, "adRevenueRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdRevenueEventData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->adRevenueRepository:Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;

    .line 17
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 18
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->getAdRevenueEventData:Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdRevenueData;",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
            "Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;

    invoke-direct {v0, p0, p4}, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c3

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;

    iget-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$3:Ljava/lang/Object;

    check-cast p3, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;

    iget-object v5, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    iget-object v6, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p4

    move-object p4, p3

    move-object p3, v2

    move-object v2, v7

    goto :goto_82

    :cond_55
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    sget-object p4, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;->newBuilder()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;

    move-result-object v2

    const-string v5, "newBuilder(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;)Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;

    move-result-object p4

    .line 26
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$4:Ljava/lang/Object;

    iput-object p4, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    invoke-interface {v2, v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7e

    goto :goto_c2

    :cond_7e
    move-object v6, p1

    move-object v5, p2

    move-object p1, p4

    move-object p2, p1

    :goto_82
    check-cast v2, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 27
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-interface {p1, v4}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 28
    invoke-virtual {p2, v5}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    .line 29
    invoke-static {p3}, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEventKt;->access$toProto(Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->setAdRevenueOrigin(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueOrigin;)V

    .line 30
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->getAdRevenueEventData:Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;

    invoke-interface {p1, v6}, Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;->invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->setAdRevenueData(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    .line 10
    invoke-virtual {p4}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->adRevenueRepository:Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;

    invoke-interface {p2}, Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;->getAdRevenueEvents()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$4:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c3

    :goto_c2
    return-object v1

    .line 33
    :cond_c3
    :goto_c3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.events.HandleAdRevenueEvent.AnonymousClass1 (com.unity3d.ads.core.domain.events.HandleAdRevenueEvent$invoke$1)
.class final Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "HandleAdRevenueEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.events.HandleAdRevenueEvent"
    f = "HandleAdRevenueEvent.kt"
    l = {
        0x1a,
        0x20
    }
    m = "invoke"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;->invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
