###### Class io.bidmachine.BidMachineTrackingObject (io.bidmachine.BidMachineTrackingObject)
.class public final Lio/bidmachine/BidMachineTrackingObject;
.super Lio/bidmachine/tracking/SessionTrackingObject;
.source "SourceFile"


# instance fields
.field private adResponse:Lio/bidmachine/AdResponse;

.field private final cacheParamsCollector:Lio/bidmachine/AdResponseCacheParamsCollector;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 1
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->p()Lio/bidmachine/tracking/SessionTracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/tracking/SessionTrackingObject;-><init>(Lio/bidmachine/tracking/SessionTracker;)V

    .line 2
    new-instance v1, Lio/bidmachine/AdResponseCacheParamsCollector;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lio/bidmachine/BidMachineTrackingObject;->cacheParamsCollector:Lio/bidmachine/AdResponseCacheParamsCollector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 12

    const-string v0, "trackingKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->p()Lio/bidmachine/tracking/SessionTracker;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/bidmachine/tracking/SessionTrackingObject;-><init>(Ljava/lang/Object;Lio/bidmachine/tracking/SessionTracker;)V

    .line 4
    new-instance v1, Lio/bidmachine/AdResponseCacheParamsCollector;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/AdResponseCacheParamsCollector;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/List;Ljava/util/List;Lio/bidmachine/internal/i;Lio/bidmachine/internal/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lio/bidmachine/BidMachineTrackingObject;->cacheParamsCollector:Lio/bidmachine/AdResponseCacheParamsCollector;

    return-void
.end method

