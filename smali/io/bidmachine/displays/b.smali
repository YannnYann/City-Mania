###### Class io.bidmachine.displays.b (io.bidmachine.displays.b)
.class public Lio/bidmachine/displays/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/displays/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .registers 4

    .line 65
    invoke-virtual {p0, p1}, Lio/bidmachine/displays/b;->b(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 67
    new-instance v1, Lio/bidmachine/displays/a;

    invoke-direct {v1, p1, v0}, Lio/bidmachine/displays/a;-><init>(Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)V

    return-object v1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 5

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    .line 69
    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    :try_start_18
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_1e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 73
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .registers 21

    move-object/from16 v3, p3

    move/from16 v7, p7

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/NetworkConfig;

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v10

    .line 4
    instance-of v1, v10, Lio/bidmachine/HeaderBiddingAdapter;

    if-eqz v1, :cond_57

    invoke-virtual {v10, p1}, Lio/bidmachine/NetworkAdapter;->isInitialized(Lio/bidmachine/ContextProvider;)Z

    move-result v1

    if-eqz v1, :cond_57

    move-object/from16 v4, p4

    .line 5
    invoke-virtual {v0, v3, p2, v4, v10}, Lio/bidmachine/NetworkConfig;->createNetworkAdUnitList(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;Lio/bidmachine/NetworkAdapter;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_35
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/bidmachine/NetworkAdUnit;

    move-object/from16 v12, p6

    .line 10
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lio/bidmachine/displays/b$a;

    move-object v2, v10

    check-cast v2, Lio/bidmachine/HeaderBiddingAdapter;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/displays/b$a;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/HeaderBiddingAdapter;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p4

    goto :goto_35

    :cond_57
    move-object/from16 v12, p6

    goto :goto_d

    .line 20
    :cond_5a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_e5

    .line 21
    new-instance p1, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 22
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-interface {p1, v0}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 24
    :try_start_6b
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 25
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/displays/b$a;

    .line 26
    invoke-virtual {v2, v0}, Lio/bidmachine/displays/b$a;->a(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_88

    goto :goto_78

    :catchall_88
    move-exception v0

    goto :goto_df

    :cond_8a
    if-lez v7, :cond_8e

    int-to-long v1, v7

    goto :goto_90

    :cond_8e
    const-wide/16 v1, 0xa

    .line 31
    :goto_90
    :try_start_90
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v0, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_95} :catch_96
    .catchall {:try_start_90 .. :try_end_95} :catchall_88

    goto :goto_9a

    :catch_96
    move-exception v0

    .line 37
    :try_start_97
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 40
    :goto_9a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    :cond_9f
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/displays/b$a;

    .line 41
    invoke-virtual {v2}, Lio/bidmachine/displays/b$a;->c()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object v4

    if-eqz v4, :cond_bc

    if-nez v1, :cond_b8

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_b8
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 47
    :cond_bc
    invoke-virtual {v2}, Lio/bidmachine/displays/b$a;->d()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 49
    invoke-virtual {v2}, Lio/bidmachine/displays/b$a;->a()V

    goto :goto_9f

    .line 52
    :cond_c6
    invoke-static {v1}, Lio/bidmachine/core/Utils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 53
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    :try_end_d3
    .catchall {:try_start_97 .. :try_end_d3} :catchall_88

    .line 58
    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-interface {p1, v1, v3, p2, p2}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-object v0

    .line 59
    :cond_d9
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-interface {p1, v0, v3, p2, p2}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    goto :goto_e5

    .line 60
    :goto_df
    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-interface {p1, v1, v3, p2, p2}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    .line 64
    throw v0

    :cond_e5
    :goto_e5
    return-object p2
.end method

.method public b(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/displays/b;->a(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v1

    :cond_1d
    if-nez v1, :cond_31

    .line 6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/displays/b;->a(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v1

    :cond_31
    if-nez v1, :cond_46

    .line 10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/b;->a(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    return-object p1

    :cond_46
    return-object v1
.end method

###### Class io.bidmachine.displays.b.a (io.bidmachine.displays.b$a)
.class public final Lio/bidmachine/displays/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/bidmachine/HeaderBiddingAdRequestParams;
.implements Lio/bidmachine/HeaderBiddingCollectParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/displays/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lio/bidmachine/ContextProvider;

.field public final b:Lio/bidmachine/HeaderBiddingAdapter;

.field public final c:Lio/bidmachine/AdsType;

.field public final d:Lio/bidmachine/AdContentType;

.field public final e:Lio/bidmachine/unified/UnifiedAdRequestParams;

.field public final f:Lio/bidmachine/NetworkAdUnit;

.field public final g:Lio/bidmachine/tracking/TrackingObject;

.field public h:Ljava/util/concurrent/CountDownLatch;

.field public i:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

.field public j:Z


# direct methods
.method public static synthetic $r8$lambda$FCKoZp0DhmKdyCNBV8JjZBaS5AA(Lio/bidmachine/displays/b$a;Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/displays/b$a;->a(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GV29l6Sa5bfM2g3C65tCL8UUf6k(Lio/bidmachine/displays/b$a;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/displays/b$a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pdyg6V06Gigeq3GOvPbR2UEVXXc(Lio/bidmachine/displays/b$a;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/displays/b$a;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/displays/b$a;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/HeaderBiddingAdapter;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/displays/b$a;->j:Z

    .line 10
    iput-object p1, p0, Lio/bidmachine/displays/b$a;->a:Lio/bidmachine/ContextProvider;

    .line 11
    iput-object p2, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 12
    iput-object p3, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    .line 13
    iput-object p4, p0, Lio/bidmachine/displays/b$a;->d:Lio/bidmachine/AdContentType;

    .line 14
    iput-object p5, p0, Lio/bidmachine/displays/b$a;->e:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 15
    iput-object p6, p0, Lio/bidmachine/displays/b$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 16
    new-instance p1, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/b$a;->g:Lio/bidmachine/tracking/TrackingObject;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->d:Lio/bidmachine/AdContentType;

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s (%s) - Header bidding collect fail - %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 12
    iget-boolean v0, p0, Lio/bidmachine/displays/b$a;->j:Z

    if-eqz v0, :cond_5

    return-void

    .line 15
    :cond_5
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/displays/b$a;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/displays/b$a;->b()V

    return-void
.end method

.method public a(Ljava/util/concurrent/CountDownLatch;)V
    .registers 7

    .line 2
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->g:Lio/bidmachine/tracking/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    new-instance v2, Lio/bidmachine/tracking/TrackEventInfo;

    invoke-direct {v2}, Lio/bidmachine/tracking/TrackEventInfo;-><init>()V

    iget-object v3, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 4
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HB_NETWORK"

    invoke-virtual {v2, v4, v3}, Lio/bidmachine/tracking/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/tracking/TrackEventInfo;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    .line 5
    invoke-virtual {v3}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BM_AD_TYPE"

    invoke-virtual {v2, v4, v3}, Lio/bidmachine/tracking/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/tracking/TrackEventInfo;

    move-result-object v2

    .line 6
    invoke-interface {v0, v1, v2}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;)V

    .line 10
    iput-object p1, p0, Lio/bidmachine/displays/b$a;->h:Ljava/util/concurrent/CountDownLatch;

    .line 11
    sget-object p1, Lio/bidmachine/displays/b$a;->k:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/displays/b$a;->j:Z

    .line 2
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public c()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->i:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/displays/b$a;->j:Z

    return v0
.end method

.method public final synthetic e()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->d:Lio/bidmachine/AdContentType;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%s) - Header bidding collect fail: timeout"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->d:Lio/bidmachine/AdContentType;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%s) - Header bidding collect finished"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->d:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public getAdsType()Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public onCollectFail(Lio/bidmachine/utils/BMError;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/displays/b$a;->j:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/displays/b$a;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/displays/b$a;->b()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->g:Lio/bidmachine/tracking/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    iget-object v2, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    new-instance v3, Lio/bidmachine/tracking/EventData;

    invoke-direct {v3}, Lio/bidmachine/tracking/EventData;-><init>()V

    iget-object v4, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 13
    invoke-virtual {v4}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    move-result-object v3

    .line 14
    invoke-interface {v0, v1, v2, v3, p1}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onCollectFinished(Ljava/util/Map;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/displays/b$a;->j:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 5
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->setBidder(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 6
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdapter;->obtainNetworkSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->setBidderSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 7
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bm_ad_unit_id"

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putClientParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 8
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getMediationConfig()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/displays/b$a;->i:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    .line 11
    iget-object p1, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    invoke-virtual {p1}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/displays/b$a;)V

    invoke-static {p1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 15
    invoke-virtual {p0}, Lio/bidmachine/displays/b$a;->b()V

    .line 16
    iget-object p1, p0, Lio/bidmachine/displays/b$a;->g:Lio/bidmachine/tracking/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->c:Lio/bidmachine/AdsType;

    new-instance v2, Lio/bidmachine/tracking/EventData;

    invoke-direct {v2}, Lio/bidmachine/tracking/EventData;-><init>()V

    iget-object v3, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 18
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    move-result-object v2

    const/4 v3, 0x0

    .line 19
    invoke-interface {p1, v0, v1, v2, v3}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public run()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/displays/b$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    iget-object v1, p0, Lio/bidmachine/displays/b$a;->a:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/displays/b$a;->e:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v3, p0, Lio/bidmachine/displays/b$a;->f:Lio/bidmachine/NetworkAdUnit;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_10

    move-object v5, p0

    move-object v4, p0

    :try_start_a
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/HeaderBiddingAdapter;->collectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object v4, p0

    .line 7
    :goto_12
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 8
    const-string v1, "Exception collecting header bidding parameters"

    invoke-static {v1, v0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/displays/b$a;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.displays.b$a$$ExternalSyntheticLambda0 (io.bidmachine.displays.b$a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/displays/b$a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/displays/b$a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/displays/b$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/displays/b$a;

    invoke-static {v0}, Lio/bidmachine/displays/b$a;->$r8$lambda$GV29l6Sa5bfM2g3C65tCL8UUf6k(Lio/bidmachine/displays/b$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.displays.b$a$$ExternalSyntheticLambda1 (io.bidmachine.displays.b$a$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/displays/b$a;

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/displays/b$a;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/displays/b$a;

    iput-object p2, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/displays/b$a;

    iget-object v1, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/displays/b$a;->$r8$lambda$FCKoZp0DhmKdyCNBV8JjZBaS5AA(Lio/bidmachine/displays/b$a;Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.displays.b$a$$ExternalSyntheticLambda2 (io.bidmachine.displays.b$a$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/displays/b$a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/displays/b$a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/displays/b$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/displays/b$a$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/displays/b$a;

    invoke-static {v0}, Lio/bidmachine/displays/b$a;->$r8$lambda$Pdyg6V06Gigeq3GOvPbR2UEVXXc(Lio/bidmachine/displays/b$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
