###### Class com.unity3d.ads.core.data.repository.AndroidAdRevenueRepository (com.unity3d.ads.core.data.repository.AndroidAdRevenueRepository)
.class public final Lcom/unity3d/ads/core/data/repository/AndroidAdRevenueRepository;
.super Ljava/lang/Object;
.source "AndroidAdRevenueRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;


# instance fields
.field private final adRevenueEvents:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 16
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x0

    .line 13
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidAdRevenueRepository;->adRevenueEvents:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method


# virtual methods
.method public getAdRevenueEvents()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidAdRevenueRepository;->adRevenueEvents:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method
