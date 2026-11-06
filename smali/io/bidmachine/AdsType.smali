###### Class io.bidmachine.AdsType (io.bidmachine.AdsType)
.class public final enum Lio/bidmachine/AdsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsType;

.field public static final enum Banner:Lio/bidmachine/AdsType;

.field public static final enum Interstitial:Lio/bidmachine/AdsType;

.field public static final enum Native:Lio/bidmachine/AdsType;

.field public static final enum Rewarded:Lio/bidmachine/AdsType;


# instance fields
.field private final binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

.field private final name:Ljava/lang/String;

.field private final placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

.field private final placementCreateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/AdsType;
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    sget-object v3, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/AdsType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lio/bidmachine/AdsType;

    new-instance v4, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v4}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-instance v1, Lio/bidmachine/AdsType$a;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lio/bidmachine/AdsType$a;-><init>(Z)V

    const/4 v7, 0x1

    new-array v5, v7, [Lio/bidmachine/displays/PlacementBuilder;

    aput-object v1, v5, v6

    const/4 v2, 0x0

    const-string v3, "banner"

    const-string v1, "Banner"

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 11
    new-instance v8, Lio/bidmachine/AdsType;

    new-instance v12, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v12}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-instance v0, Lio/bidmachine/displays/DisplayPlacementBuilder;

    invoke-direct {v0, v7}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(Z)V

    new-instance v1, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v1, v7}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(Z)V

    const/4 v2, 0x2

    new-array v13, v2, [Lio/bidmachine/displays/PlacementBuilder;

    aput-object v0, v13, v6

    aput-object v1, v13, v7

    const/4 v10, 0x1

    const-string v11, "interstitial"

    const-string v9, "Interstitial"

    invoke-direct/range {v8 .. v13}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v8, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 16
    new-instance v9, Lio/bidmachine/AdsType;

    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-instance v0, Lio/bidmachine/displays/DisplayPlacementBuilder;

    invoke-direct {v0, v7}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(Z)V

    new-instance v1, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v1, v6}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(Z)V

    new-array v14, v2, [Lio/bidmachine/displays/PlacementBuilder;

    aput-object v0, v14, v6

    aput-object v1, v14, v7

    const/4 v11, 0x2

    const-string v12, "rewarded"

    const-string v10, "Rewarded"

    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v9, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 21
    new-instance v0, Lio/bidmachine/AdsType;

    new-instance v4, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v4}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-instance v1, Lio/bidmachine/displays/NativePlacementBuilder;

    invoke-direct {v1}, Lio/bidmachine/displays/NativePlacementBuilder;-><init>()V

    new-array v5, v7, [Lio/bidmachine/displays/PlacementBuilder;

    aput-object v1, v5, v6

    const/4 v2, 0x3

    const-string v3, "native"

    const-string v1, "Native"

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 22
    invoke-static {}, Lio/bidmachine/AdsType;->$values()[Lio/bidmachine/AdsType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;",
            "[",
            "Lio/bidmachine/displays/PlacementBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 4
    iput-object p5, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    const/16 p2, 0x8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/AdsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdsType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsType;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    invoke-virtual {v0}, [Lio/bidmachine/AdsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsType;

    return-object v0
.end method


# virtual methods
.method public collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdRequest;",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message$Builder;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, v1, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v0, v0

    invoke-direct {v10, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    iget-object v11, v1, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v12, v11

    const/4 v0, 0x0

    move v13, v0

    :goto_f
    if-ge v13, v12, :cond_3c

    aget-object v2, v11, v13

    move-object/from16 v14, p2

    .line 3
    invoke-virtual {v14, v2}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4
    iget-object v15, v1, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lio/bidmachine/AdsType$b;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lio/bidmachine/AdsType$b;-><init>(Lio/bidmachine/AdsType;Lio/bidmachine/displays/PlacementBuilder;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_37

    .line 26
    :cond_34
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_37
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    goto :goto_f

    .line 30
    :cond_3c
    :try_start_3c
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception v0

    .line 32
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createAdObjectParams(Ljava/lang/String;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p2}, Lio/bidmachine/displays/PlacementBuilder;->createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 4
    invoke-virtual {v3}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object p2

    const-string v0, "bidId"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_37

    .line 6
    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    if-ne p0, v1, :cond_1d

    .line 7
    const-string p1, "nast"

    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 9
    const-string p1, "mraid"

    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 11
    const-string p1, "vast"

    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object p1

    return-object p1

    :cond_37
    return-object v0
.end method

.method public getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFullscreen()Z
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    if-eq p0, v0, :cond_b

    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lio/bidmachine/displays/PlacementBuilder;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.AdsType.a (io.bidmachine.AdsType$a)
.class public Lio/bidmachine/AdsType$a;
.super Lio/bidmachine/displays/DisplayPlacementBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/util/Size;
    .registers 3

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsType$a;->getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;)Landroid/util/Size;
    .registers 3

    .line 2
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->toSize()Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.AdsType.b (io.bidmachine.AdsType$b)
.class public Lio/bidmachine/AdsType$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdsType;->collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/displays/PlacementBuilder;

.field public final synthetic b:Lio/bidmachine/ContextProvider;

.field public final synthetic c:Lio/bidmachine/unified/UnifiedAdRequestParams;

.field public final synthetic d:Ljava/util/Collection;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lio/bidmachine/AdPlacementConfig;

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic j:Lio/bidmachine/AdsType;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsType;Lio/bidmachine/displays/PlacementBuilder;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .registers 11

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdsType$b;->j:Lio/bidmachine/AdsType;

    iput-object p2, p0, Lio/bidmachine/AdsType$b;->a:Lio/bidmachine/displays/PlacementBuilder;

    iput-object p3, p0, Lio/bidmachine/AdsType$b;->b:Lio/bidmachine/ContextProvider;

    iput-object p4, p0, Lio/bidmachine/AdsType$b;->c:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iput-object p5, p0, Lio/bidmachine/AdsType$b;->d:Ljava/util/Collection;

    iput-object p6, p0, Lio/bidmachine/AdsType$b;->e:Ljava/util/List;

    iput-object p7, p0, Lio/bidmachine/AdsType$b;->f:Lio/bidmachine/AdPlacementConfig;

    iput p8, p0, Lio/bidmachine/AdsType$b;->g:I

    iput-object p9, p0, Lio/bidmachine/AdsType$b;->h:Ljava/util/List;

    iput-object p10, p0, Lio/bidmachine/AdsType$b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdsType$b;->a:Lio/bidmachine/displays/PlacementBuilder;

    iget-object v1, p0, Lio/bidmachine/AdsType$b;->b:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/AdsType$b;->c:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v3, p0, Lio/bidmachine/AdsType$b;->j:Lio/bidmachine/AdsType;

    iget-object v4, p0, Lio/bidmachine/AdsType$b;->d:Ljava/util/Collection;

    iget-object v5, p0, Lio/bidmachine/AdsType$b;->e:Ljava/util/List;

    iget-object v6, p0, Lio/bidmachine/AdsType$b;->f:Lio/bidmachine/AdPlacementConfig;

    iget v7, p0, Lio/bidmachine/AdsType$b;->g:I

    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/displays/PlacementBuilder;->createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lio/bidmachine/AdsType$b;->h:Ljava/util/List;

    monitor-enter v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_23

    .line 9
    :try_start_17
    iget-object v2, p0, Lio/bidmachine/AdsType$b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_25

    .line 11
    :try_start_1d
    iget-object v0, p0, Lio/bidmachine/AdsType$b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    goto :goto_28

    :catchall_25
    move-exception v0

    .line 12
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_23

    .line 15
    :goto_28
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Lio/bidmachine/AdsType$b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class io.bidmachine.displays.VideoPlacementBuilder (io.bidmachine.displays.VideoPlacementBuilder)
.class public Lio/bidmachine/displays/VideoPlacementBuilder;
.super Lio/bidmachine/displays/PlacementBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Lio/bidmachine/displays/PlacementBuilder<",
        "TUnifiedAdRequestParamsType;>;"
    }
.end annotation


# instance fields
.field public final canSkip:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-direct {p0, v0}, Lio/bidmachine/displays/PlacementBuilder;-><init>(Lio/bidmachine/AdContentType;)V

    .line 3
    iput-boolean p1, p0, Lio/bidmachine/displays/VideoPlacementBuilder;->canSkip:Z

    return-void
.end method


# virtual methods
.method public createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_8
    invoke-virtual {p0, p1}, Lio/bidmachine/displays/PlacementBuilder;->createHeaderBiddingAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/displays/c;

    invoke-direct {v1, p1}, Lio/bidmachine/displays/c;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/displays/IabAdObjectParams;->setCreativeAdm(Ljava/lang/String;)V

    return-object v1

    :cond_1f
    return-object v0
.end method

.method public createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/displays/VideoPlacementBuilder;->getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/util/Size;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/adcom/ApiFramework;->API_FRAMEWORK_OMID_1_0:Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 4
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/displays/VideoPlacementBuilder;->canSkip:Z

    .line 5
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setSkip(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_DIPS:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 6
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setUnit(Lcom/explorestack/protobuf/adcom/SizeUnit;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 7
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPos(Lcom/explorestack/protobuf/adcom/PlacementPosition;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 10
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 11
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 12
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 13
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    sget-object v1, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:Ljava/util/List;

    .line 14
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    const/16 v1, 0x38

    .line 15
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMinbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 16
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 17
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMindur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 18
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxdur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_INTERSTITIAL:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    .line 19
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPtype(Lcom/explorestack/protobuf/adcom/VideoPlacementType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setLinearValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p7

    .line 21
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/displays/PlacementBuilder;->createHeaderBiddingPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    if-nez p6, :cond_8b

    if-eqz p1, :cond_8b

    .line 29
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object v0

    :cond_8b
    if-eqz p6, :cond_98

    .line 31
    invoke-virtual {p0, p6, p1}, Lio/bidmachine/displays/PlacementBuilder;->createSdkPlacement(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    :cond_98
    return-object v0
.end method

.method public getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/util/Size;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/DeviceUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method
