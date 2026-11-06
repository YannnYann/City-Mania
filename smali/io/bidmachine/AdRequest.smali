###### Class io.bidmachine.AdRequest (io.bidmachine.AdRequest)
.class public abstract Lio/bidmachine/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdRequest$AdRequestListener;,
        Lio/bidmachine/AdRequest$e;,
        Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/AdRequest;",
        "AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field adRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;>;"
        }
    .end annotation
.end field

.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestParametersType;"
        }
    .end annotation
.end field

.field adResponse:Lio/bidmachine/AdResponse;

.field private final adResponseLoader:Lio/bidmachine/b;

.field final auctionUrlQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field internalAdRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$e;",
            ">;"
        }
    .end annotation
.end field

.field private final isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

.field private final tag:Lio/bidmachine/utils/Tag;

.field private final timeOutRunnable:Ljava/lang/Runnable;

.field private final trackingObject:Lio/bidmachine/BidMachineTrackingObject;

.field private unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$13ugmCFrRojrHCcekjPhJVRL2jw(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "notifyMediationLoss (winnerNetworkName - %s, winnerNetworkPrice - %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9Vdx_gOzhYh8jMDd7-CVeKt1kH4(Lio/bidmachine/k;Lio/bidmachine/protobuf/RequestExtension$Builder;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/k;->g()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    invoke-virtual {p1, p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$B-r4w0hpjGcwRLRF5htYUHKXvWM()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, "notifyMediationWin"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Fq8ICAwVJtkKaaHFPBVsVsHVW58(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/AdvertisingDataManager;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRAV_75YbljuR_-yco9-1-b4mWI()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$KuXquZ17gWiGHyKejEDIZ8nIJDw()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, "Request expired"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Ne8b-waOfMNHa8Fnnklb3WKryBI(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)Ljava/lang/String;
    .registers 2

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p0

    invoke-interface {p1}, Lio/bidmachine/utils/lazy/LazyValue;->get()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s - %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ok0xnVPjtmg9OpYSB233EIfeGIs()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, "destroy"

    return-object v0
.end method

.method public static synthetic $r8$lambda$RIA_E8Vt5fhLkBgA3-XG_pWZ4tg(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)Ljava/lang/String;
    .registers 2

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p0

    invoke-interface {p1}, Lio/bidmachine/utils/lazy/LazyValue;->get()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s - %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YeN8aCR4EhKMHYoCmySF_iT6fU4()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$iRpic9asZ2A1l5bGd-NSIOPc9Ag(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Request success - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n5sdNTcwFvw_VmeZKcJNEqMzPV0(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2
    const-string p1, "%s was removed from AdRequest: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vcR_mEEpBTvGCX_1ijH8IeFPsTg(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Request fail - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wwmDjlY0fXJwasolvT2zdPKrNbU(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/k;->g()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3
    invoke-static {p0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setIfv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_19
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdRequestParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/utils/Tag;

    const-string v1, "AdRequest"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lio/bidmachine/utils/Tag;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdRequest;->id:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v1, Lio/bidmachine/AdRequest$a;

    invoke-direct {v1, p0}, Lio/bidmachine/AdRequest$a;-><init>(Lio/bidmachine/AdRequest;)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    .line 46
    new-instance v1, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {v1, v0}, Lio/bidmachine/BidMachineTrackingObject;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 50
    iput-object p1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 51
    new-instance p1, Lio/bidmachine/b;

    invoke-direct {p1, v0}, Lio/bidmachine/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/AdRequest;->adResponseLoader:Lio/bidmachine/b;

    .line 52
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequestParameters;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/AdRequest;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/AdRequest;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->subscribeTimeOut()V

    return-void
.end method

.method public static synthetic access$500(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/AdRequest;)Lio/bidmachine/BidMachineTrackingObject;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestObject(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$800(Lio/bidmachine/AdRequest;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->processApiRequestCancel()V

    return-void
.end method

.method private canProcessApiRequestResult()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private canSendApiRequest()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private log(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method private logError(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;-><init>(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method private obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/bidmachine/NetworkAdUnitManager;

    invoke-direct {v0}, Lio/bidmachine/NetworkAdUnitManager;-><init>()V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    return-object v0
.end method

.method private processApiRequestCancel()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 8
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v3, v3}, Lio/bidmachine/tracking/SessionTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    invoke-virtual {v0, v1}, Lio/bidmachine/tracking/SessionTrackingObject;->clearEvent(Lio/bidmachine/TrackEventType;)V

    return-void
.end method

.method private processRequestObject(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->prepareUrls()V

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->build(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request;

    if-eqz v0, :cond_2a

    .line 4
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;

    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdsType;->getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->pollUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2a
    instance-of v0, p1, Lio/bidmachine/utils/BMError;

    if-eqz v0, :cond_31

    .line 10
    check-cast p1, Lio/bidmachine/utils/BMError;

    goto :goto_37

    .line 11
    :cond_31
    const-string p1, "Failed to create ad request"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 12
    :goto_37
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private setLoading(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private subscribeTimeOut()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->obtainTimeOutMs()I

    move-result v0

    if-lez v0, :cond_c

    .line 3
    iget-object v1, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    :cond_c
    return-void
.end method

.method private unsubscribeTimeOut()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addInternalListener(Lio/bidmachine/AdRequest$e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$e;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 4
    :cond_d
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 4
    :cond_d
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public build(Landroid/content/Context;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    :try_start_4
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3
    const-string v0, "SellerId"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0

    :catchall_19
    move-exception v0

    goto/16 :goto_21d

    .line 6
    :cond_1c
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Lio/bidmachine/k;->b(Landroid/content/Context;)Lio/bidmachine/internal/u;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lio/bidmachine/internal/u;->d()Lio/bidmachine/internal/w;

    move-result-object v9

    .line 9
    invoke-virtual {v4}, Lio/bidmachine/internal/u;->c()Lio/bidmachine/internal/v;

    move-result-object v10

    .line 11
    new-instance v5, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v6, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v9, v5, v5, v6}, Lio/bidmachine/internal/w;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 15
    iget-object v5, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 16
    invoke-virtual {v5}, Lio/bidmachine/AdRequestParameters;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v5

    .line 17
    invoke-virtual {v3}, Lio/bidmachine/k;->q()Lio/bidmachine/TargetingParams;

    move-result-object v6

    .line 18
    invoke-static {v5, v6}, Lio/bidmachine/models/RequestParams;->resolveParams(Lio/bidmachine/models/RequestParams;Lio/bidmachine/models/RequestParams;)Lio/bidmachine/models/RequestParams;

    move-result-object v5

    check-cast v5, Lio/bidmachine/TargetingParams;

    .line 24
    iget-object v6, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v6}, Lio/bidmachine/AdRequestParameters;->getPriceFloorParams()Lio/bidmachine/PriceFloorParams;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 26
    invoke-virtual {v6}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_60

    .line 27
    invoke-virtual {v6}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v6

    goto :goto_68

    .line 29
    :cond_60
    invoke-virtual {v3}, Lio/bidmachine/k;->j()Lio/bidmachine/PriceFloorParams;

    move-result-object v6

    invoke-virtual {v6}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v6

    .line 31
    :goto_68
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 32
    const-string v0, "PriceFloors"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0

    .line 35
    :cond_75
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v11

    move-object v7, v6

    .line 36
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v6

    .line 38
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v12

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    const/4 v13, 0x1

    .line 42
    invoke-virtual {v12, v13}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 44
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_9d
    .catchall {:try_start_4 .. :try_end_9d} :catchall_19

    const-string v14, "USD"

    if-eqz v8, :cond_d2

    :try_start_a1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v15

    .line 47
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v13

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 49
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    move-object v13, v3

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 51
    invoke-virtual {v15, v14}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 52
    invoke-virtual {v12, v15}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v13, v17

    goto :goto_99

    :cond_d2
    move/from16 v17, v13

    move-object v13, v3

    .line 62
    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v8

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    .line 63
    invoke-static/range {v2 .. v8}, Lio/bidmachine/RequestDataRetriever;->createContext(Landroid/content/Context;Lio/bidmachine/k;Lio/bidmachine/internal/u;Lio/bidmachine/TargetingParams;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;Lio/bidmachine/AdsType;)Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 72
    invoke-virtual {v3}, Lio/bidmachine/k;->u()Z

    move-result v5

    invoke-virtual {v11, v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 74
    invoke-virtual {v11, v14}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    const/4 v5, 0x2

    .line 76
    invoke-virtual {v11, v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    const/16 v5, 0x2710

    .line 78
    invoke-virtual {v11, v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 83
    invoke-virtual {v5, v7}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 85
    const-string v7, "BidMachine"

    invoke-virtual {v5, v7}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSdk(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 87
    const-string v7, "3.8.0"

    invoke-virtual {v5, v7}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSdkver(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 89
    invoke-static {}, Lio/bidmachine/core/Utils;->canUseCleartextTraffic()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 91
    iget-object v7, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 93
    invoke-virtual {v7}, Lio/bidmachine/AdRequestParameters;->getAdPlacementConfig()Lio/bidmachine/AdPlacementConfig;

    move-result-object v7

    const/4 v8, 0x0

    .line 94
    invoke-virtual {v1, v2, v8, v7}, Lio/bidmachine/AdRequest;->collectPlacementFormats(Landroid/content/Context;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_125
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_162

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/explorestack/protobuf/Message$Builder;

    .line 97
    instance-of v13, v8, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    if-eqz v13, :cond_13e

    .line 98
    check-cast v8, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 99
    invoke-virtual {v1, v8}, Lio/bidmachine/AdRequest;->onBeforeSetDisplayPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)V

    .line 101
    invoke-virtual {v5, v8}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    goto :goto_125

    .line 102
    :cond_13e
    instance-of v13, v8, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    if-eqz v13, :cond_14b

    .line 103
    check-cast v8, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 104
    invoke-virtual {v1, v8}, Lio/bidmachine/AdRequest;->onBeforeSetVideoPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)V

    .line 106
    invoke-virtual {v5, v8}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    goto :goto_125

    .line 108
    :cond_14b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported display type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_162
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v7

    .line 116
    invoke-static {v7}, Lio/bidmachine/internal/s;->a(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 118
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v8

    .line 119
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v13

    iget-object v14, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v13, v14}, Lio/bidmachine/c;->e(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;

    move-result-object v13

    .line 120
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_17b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/bidmachine/AdResponse;

    .line 122
    invoke-virtual {v14}, Lio/bidmachine/AdResponse;->createBidCacheExtensionValue()Lcom/explorestack/protobuf/Value;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    goto :goto_17b

    .line 124
    :cond_18f
    invoke-virtual {v8}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesCount()I

    move-result v13

    if-lez v13, :cond_1a6

    .line 125
    const-string v13, "bid_cache"

    .line 126
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v14

    .line 127
    invoke-virtual {v14, v8}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v8

    .line 128
    invoke-virtual {v8}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v8

    .line 129
    invoke-virtual {v7, v13, v8}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 134
    :cond_1a6
    invoke-virtual {v7}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result v8

    if-lez v8, :cond_1af

    .line 136
    invoke-virtual {v5, v7}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 139
    :cond_1af
    invoke-virtual {v1, v5}, Lio/bidmachine/AdRequest;->onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V

    .line 141
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 144
    invoke-virtual {v12}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 147
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 149
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lio/bidmachine/ExtraParamsManager;->getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    move-result-object v7

    if-eqz v7, :cond_1d9

    .line 152
    invoke-virtual {v7}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/explorestack/protobuf/Struct$Builder;->putAllFields(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 154
    :cond_1d9
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result v7

    if-lez v7, :cond_1e6

    .line 156
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 160
    :cond_1e6
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->newBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v5

    .line 162
    invoke-virtual {v5, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 164
    invoke-virtual {v3, v2}, Lio/bidmachine/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 165
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;

    invoke-direct {v0, v3, v5}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/RequestExtension$Builder;)V

    new-instance v2, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;

    invoke-direct {v2, v3, v6, v10}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    new-instance v3, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v9, v0, v2, v3}, Lio/bidmachine/internal/w;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {v4}, Lio/bidmachine/internal/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 182
    invoke-virtual {v5}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 184
    invoke-virtual {v11}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0
    :try_end_21c
    .catchall {:try_start_a1 .. :try_end_21c} :catchall_19

    return-object v0

    .line 186
    :goto_21d
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 187
    const-string v2, "Exception creating ad request"

    invoke-static {v2, v0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponseLoader:Lio/bidmachine/b;

    invoke-virtual {v0}, Lio/bidmachine/b;->a()V

    return-void
.end method

.method public checkBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/utils/BMError;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 2
    const-string p1, "BidPayload is default instance"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    .line 5
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    if-eq p1, v0, :cond_20

    .line 7
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequestParameters;->checkPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1e

    return-object p1

    :catchall_1e
    move-exception p1

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    return-object p1

    .line 10
    :goto_22
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 11
    const-string v0, "Exception validating BidPayload"

    invoke-static {v0, p1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public clearNetworkAdUnits()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    return-void
.end method

.method public collectNetworkConfig(Landroid/content/Context;Lio/bidmachine/AdsType;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v1}, Lio/bidmachine/AdRequestParameters;->getNetworkConfigList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    .line 5
    invoke-static {p2}, Lio/bidmachine/NetworkRegistry;->copyOrNullInitializedNetworkConfigs(Lio/bidmachine/AdsType;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/core/Utils;->putAll(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3b

    .line 8
    :cond_15
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->createInitNetworkConfigMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/NetworkConfig;

    .line 10
    invoke-static {p1, p2, v2, v0}, Lio/bidmachine/NetworkRegistry;->checkAndPutNetwork(Landroid/content/Context;Lio/bidmachine/AdsType;Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 12
    new-instance v4, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;

    invoke-direct {v4, v2, v3}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;-><init>(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lio/bidmachine/AdRequest;->logError(Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_20

    :cond_3b
    :goto_3b
    if-eqz p3, :cond_61

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 20
    :cond_45
    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_45

    .line 28
    :cond_61
    invoke-static {p2}, Lio/bidmachine/NetworkRegistry;->copyOrNullInitializedCoreNetworkConfigs(Lio/bidmachine/AdsType;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/core/Utils;->putAll(Ljava/util/Map;Ljava/util/Map;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public collectPlacementFormats(Landroid/content/Context;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    .line 4
    new-instance v1, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v1, p1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->obtainUnifiedRequestParams(Landroid/content/Context;)Lio/bidmachine/unified/UnifiedAdRequestParams;

    move-result-object v3

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/AdRequest;->collectNetworkConfig(Landroid/content/Context;Lio/bidmachine/AdsType;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/k;->i()I

    move-result v8

    move-object v2, p0

    move-object v7, p3

    .line 12
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/AdsType;->collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)V

    .line 21
    new-instance p1, Lio/bidmachine/NetworkAdUnitManager;

    invoke-direct {p1, v6}, Lio/bidmachine/NetworkAdUnitManager;-><init>(Ljava/util/List;)V

    iput-object p1, v2, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    return-object v5
.end method

.method public abstract createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;",
            "Lio/bidmachine/models/TargetingInfo;",
            "Lio/bidmachine/models/DataRestrictions;",
            ")TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end method

.method public destroy()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3f

    .line 5
    :cond_b
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 7
    iget-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v2, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;)V

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 17
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 18
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {v0}, Lio/bidmachine/tracking/SessionTrackingObject;->clear()V

    .line 19
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->notifyRequestDestroyed()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 23
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    if-eqz v1, :cond_3f

    .line 24
    invoke-virtual {v1, p0}, Lio/bidmachine/AdResponse;->detachAdRequest(Lio/bidmachine/AdRequest;)V

    .line 25
    iput-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    :cond_3f
    :goto_3f
    return-void
.end method

.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    return-object v0
.end method

.method public getAdResponse()Lio/bidmachine/AdResponse;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    return-object v0
.end method

.method public final getAdsType()Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    return-object v0
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdResponseExpired()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isAdResponseExpired()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/bidmachine/AdRequest;->isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyMediationLoss()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lio/bidmachine/AdRequest;->notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6
    :cond_7
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    if-eqz v0, :cond_16

    .line 11
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processMediationLoss()V

    .line 15
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 16
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    goto :goto_29

    .line 17
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 18
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 22
    :goto_29
    new-instance v1, Lio/bidmachine/tracking/EventData;

    invoke-direct {v1}, Lio/bidmachine/tracking/EventData;-><init>()V

    .line 23
    invoke-virtual {v1, p1}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lio/bidmachine/tracking/EventData;->setPrice(Ljava/lang/Double;)Lio/bidmachine/tracking/EventData;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    .line 26
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v2

    .line 27
    invoke-virtual {p2, v1, v2, p1, v0}, Lio/bidmachine/tracking/SessionTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public notifyMediationWin()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 9
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    :goto_17
    move-object v6, v0

    goto :goto_24

    .line 10
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 11
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    goto :goto_17

    .line 15
    :goto_24
    iget-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v2, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    const/4 v3, 0x0

    .line 18
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public notifyRequestDestroyed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$e;

    .line 3
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$e;->a(Lio/bidmachine/AdRequest;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public obtainTimeOutMs()I
    .registers 4

    .line 1
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->m()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 3
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v1}, Lio/bidmachine/AdRequestParameters;->getTimeOutMs()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1c

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1c
    return v0
.end method

.method public final obtainUnifiedRequestParams(Landroid/content/Context;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TUnifiedAdRequestParamsType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    if-nez v0, :cond_2d

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v1}, Lio/bidmachine/AdRequestParameters;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/k;->q()Lio/bidmachine/TargetingParams;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lio/bidmachine/models/RequestParams;->resolveParams(Lio/bidmachine/models/RequestParams;Lio/bidmachine/models/RequestParams;)Lio/bidmachine/models/RequestParams;

    move-result-object v1

    check-cast v1, Lio/bidmachine/TargetingParams;

    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/k;->b(Landroid/content/Context;)Lio/bidmachine/internal/u;

    move-result-object p1

    .line 8
    new-instance v0, Lio/bidmachine/TargetingInfoImpl;

    invoke-direct {v0, v1}, Lio/bidmachine/TargetingInfoImpl;-><init>(Lio/bidmachine/TargetingParams;)V

    .line 9
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/internal/u;->a()Lio/bidmachine/models/DataRestrictions;

    move-result-object p1

    .line 12
    invoke-virtual {p0, v1, v0, p1}, Lio/bidmachine/AdRequest;->createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 16
    :cond_2d
    iget-object p1, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    return-object p1
.end method

.method public onBeforeSetDisplayPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onBeforeSetVideoPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public pollUrl()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-static {}, Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_11
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public prepareUrls()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-static {}, Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public processApiRequestFail(Lio/bidmachine/utils/BMError;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lio/bidmachine/utils/BMError;Z)V

    return-void
.end method

.method public processApiRequestFail(Lio/bidmachine/utils/BMError;Z)V
    .registers 5

    .line 2
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_15

    .line 9
    sget-object p1, Lio/bidmachine/utils/BMError;->BMServerNoFill:Lio/bidmachine/utils/BMError;

    .line 11
    :cond_15
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;Z)V

    return-void
.end method

.method public processApiRequestLoadedFail(Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/utils/BMError;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$Builder<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget-object v0, Lio/bidmachine/utils/BMError;->BMServerNoFill:Lio/bidmachine/utils/BMError;

    if-eq p2, v0, :cond_19

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 7
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_19
    invoke-virtual {p0, p2}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processApiRequestSuccess(Lio/bidmachine/AdResponse;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p1, p0}, Lio/bidmachine/AdResponse;->detachAdRequest(Lio/bidmachine/AdRequest;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 8
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda12;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 10
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->setAdResponse(Lio/bidmachine/AdResponse;)V

    .line 11
    invoke-virtual {p1, p0}, Lio/bidmachine/AdResponse;->attachAdRequest(Lio/bidmachine/AdRequest;)V

    .line 12
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_41

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V

    goto :goto_2d

    .line 17
    :cond_41
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lio/bidmachine/k;->c()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V

    goto :goto_4d

    .line 23
    :cond_61
    iget-object v3, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v4, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    .line 26
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->checkBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    new-instance p1, Lio/bidmachine/utils/BMError;

    const-string v1, "BidPayload does not match with AdRequest"

    invoke-static {v1}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lio/bidmachine/utils/BMError;-><init>(Lio/bidmachine/utils/BMError;Lio/bidmachine/utils/BMError;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 7
    :cond_15
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 8
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v1

    if-eq v0, v1, :cond_34

    .line 9
    iget-object p1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 10
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    new-instance v2, Lio/bidmachine/AdRequest$c;

    invoke-direct {v2, p0}, Lio/bidmachine/AdRequest$c;-><init>(Lio/bidmachine/AdRequest;)V

    .line 12
    invoke-static {p1, v1, v0, v2}, Lio/bidmachine/B;->a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/B$a;)V

    return-void

    .line 28
    :cond_34
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {p1}, Lio/bidmachine/core/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 30
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->retrieveBody(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_48
    const-string p1, "BidPayload does not contain Response or URL"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processExpired()V
    .registers 9

    .line 1
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 7
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestExpired(Lio/bidmachine/AdRequest;)V

    goto :goto_16

    .line 10
    :cond_26
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 11
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestExpired(Lio/bidmachine/AdRequest;)V

    goto :goto_32

    .line 13
    :cond_42
    iget-object v2, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v3, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 15
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 16
    invoke-virtual/range {v2 .. v7}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$Builder<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canSendApiRequest()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-virtual {p1, p2}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponseLoader:Lio/bidmachine/b;

    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 6
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;

    move-result-object v2

    new-instance v3, Lio/bidmachine/AdRequest$d;

    invoke-direct {v3, p0, p2, p1}, Lio/bidmachine/AdRequest$d;-><init>(Lio/bidmachine/AdRequest;Ljava/lang/String;Lio/bidmachine/ApiRequest$Builder;)V

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lio/bidmachine/b;->a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/b$a;)V

    return-void
.end method

.method public processRequestFail(Lio/bidmachine/utils/BMError;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;Z)V

    return-void
.end method

.method public processRequestFail(Lio/bidmachine/utils/BMError;Z)V
    .registers 6

    .line 2
    new-instance v0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 4
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    if-eqz p2, :cond_10

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->clearNetworkAdUnits()V

    .line 8
    :cond_10
    iget-object p2, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz p2, :cond_28

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 10
    invoke-interface {v0, p0, p1}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    goto :goto_18

    .line 13
    :cond_28
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/k;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 14
    invoke-interface {v0, p0, p1}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    goto :goto_34

    .line 16
    :cond_44
    iget-object p2, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p2, v0, v1, v2, p1}, Lio/bidmachine/tracking/SessionTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public removeInternalListener(Lio/bidmachine/AdRequest$e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public request(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->s()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    const-string p1, "BidMachine not initialized"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 5
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6
    sget-object p1, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 9
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->verifyRequest()Lio/bidmachine/utils/BMError;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 11
    invoke-virtual {p0, v0}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 14
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_31

    return-void

    :cond_31
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 19
    invoke-static {}, Lio/bidmachine/a;->a()Lio/bidmachine/a;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdRequest$b;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/AdRequest$b;-><init>(Lio/bidmachine/AdRequest;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retrieveBody(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    sget-object v1, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;

    invoke-direct {v1}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public setAdResponse(Lio/bidmachine/AdResponse;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineTrackingObject;->setAdResponse(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public setAuctionUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lio/bidmachine/utils/Tag;

    invoke-virtual {v0}, Lio/bidmachine/utils/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyRequest()Lio/bidmachine/utils/BMError;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest.AdRequestBuilderImpl (io.bidmachine.AdRequest$AdRequestBuilderImpl)
.class public abstract Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdRequestBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/models/RequestBuilder;",
        "ReturnType:",
        "Lio/bidmachine/AdRequest<",
        "TReturnType;TAdRequestParametersType;*>;AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/models/RequestBuilder<",
        "TSelfType;TReturnType;>;"
    }
.end annotation


# instance fields
.field protected adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

.field bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

.field listener:Lio/bidmachine/AdRequest$AdRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TReturnType;>;"
        }
    .end annotation
.end field

.field networkConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field priceFloorParams:Lio/bidmachine/PriceFloorParams;

.field targetingParams:Lio/bidmachine/TargetingParams;

.field timeOutMs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    return-void
.end method

.method private fillAdRequestParameters(Lio/bidmachine/AdRequestParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setAdPlacementConfig(Lio/bidmachine/AdPlacementConfig;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setTargetingParams(Lio/bidmachine/TargetingParams;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->networkConfigList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setNetworkConfigList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->timeOutMs:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setTimeOutMs(Ljava/lang/Integer;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/AdRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturnType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-static {v0}, Lio/bidmachine/o;->a(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/AdRequest;

    move-result-object v0

    if-nez v0, :cond_10

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->createAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;

    move-result-object v0

    .line 6
    :cond_10
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillAdRequestParameters(Lio/bidmachine/AdRequestParameters;)V

    .line 7
    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->listener:Lio/bidmachine/AdRequest$AdRequestListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-object v0
.end method

.method public abstract build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;)TReturnType;"
        }
    .end annotation
.end method

.method public abstract createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation
.end method

.method public fillNetworkConfigs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->networkConfigList:Ljava/util/List;

    return-void

    .line 3
    :cond_a
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->networkConfigList:Ljava/util/List;

    return-void
.end method

.method public setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0

    :cond_6
    const/4 v0, 0x0

    .line 5
    :try_start_7
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 6
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->parseFrom([B)Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 10
    :goto_16
    iget-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    if-nez p1, :cond_20

    .line 11
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    :cond_20
    return-object p0
.end method

.method public setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/CustomParams;",
            ")TSelfType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->newBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;->withCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    return-object p0
.end method

.method public setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TReturnType;>;)TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->listener:Lio/bidmachine/AdRequest$AdRequestListener;

    return-object p0
.end method

.method public setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->timeOutMs:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 4
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_37

    .line 5
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    :goto_12
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_33

    .line 7
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/k;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lio/bidmachine/y;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2d} :catch_2e

    goto :goto_30

    :catch_2e
    move-exception p1

    goto :goto_35

    :cond_30
    :goto_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_33
    move-object v1, v0

    goto :goto_3b

    :goto_35
    move-object v1, v0

    goto :goto_38

    :catch_37
    move-exception p1

    .line 15
    :goto_38
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 18
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillNetworkConfigs(Ljava/util/List;)V

    return-object p0
.end method

.method public setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)TSelfType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillNetworkConfigs(Ljava/util/List;)V

    return-object p0
.end method

.method public setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->newBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;->withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    return-object p0
.end method

.method public setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/PriceFloorParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    return-object p0
.end method

.method public setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/SessionAdParams;",
            ")TSelfType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TargetingParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    return-object p0
.end method

###### Class io.bidmachine.AdRequest.AdRequestListener (io.bidmachine.AdRequest$AdRequestListener)
.class public interface abstract Lio/bidmachine/AdRequest$AdRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onRequestExpired(Lio/bidmachine/AdRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation
.end method

.method public abstract onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/models/AuctionResult;",
            ")V"
        }
    .end annotation
.end method

###### Class io.bidmachine.AdRequest.a (io.bidmachine.AdRequest$a)
.class public Lio/bidmachine/AdRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    invoke-static {v1}, Lio/bidmachine/AdRequest;->access$000(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequestParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/c;->f(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v1, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    invoke-virtual {v1, v0}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/AdResponse;)V

    return-void

    .line 6
    :cond_16
    iget-object v0, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    sget-object v1, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lio/bidmachine/utils/BMError;Z)V

    .line 7
    iget-object v0, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->cancel()V

    return-void
.end method

###### Class io.bidmachine.AdRequest.b (io.bidmachine.AdRequest$b)
.class public Lio/bidmachine/AdRequest$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->request(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/bidmachine/AdRequest;


# direct methods
.method public static synthetic $r8$lambda$yVqduMceq5ZZcvuIVhDVZxSbkN4()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    iput-object p2, p0, Lio/bidmachine/AdRequest$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, "Request start"

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$100(Lio/bidmachine/AdRequest;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    iget-object v1, v0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {v1, v0}, Lio/bidmachine/AdResponse;->detachAdRequest(Lio/bidmachine/AdRequest;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_62

    .line 8
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$200(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$300(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$400(Lio/bidmachine/AdRequest;)V

    .line 12
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    new-instance v1, Lio/bidmachine/AdRequest$b$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/AdRequest$b$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->access$500(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 13
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$600(Lio/bidmachine/AdRequest;)Lio/bidmachine/BidMachineTrackingObject;

    move-result-object v0

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    invoke-interface {v0, v1}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$000(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getBidPayload()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 16
    iget-object v1, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    invoke-virtual {v1, v0}, Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    return-void

    .line 19
    :cond_5a
    iget-object v0, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->access$700(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    :try_end_61
    .catchall {:try_start_0 .. :try_end_61} :catchall_19

    return-void

    .line 21
    :goto_62
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Lio/bidmachine/AdRequest$b;->b:Lio/bidmachine/AdRequest;

    const-string v2, "Exception loading ad request"

    invoke-static {v2, v0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.AdRequest$b$$ExternalSyntheticLambda0 (io.bidmachine.AdRequest$b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/AdRequest$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest$b;->$r8$lambda$yVqduMceq5ZZcvuIVhDVZxSbkN4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest.c (io.bidmachine.AdRequest$c)
.class public Lio/bidmachine/AdRequest$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$c;->a:Lio/bidmachine/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/AdResponse;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->a:Lio/bidmachine/AdRequest;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public a(Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->a:Lio/bidmachine/AdRequest;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$c;->a(Lio/bidmachine/AdResponse;)V

    return-void
.end method

###### Class io.bidmachine.AdRequest.d (io.bidmachine.AdRequest$d)
.class public Lio/bidmachine/AdRequest$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/bidmachine/ApiRequest$Builder;

.field public final synthetic c:Lio/bidmachine/AdRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdRequest;Ljava/lang/String;Lio/bidmachine/ApiRequest$Builder;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$d;->c:Lio/bidmachine/AdRequest;

    iput-object p2, p0, Lio/bidmachine/AdRequest$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/AdRequest$d;->b:Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 4
    iget-object v0, p0, Lio/bidmachine/AdRequest$d;->c:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$800(Lio/bidmachine/AdRequest;)V

    return-void
.end method

.method public a(Lio/bidmachine/AdResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$d;->c:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/AdRequest;->setAuctionUrl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest$d;->c:Lio/bidmachine/AdRequest;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public a(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdRequest$d;->c:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$d;->b:Lio/bidmachine/ApiRequest$Builder;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/AdRequest;->processApiRequestLoadedFail(Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.AdRequest.e (io.bidmachine.AdRequest$e)
.class public interface abstract Lio/bidmachine/AdRequest$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/AdRequest;)V
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda0 (io.bidmachine.AdRequest$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest;->$r8$lambda$B-r4w0hpjGcwRLRF5htYUHKXvWM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda1 (io.bidmachine.AdRequest$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->$r8$lambda$Fq8ICAwVJtkKaaHFPBVsVsHVW58(Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda10 (io.bidmachine.AdRequest$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest;->$r8$lambda$Ok0xnVPjtmg9OpYSB233EIfeGIs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda11 (io.bidmachine.AdRequest$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdRequest;

.field public final synthetic f$1:Lio/bidmachine/utils/lazy/LazyValue;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/AdRequest;

    iput-object p2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;->f$1:Lio/bidmachine/utils/lazy/LazyValue;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda11;->f$1:Lio/bidmachine/utils/lazy/LazyValue;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->$r8$lambda$RIA_E8Vt5fhLkBgA3-XG_pWZ4tg(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda12 (io.bidmachine.AdRequest$$ExternalSyntheticLambda12)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->$r8$lambda$iRpic9asZ2A1l5bGd-NSIOPc9Ag(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda13 (io.bidmachine.AdRequest$$ExternalSyntheticLambda13)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkConfig;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/NetworkConfig;

    iput-object p2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/NetworkConfig;

    iget-object v1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->$r8$lambda$n5sdNTcwFvw_VmeZKcJNEqMzPV0(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda2 (io.bidmachine.AdRequest$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest;->$r8$lambda$YeN8aCR4EhKMHYoCmySF_iT6fU4()V

    return-void
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda3 (io.bidmachine.AdRequest$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/k;

.field public final synthetic f$1:Lio/bidmachine/protobuf/RequestExtension$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/RequestExtension$Builder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/k;

    iput-object p2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/k;

    iget-object v1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/protobuf/RequestExtension$Builder;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->$r8$lambda$9Vdx_gOzhYh8jMDd7-CVeKt1kH4(Lio/bidmachine/k;Lio/bidmachine/protobuf/RequestExtension$Builder;)V

    return-void
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda4 (io.bidmachine.AdRequest$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/k;

.field public final synthetic f$1:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic f$2:Lio/bidmachine/internal/v;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/k;

    iput-object p2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/internal/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/k;

    iget-object v1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/internal/v;

    invoke-static {v0, v1, v2}, Lio/bidmachine/AdRequest;->$r8$lambda$wwmDjlY0fXJwasolvT2zdPKrNbU(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    return-void
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda5 (io.bidmachine.AdRequest$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest;->$r8$lambda$JRAV_75YbljuR_-yco9-1-b4mWI()V

    return-void
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda6 (io.bidmachine.AdRequest$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Double;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Double;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->$r8$lambda$13ugmCFrRojrHCcekjPhJVRL2jw(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda7 (io.bidmachine.AdRequest$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdRequest;

.field public final synthetic f$1:Lio/bidmachine/utils/lazy/LazyValue;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/AdRequest;

    iput-object p2, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;->f$1:Lio/bidmachine/utils/lazy/LazyValue;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda7;->f$1:Lio/bidmachine/utils/lazy/LazyValue;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->$r8$lambda$Ne8b-waOfMNHa8Fnnklb3WKryBI(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/lazy/LazyValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda8 (io.bidmachine.AdRequest$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/AdRequest;->$r8$lambda$KuXquZ17gWiGHyKejEDIZ8nIJDw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdRequest$$ExternalSyntheticLambda9 (io.bidmachine.AdRequest$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/AdRequest$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdRequest$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/utils/BMError;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->$r8$lambda$vcR_mEEpBTvGCX_1ijH8IeFPsTg(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
