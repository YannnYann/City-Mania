###### Class io.bidmachine.AdResponse (io.bidmachine.AdResponse)
.class public Lio/bidmachine/AdResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# static fields
.field private static final CLICK_BROWSER:Ljava/lang/String; = "clickbrowser"

.field private static final CLICK_X:Ljava/lang/String; = "click_x"

.field private static final CLICK_Y:Ljava/lang/String; = "click_y"

.field private static final DEF_EXPIRATION_TIME_SEC:J

.field private static final VIEWPORT_HEIGHT:Ljava/lang/String; = "viewport_height"

.field private static final VIEWPORT_WIDTH:Ljava/lang/String; = "viewport_width"


# instance fields
.field private final ad:Lcom/explorestack/protobuf/adcom/Ad;

.field private final adCacheControl:Lio/bidmachine/protobuf/AdCacheControl;

.field private volatile adObject:Lio/bidmachine/models/AdObject;

.field final adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;

.field private final auctionResult:Lio/bidmachine/models/AuctionResult;

.field private final bidId:Ljava/lang/String;

.field private final createTimeMs:J

.field private final eventConfiguration:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

.field private final expirationHandler:Lio/bidmachine/ExpirationHandler;

.field private final expirationTimeMs:J

.field final isCached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final isCridMonitoringEnabled:Z

.field private final isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field loadExpirationHandler:Lio/bidmachine/ExpirationHandler;

.field private final networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

.field final responseId:Ljava/lang/String;

.field private final seatBidExt:Lcom/explorestack/protobuf/Struct;

.field private volatile status:Lio/bidmachine/d;

.field final tag:Lio/bidmachine/utils/Tag;

.field final trackUrlsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final trackingObject:Lio/bidmachine/BidMachineTrackingObject;

.field final weakAdRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdRequest<",
            "***>;>;>;"
        }
    .end annotation
.end field

.field private final winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;