.method public static final synthetic access$eventFinish(Lio/bidmachine/BidMachineTrackingObject;Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private final eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Z",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdResponse;",
            "Lio/bidmachine/utils/BMError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lio/bidmachine/tracking/EventData;

    invoke-direct {v0}, Lio/bidmachine/tracking/EventData;-><init>()V

    .line 8
    invoke-virtual {v0, p2}, Lio/bidmachine/tracking/EventData;->setIsBillable(Z)Lio/bidmachine/tracking/EventData;

    move-result-object p2

    if-eqz p4, :cond_4d

    .line 10
    invoke-virtual {p4}, Lio/bidmachine/AdResponse;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    .line 11
    invoke-virtual {p4}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/bidmachine/tracking/EventData;->setPrice(Ljava/lang/Double;)Lio/bidmachine/tracking/EventData;

    .line 12
    invoke-virtual {p4}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 14
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->getCustomParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_37

    .line 16
    :cond_34
    invoke-virtual {p2, v0}, Lio/bidmachine/tracking/EventData;->addCustomParams(Ljava/util/Map;)Lio/bidmachine/tracking/EventData;

    .line 19
    :cond_37
    :goto_37
    invoke-virtual {p4}, Lio/bidmachine/AdResponse;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p4

    invoke-interface {p4}, Lio/bidmachine/models/AuctionResult;->getDeal()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_4d

    .line 20
    invoke-static {p4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_4d

    .line 21
    :cond_48
    const-string v0, "deal_id"

    invoke-virtual {p2, v0, p4}, Lio/bidmachine/tracking/EventData;->addCustomParam(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/tracking/EventData;

    :cond_4d
    :goto_4d
    if-eqz p6, :cond_59

    .line 24
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_56

    goto :goto_59

    .line 25
    :cond_56
    invoke-virtual {p2, p6}, Lio/bidmachine/tracking/EventData;->addCustomParams(Ljava/util/Map;)Lio/bidmachine/tracking/EventData;

    :cond_59
    :goto_59
    if-eqz p7, :cond_65

    .line 27
    invoke-interface {p7}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_62

    goto :goto_65

    .line 28
    :cond_62
    invoke-virtual {p2, p7}, Lio/bidmachine/tracking/EventData;->addCustomParams(Ljava/util/Map;)Lio/bidmachine/tracking/EventData;

    .line 30
    :cond_65
    :goto_65
    invoke-virtual {p0, p1, p3, p2, p5}, Lio/bidmachine/tracking/SessionTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static synthetic eventFinish$default(Lio/bidmachine/BidMachineTrackingObject;Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;ILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;)V
    .registers 16

    .line 1
    const-string v0, "trackEventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v9}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish$default(Lio/bidmachine/BidMachineTrackingObject;Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Z",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdResponse;",
            "Lio/bidmachine/utils/BMError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trackEventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineTrackingObject;->cacheParamsCollector:Lio/bidmachine/AdResponseCacheParamsCollector;

    .line 5
    new-instance v1, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;-><init>(Lio/bidmachine/BidMachineTrackingObject;Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V

    .line 6
    invoke-virtual {v0, v3, v6, v1}, Lio/bidmachine/AdResponseCacheParamsCollector;->collect(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponseCacheParamsCollector$Callback;)V

    return-void
.end method

.method public bridge synthetic eventStart(Lio/bidmachine/TrackEventType;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    return-void
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineTrackingObject;->adResponse:Lio/bidmachine/AdResponse;

    if-nez v0, :cond_9

    invoke-super {p0}, Lio/bidmachine/tracking/TrackingObjectImpl;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0

    .line 2
    :cond_9
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineTrackingObject;->adResponse:Lio/bidmachine/AdResponse;

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lio/bidmachine/tracking/TrackingObjectImpl;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :cond_e
    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponse;->getTrackUrlListByEvent(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final setAdResponse(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineTrackingObject;->adResponse:Lio/bidmachine/AdResponse;

    return-void
.end method

###### Class io.bidmachine.BidMachineTrackingObject.AnonymousClass1 (io.bidmachine.BidMachineTrackingObject$eventFinish$1)
.class public final Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdResponseCacheParamsCollector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $adResponse:Lio/bidmachine/AdResponse;

.field final synthetic $adsType:Lio/bidmachine/AdsType;

.field final synthetic $bmError:Lio/bidmachine/utils/BMError;

.field final synthetic $customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isBillable:Z

.field final synthetic $trackEventType:Lio/bidmachine/TrackEventType;

.field final synthetic this$0:Lio/bidmachine/BidMachineTrackingObject;


# direct methods
.method public constructor <init>(Lio/bidmachine/BidMachineTrackingObject;Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/BidMachineTrackingObject;",
            "Lio/bidmachine/TrackEventType;",
            "Z",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdResponse;",
            "Lio/bidmachine/utils/BMError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->this$0:Lio/bidmachine/BidMachineTrackingObject;

    iput-object p2, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$trackEventType:Lio/bidmachine/TrackEventType;

    iput-boolean p3, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$isBillable:Z

    iput-object p4, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$adsType:Lio/bidmachine/AdsType;

    iput-object p5, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$adResponse:Lio/bidmachine/AdResponse;

    iput-object p6, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$bmError:Lio/bidmachine/utils/BMError;

    iput-object p7, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$customParams:Ljava/util/Map;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollected(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cacheParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->this$0:Lio/bidmachine/BidMachineTrackingObject;

    .line 2
    iget-object v2, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$trackEventType:Lio/bidmachine/TrackEventType;

    .line 3
    iget-boolean v3, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$isBillable:Z

    .line 4
    iget-object v4, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$adsType:Lio/bidmachine/AdsType;

    .line 5
    iget-object v5, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$adResponse:Lio/bidmachine/AdResponse;

    .line 6
    iget-object v6, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$bmError:Lio/bidmachine/utils/BMError;

    .line 7
    iget-object v7, p0, Lio/bidmachine/BidMachineTrackingObject$eventFinish$1;->$customParams:Ljava/util/Map;

    move-object v8, p1

    .line 8
    invoke-static/range {v1 .. v8}, Lio/bidmachine/BidMachineTrackingObject;->access$eventFinish(Lio/bidmachine/BidMachineTrackingObject;Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