# direct methods
.method public static synthetic $r8$lambda$1xJcMBI_v4vGJkF6xy8tC8WLKgY(Lio/bidmachine/AdResponse;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onDestroy()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    return-void
.end method

.method public static synthetic $r8$lambda$1zzZ_rWiZS2xn01P00h2TJQKD-Y(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "destroy - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4DC74I9VK5QMl2t1L6-aYBLvfgQ(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "onLoadStart - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E6hw474R9X_A2yE2VKAo18iMTNc(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "release - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_MEjG6HrqBjLjBb2bJN1a-X3VYw(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "detachRequest - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uXAZ2DJU85aoqjkcIR0qYnPfZtA(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "notifyExpired - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v8MX_SQL3jKXCVBfr2LnpCaryxY(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "attachRequest - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xpS3XpoeB3Ox956S7szOIlHa4v4(Lio/bidmachine/AdResponse;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 3
    invoke-interface {p0}, Lio/bidmachine/models/AdObject;->hide()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p0

    .line 6
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1d

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/AdResponse;->DEF_EXPIRATION_TIME_SEC:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lio/bidmachine/TrackEventType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    .line 4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lio/bidmachine/AdResponse;->isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    .line 10
    sget-object v2, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    iput-object v2, v0, Lio/bidmachine/AdResponse;->status:Lio/bidmachine/d;

    .line 12
    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback;-><init>(Lio/bidmachine/AdResponse;)V

    iput-object v2, v0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    .line 23
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lio/bidmachine/AdResponse;->isCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v4, Lio/bidmachine/utils/Tag;

    const-string v5, "AdResponse"

    invoke-direct {v4, v5}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lio/bidmachine/AdResponse;->createTimeMs:J

    move-object/from16 v4, p1

    .line 36
    iput-object v4, v0, Lio/bidmachine/AdResponse;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 37
    iput-object v1, v0, Lio/bidmachine/AdResponse;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/AdResponse;->responseId:Ljava/lang/String;

    .line 39
    invoke-virtual/range {p4 .. p4}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/AdResponse;->seatBidExt:Lcom/explorestack/protobuf/Struct;

    .line 40
    invoke-virtual/range {p5 .. p5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/AdResponse;->bidId:Ljava/lang/String;

    move-object/from16 v10, p6

    .line 41
    iput-object v10, v0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    .line 42
    invoke-static {v10}, Lio/bidmachine/utils/ProtoUtils;->findFirstAdExtension(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;

    move-result-object v12

    .line 43
    new-instance v6, Lio/bidmachine/g;

    invoke-virtual {v4}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v7

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v6 .. v12}, Lio/bidmachine/g;-><init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/protobuf/AdExtension;)V

    iput-object v6, v0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 49
    invoke-virtual {v0, v12}, Lio/bidmachine/AdResponse;->findEventConfiguration(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/AdResponse;->eventConfiguration:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 50
    invoke-direct {v0, v12}, Lio/bidmachine/AdResponse;->findAdCacheControl(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/AdResponse;->adCacheControl:Lio/bidmachine/protobuf/AdCacheControl;

    .line 51
    invoke-virtual/range {p5 .. p5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v5

    int-to-long v13, v5

    .line 52
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v5

    int-to-long v7, v5

    sget-wide v17, Lio/bidmachine/AdResponse;->DEF_EXPIRATION_TIME_SEC:J

    move-wide v15, v7

    .line 53
    invoke-static/range {v13 .. v18}, Lio/bidmachine/core/Utils;->getOrDefault(JJJ)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iput-wide v7, v0, Lio/bidmachine/AdResponse;->expirationTimeMs:J

    .line 56
    new-instance v5, Lio/bidmachine/BidMachineTrackingObject;

    invoke-interface {v6}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lio/bidmachine/BidMachineTrackingObject;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 57
    invoke-virtual {v5, v0}, Lio/bidmachine/BidMachineTrackingObject;->setAdResponse(Lio/bidmachine/AdResponse;)V

    .line 59
    invoke-virtual {v4}, Lio/bidmachine/AdRequestParameters;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v4

    .line 60
    invoke-interface {v6}, Lio/bidmachine/models/AuctionResult;->getNetworkParams()Ljava/util/Map;

    move-result-object v5

    .line 61
    invoke-virtual {v1, v11, v4, v5}, Lio/bidmachine/NetworkAdUnitManager;->findOrAddWinnerNetworkAdUnit(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkAdUnit;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/AdResponse;->winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;

    .line 64
    new-instance v1, Lio/bidmachine/ExpirationHandler;

    invoke-direct {v1, v7, v8, v0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    iput-object v1, v0, Lio/bidmachine/AdResponse;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    if-eqz v12, :cond_c1

    .line 66
    invoke-virtual {v12}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    move-result v1

    goto :goto_c2

    :cond_c1
    move v1, v3

    :goto_c2
    if-lez v1, :cond_d0

    .line 69
    new-instance v4, Lio/bidmachine/ExpirationHandler;

    int-to-long v5, v1

    new-instance v1, Lio/bidmachine/internal/j;

    invoke-direct {v1, v2}, Lio/bidmachine/internal/j;-><init>(Lio/bidmachine/AdProcessCallback;)V

    invoke-direct {v4, v5, v6, v1}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    goto :goto_d1

    :cond_d0
    const/4 v4, 0x0

    .line 71
    :goto_d1
    iput-object v4, v0, Lio/bidmachine/AdResponse;->loadExpirationHandler:Lio/bidmachine/ExpirationHandler;

    if-eqz v12, :cond_dc

    .line 73
    invoke-virtual {v12}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_dc

    const/4 v3, 0x1

    :cond_dc
    iput-boolean v3, v0, Lio/bidmachine/AdResponse;->isCridMonitoringEnabled:Z

    move-object/from16 v9, p5

    .line 75
    invoke-direct {v0, v9}, Lio/bidmachine/AdResponse;->extractTrackUrls(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V

    .line 76
    invoke-direct {v0}, Lio/bidmachine/AdResponse;->subscribeExpireTracker()V

    return-void
.end method

.method private canBeUsedInFuture()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->wasShown()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->isExpired()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private extractTrackUrls(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/utils/ProtoUtils;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/bidmachine/utils/ProtoUtils;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    return-void
.end method

.method private findAdCacheControl(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdCacheControl;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object p1

    .line 2
    sget-object v1, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    if-eq p1, v1, :cond_d

    return-object p1

    :cond_d
    return-object v0
.end method

.method private subscribeExpireTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    return-void
.end method


# virtual methods
.method public attachAdRequest(Lio/bidmachine/AdRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateExpirationLeftMs()J
    .registers 7

    .line 1
    iget-wide v0, p0, Lio/bidmachine/AdResponse;->expirationTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/bidmachine/AdResponse;->createTimeMs:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public canCache()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCacheControl:Lio/bidmachine/protobuf/AdCacheControl;

    sget-object v1, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_ENABLED:Lio/bidmachine/protobuf/AdCacheControl;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public clearAdRequestList()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_6

    .line 4
    :cond_16
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearCreativeLoadingTimeout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->loadExpirationHandler:Lio/bidmachine/ExpirationHandler;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    :cond_7
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/AdResponse;->loadExpirationHandler:Lio/bidmachine/ExpirationHandler;

    return-void
.end method

.method public createBidCacheExtensionValue()Lcom/explorestack/protobuf/Value;
    .registers 5

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 4
    invoke-interface {v2}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 6
    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->calculateExpirationLeftMs()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 14
    const-string v2, "exp"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->responseId:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 22
    const-string v2, "request_id"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->bidId:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 30
    const-string v2, "bid_id"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lio/bidmachine/AdResponse;->seatBidExt:Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->getFieldsCount()I

    move-result v1

    if-lez v1, :cond_76

    .line 36
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->seatBidExt:Lcom/explorestack/protobuf/Struct;

    .line 37
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 39
    const-string v2, "seat"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 44
    :cond_76
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/c;->e(Lio/bidmachine/AdResponse;)V

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearCreativeLoadingTimeout()V

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearAdRequestList()V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->unsubscribeExpireTracker()V

    .line 8
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->destroy()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/AdResponse;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 12
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 13
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    sget-object v2, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;)V

    .line 15
    :cond_39
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    if-eqz v0, :cond_42

    .line 16
    sget-object v0, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Z)V

    .line 18
    :cond_42
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {v0}, Lio/bidmachine/tracking/SessionTrackingObject;->clear()V

    .line 20
    new-instance v0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachAdRequest(Lio/bidmachine/AdRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_42

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/AdRequest;

    if-eqz v3, :cond_2e

    if-ne v3, p1, :cond_18

    .line 7
    :cond_2e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 10
    :cond_32
    iget-object p1, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->release()V

    :cond_42
    :goto_42
    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;Ljava/util/Map;)V

    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;Ljava/util/Map;)V

    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Z",
            "Lio/bidmachine/utils/BMError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v3

    move-object v4, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V

    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;ZLjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;Ljava/util/Map;)V

    return-void
.end method

.method public expireAdRequests(Lio/bidmachine/AdRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest;

    if-eqz v1, :cond_6

    if-eq v1, p1, :cond_6

    .line 4
    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->processExpired()V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public findEventConfiguration(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    if-eq p1, v1, :cond_f

    return-object p1

    :cond_f
    return-object v0
.end method

.method public getAd()Lcom/explorestack/protobuf/adcom/Ad;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public getAdObject()Lio/bidmachine/models/AdObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    return-object v0
.end method

.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    return-object v0
.end method

.method public getAdsType()Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    return-object v0
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    return-object v0
.end method

.method public getCreativeFormat()Lio/bidmachine/CreativeFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v0

    return-object v0
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->eventConfiguration:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getStatus()Lio/bidmachine/d;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->status:Lio/bidmachine/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getTrackUrlListByEvent(Lio/bidmachine/TrackEventType;)Ljava/util/List;
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

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getVisibilitySource()Lio/bidmachine/core/VisibilitySource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    iget-object v0, v0, Lio/bidmachine/AdResponseAdProcessCallback;->visibilitySource:Lio/bidmachine/core/VisibilitySource;

    return-object v0
.end method

.method public getWinnerNetworkAdUnit()Lio/bidmachine/NetworkAdUnit;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;

    return-object v0
.end method

.method public isAdLoaded()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isCached()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdProcessCallback;)V
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p2}, Lio/bidmachine/AdResponse;->onAdLoadStart(Lio/bidmachine/AdRequest;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0, p4}, Lio/bidmachine/AdResponseAdProcessCallback;->appendCallback(Lio/bidmachine/AdProcessCallback;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4
    invoke-interface {p4}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c9

    .line 7
    :cond_18
    :try_start_18
    iget-object p4, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {p4}, Lio/bidmachine/AdResponseAdProcessCallback;->onLoading()Z

    move-result p4
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_14

    if-nez p4, :cond_22

    monitor-exit p0

    return-void

    .line 11
    :cond_22
    :try_start_22
    iget-object p4, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-interface {p4, v0}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->isExpired()Z

    move-result p4

    if-eqz p4, :cond_38

    .line 13
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->ResponseExpired:Lio/bidmachine/utils/BMError;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_14

    monitor-exit p0

    return-void

    .line 16
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->wasShown()Z

    move-result p4

    if-eqz p4, :cond_47

    .line 17
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->ResponseDuplicated:Lio/bidmachine/utils/BMError;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_14

    monitor-exit p0

    return-void

    .line 21
    :cond_47
    :try_start_47
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p4

    iget-object v0, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {p4, v0}, Lio/bidmachine/AdsType;->findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;

    move-result-object v4

    if-nez v4, :cond_63

    .line 23
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    const-string p2, "Failed to get adapter by response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-void

    :catchall_60
    move-exception v0

    move-object p1, v0

    goto :goto_b9

    .line 26
    :cond_63
    :try_start_63
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p4

    iget-object v0, p0, Lio/bidmachine/AdResponse;->bidId:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {p4, v0, v1}, Lio/bidmachine/AdsType;->createAdObjectParams(Ljava/lang/String;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v5

    if-eqz v5, :cond_ac

    .line 27
    invoke-virtual {v5}, Lio/bidmachine/models/AdObjectParams;->isValid()Z

    move-result p4

    if-nez p4, :cond_78

    goto :goto_ac

    .line 32
    :cond_78
    iget-object v6, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/BidMachineAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;

    move-result-object p1

    if-nez p1, :cond_90

    .line 38
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    const-string p2, "Failed to create ad object by response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_8e
    .catchall {:try_start_63 .. :try_end_8e} :catchall_60

    monitor-exit p0

    return-void

    .line 41
    :cond_90
    :try_start_90
    iput-object p1, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    .line 43
    iget-object p2, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    invoke-virtual {v5}, Lio/bidmachine/models/AdObjectParams;->getTrackUrls()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->startCreativeLoadingTimeout()V

    .line 47
    invoke-interface {v2}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v3, p2}, Lio/bidmachine/AdRequest;->obtainUnifiedRequestParams(Landroid/content/Context;)Lio/bidmachine/unified/UnifiedAdRequestParams;

    move-result-object p2

    iget-object p3, p0, Lio/bidmachine/AdResponse;->winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;

    .line 48
    invoke-interface {p1, v2, p2, p3}, Lio/bidmachine/models/AdObject;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;)V

    goto :goto_c7

    .line 49
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    const-string p2, "Failed to get parameters by response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_b7
    .catchall {:try_start_90 .. :try_end_b7} :catchall_60

    monitor-exit p0

    return-void

    .line 71
    :goto_b9
    :try_start_b9
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 72
    iget-object p2, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    const-string p3, "Exception processing response"

    invoke-static {p3, p1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_c7
    .catchall {:try_start_b9 .. :try_end_c7} :catchall_14

    :goto_c7
    monitor-exit p0

    return-void

    :goto_c9
    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_14

    throw p1
.end method

.method public notifyExpired(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->unsubscribeExpireTracker()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse;->expireAdRequests(Lio/bidmachine/AdRequest;)V

    if-eqz p1, :cond_1c

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->destroy()V

    :cond_1c
    return-void
.end method

.method public onAdLoadStart(Lio/bidmachine/AdRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponse;->expireAdRequests(Lio/bidmachine/AdRequest;)V

    return-void
.end method

.method public onExpired()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->processExpired()V

    return-void
.end method

.method public processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 5

    if-eqz p1, :cond_9

    .line 1
    sget-object v0, Lio/bidmachine/util/SystemComponent;->InlineInstall:Lio/bidmachine/util/SystemComponent;

    if-ne p1, v0, :cond_9

    .line 2
    const-string p1, "inline_install"

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    if-nez p1, :cond_e

    .line 6
    const-string p1, "default_browser"

    .line 8
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v1, "clickbrowser"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4e

    .line 11
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickData;->getX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "click_x"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickData;->getY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "click_y"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickData;->getViewportWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "viewport_width"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickData;->getViewportHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "viewport_height"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4e
    sget-object p1, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLjava/util/Map;)V

    return-void
.end method

.method public processClicked()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onClicked()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public processClosed(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/models/AdObject;->onClosed(Z)V

    .line 5
    :cond_9
    sget-object p1, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Z)V

    return-void
.end method

.method public processExpired()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onExpired()V

    .line 5
    :cond_9
    sget-object v0, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Z)V

    return-void
.end method

.method public processFillAd()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/c;->e(Lio/bidmachine/AdResponse;)V

    .line 2
    sget-object v0, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Z)V

    return-void
.end method

.method public processFinished()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onFinished()V

    :cond_9
    return-void
.end method

.method public processLoadFail(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearCreativeLoadingTimeout()V

    .line 2
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processLoadSuccess()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearCreativeLoadingTimeout()V

    .line 2
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Z)V

    return-void
.end method

.method public processMediationLoss()V
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/c;->e(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onShowFailed()V

    .line 5
    :cond_9
    sget-object v0, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processShown()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->unsubscribeExpireTracker()V

    .line 2
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/c;->e(Lio/bidmachine/AdResponse;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onShown()V

    :cond_13
    return-void
.end method

.method public release()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->canBeUsedInFuture()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, p0}, Lio/bidmachine/c;->a(Lio/bidmachine/AdResponse;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearAdRequestList()V

    .line 6
    sget-object v0, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/d;)V

    .line 7
    new-instance v0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_2b
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->destroy()V

    return-void
.end method

.method public removeCallback(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->removeCallback(Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method

.method public declared-synchronized setCached(Z)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized setStatus(Lio/bidmachine/d;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/AdResponse;->status:Lio/bidmachine/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public startCreativeLoadingTimeout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->loadExpirationHandler:Lio/bidmachine/ExpirationHandler;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeExpireTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    return-void
.end method

.method public wasShown()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adProcessCallback:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-virtual {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->isShownTracked()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda0 (io.bidmachine.AdResponse$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$_MEjG6HrqBjLjBb2bJN1a-X3VYw(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda1 (io.bidmachine.AdResponse$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda1;
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

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$uXAZ2DJU85aoqjkcIR0qYnPfZtA(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda2 (io.bidmachine.AdResponse$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$4DC74I9VK5QMl2t1L6-aYBLvfgQ(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda3 (io.bidmachine.AdResponse$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda3;
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

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$v8MX_SQL3jKXCVBfr2LnpCaryxY(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda4 (io.bidmachine.AdResponse$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda4;
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

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$1zzZ_rWiZS2xn01P00h2TJQKD-Y(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda5 (io.bidmachine.AdResponse$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$1xJcMBI_v4vGJkF6xy8tC8WLKgY(Lio/bidmachine/AdResponse;)V

    return-void
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda6 (io.bidmachine.AdResponse$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda6;
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

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$E6hw474R9X_A2yE2VKAo18iMTNc(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponse$$ExternalSyntheticLambda7 (io.bidmachine.AdResponse$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/AdResponse$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->$r8$lambda$xpS3XpoeB3Ox956S7szOIlHa4v4(Lio/bidmachine/AdResponse;)V

    return-void
.end method
