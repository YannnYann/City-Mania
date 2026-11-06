###### Class io.bidmachine.o (io.bidmachine.o)
.class public abstract Lio/bidmachine/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/o$b;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/tracking/TrackingObject;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$73-oKvJdUuVxw8lqaJU-oxJafMA(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/o;->a(Lio/bidmachine/BidToken;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Op9UzRJlz36Pa7penQLpDkBunaU(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/o;->a(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h2qO6G7D4oChcE2yQ20efm6vULg(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r0NRy4jT92r-aUUTj-x6wV8wCqA(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zyshTKDfQlzv1J5jGPyIsZjaQWE(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/o;->a(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {v0}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    sput-object v0, Lio/bidmachine/o;->a:Lio/bidmachine/tracking/TrackingObject;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/o;->b:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/o;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Lio/bidmachine/AdPlacementConfig;)Lio/bidmachine/AdRequest;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lio/bidmachine/AdFormat$Banner;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 72
    new-instance v0, Lio/bidmachine/banner/BannerRequest$Builder;

    invoke-direct {v0, p0}, Lio/bidmachine/banner/BannerRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    goto :goto_2e

    .line 73
    :cond_f
    instance-of v1, v0, Lio/bidmachine/AdFormat$Interstitial;

    if-eqz v1, :cond_19

    .line 74
    new-instance v0, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    invoke-direct {v0, p0}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    goto :goto_2e

    .line 75
    :cond_19
    instance-of v1, v0, Lio/bidmachine/AdFormat$Rewarded;

    if-eqz v1, :cond_23

    .line 76
    new-instance v0, Lio/bidmachine/rewarded/RewardedRequest$Builder;

    invoke-direct {v0, p0}, Lio/bidmachine/rewarded/RewardedRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    goto :goto_2e

    .line 77
    :cond_23
    instance-of v0, v0, Lio/bidmachine/AdFormat$Native;

    if-eqz v0, :cond_2d

    .line 78
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    goto :goto_2e

    :cond_2d
    move-object v0, v2

    :goto_2e
    if-nez v0, :cond_31

    return-object v2

    .line 83
    :cond_31
    invoke-virtual {v0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build()Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/AdRequest;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 86
    :cond_4
    invoke-static {p0}, Lio/bidmachine/o;->b(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v1, Lio/bidmachine/o$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/o$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const-string v2, "BidTokenManager"

    invoke-static {v2, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v0

    .line 91
    :cond_19
    invoke-static {p0}, Lio/bidmachine/o;->c(Ljava/lang/String;)Lio/bidmachine/BidToken;

    move-result-object v1

    if-nez v1, :cond_28

    .line 93
    new-instance v1, Lio/bidmachine/o$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/o$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object v0

    .line 96
    :cond_28
    invoke-virtual {v1}, Lio/bidmachine/BidToken;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_4
    sget-object v0, Lio/bidmachine/o;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lio/bidmachine/o;->b(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_1a

    .line 4
    const-string p0, "Failed to create RequestTokenPayload"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-static {v0, p0}, Lio/bidmachine/o;->a(Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-object p1

    .line 8
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0}, Lio/bidmachine/o;->a(Lio/bidmachine/AdsType;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception v1

    .line 12
    const-string v2, "Failed to encode RequestTokenPayload"

    invoke-static {v2, v1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/o;->a(Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload;->getTokenHashValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/o;->c(Ljava/lang/String;)Lio/bidmachine/BidToken;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "BidTokenId - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 97
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "BidTokenId from bidPayload - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/AdPlacementConfig;)V
    .registers 8

    .line 21
    :try_start_0
    invoke-static {p2}, Lio/bidmachine/o;->a(Lio/bidmachine/AdPlacementConfig;)Lio/bidmachine/AdRequest;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_87

    .line 27
    :cond_8
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerAndInitializeCoreNetworks(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p2}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/o;->b(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    .line 30
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, p0, v2, v3}, Lio/bidmachine/AdRequest;->collectPlacementFormats(Landroid/content/Context;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;)Ljava/util/List;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Message$Builder;

    .line 38
    instance-of v4, v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    if-eqz v4, :cond_3e

    .line 39
    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 41
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Lio/bidmachine/o;->a(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;Ljava/util/List;)V

    goto :goto_24

    .line 44
    :cond_3e
    instance-of v4, v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    if-eqz v4, :cond_24

    .line 45
    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 47
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lio/bidmachine/o;->a(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;Ljava/util/List;)V

    goto :goto_24

    .line 52
    :cond_4c
    invoke-virtual {v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_87

    .line 53
    new-instance p0, Lio/bidmachine/BidToken;

    .line 54
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    move-result p2

    new-instance v2, Lio/bidmachine/o$b;

    invoke-direct {v2, v3}, Lio/bidmachine/o$b;-><init>(Lio/bidmachine/o$a;)V

    invoke-direct {p0, v0, p2, v2}, Lio/bidmachine/BidToken;-><init>(Lio/bidmachine/AdRequest;ILio/bidmachine/ExpirationListener;)V

    .line 56
    invoke-static {p0}, Lio/bidmachine/o;->c(Lio/bidmachine/BidToken;)V

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 59
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setTokenHashValue(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 61
    const-string p2, "BidTokenManager"

    new-instance v0, Lio/bidmachine/o$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lio/bidmachine/o$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/BidToken;)V

    invoke-static {p2, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    :try_end_7f
    .catchall {:try_start_0 .. :try_end_7f} :catchall_80

    return-void

    .line 64
    :catchall_80
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getTokenHashValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/o;->c(Ljava/lang/String;)Lio/bidmachine/BidToken;

    :cond_87
    :goto_87
    return-void
.end method

.method public static a(Lio/bidmachine/AdsType;)V
    .registers 2

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lio/bidmachine/o;->b(Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static a(Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 85
    invoke-static {p0, p1}, Lio/bidmachine/o;->b(Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static a(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;Ljava/util/List;)V
    .registers 4

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    .line 68
    :try_start_10
    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 69
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getAdUnitsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_4

    goto :goto_4

    :cond_20
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .registers 3

    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lio/bidmachine/CustomParams;->fillStructBuilder(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 19
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result p1

    if-lez p1, :cond_10

    .line 20
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setCustomData(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    :cond_10
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V
    .registers 2

    .line 15
    invoke-static {p1}, Lcom/explorestack/protobuf/StringValue;->of(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setPlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 4

    .line 98
    sget-object v0, Lio/bidmachine/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p0, :cond_8

    goto :goto_29

    .line 102
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/TokenConfiguration;

    .line 103
    invoke-virtual {v0}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/AdFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_c

    .line 107
    :cond_23
    sget-object v2, Lio/bidmachine/o;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_29
    :goto_29
    return-void
.end method

.method public static b(Lio/bidmachine/BidToken;)Lio/bidmachine/BidToken;
    .registers 1

    .line 89
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/o;->c(Ljava/lang/String;)Lio/bidmachine/BidToken;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Lio/bidmachine/protobuf/RequestTokenPayload;
    .registers 12

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p0}, Lio/bidmachine/k;->b(Landroid/content/Context;)Lio/bidmachine/internal/u;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lio/bidmachine/internal/u;->c()Lio/bidmachine/internal/v;

    move-result-object v9

    .line 7
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v7

    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v6

    .line 12
    invoke-virtual {v6}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v4

    .line 14
    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtils;->createAdFormatBuilder(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setAdFormat(Lio/bidmachine/protobuf/sdk/AdFormat$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 16
    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setAdType(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lio/bidmachine/o$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lio/bidmachine/o$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V

    invoke-static {v0, v5}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getCustomParams()Lio/bidmachine/CustomParams;

    move-result-object v0

    new-instance v5, Lio/bidmachine/o$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Lio/bidmachine/o$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V

    invoke-static {v0, v5}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 31
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->newBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v2}, Lio/bidmachine/k;->e()Lio/bidmachine/AppParams;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lio/bidmachine/AppParams;->build(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 33
    invoke-virtual {v6, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setAppData(Lio/bidmachine/protobuf/sdk/App$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 36
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    const-string v4, "BidMachine"

    .line 37
    invoke-virtual {v0, v4}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    const-string v4, "3.8.0"

    .line 38
    invoke-virtual {v0, v4}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lio/bidmachine/internal/s;->a(Lio/bidmachine/protobuf/sdk/SDK$Builder;)V

    .line 40
    invoke-virtual {v6, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setPlacementData(Lio/bidmachine/protobuf/sdk/SDK$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 43
    invoke-virtual {v2}, Lio/bidmachine/k;->f()Lio/bidmachine/DeviceParams;

    move-result-object v4

    .line 46
    invoke-virtual {v3}, Lio/bidmachine/internal/u;->d()Lio/bidmachine/internal/w;

    move-result-object v8

    move-object v5, p0

    .line 47
    invoke-virtual/range {v4 .. v9}, Lio/bidmachine/DeviceParams;->build(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V

    .line 54
    invoke-virtual {v2}, Lio/bidmachine/k;->o()Lio/bidmachine/SessionParams;

    move-result-object p0

    .line 56
    invoke-virtual {v3}, Lio/bidmachine/internal/u;->h()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v5, v6, v0, v1}, Lio/bidmachine/SessionParams;->build(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Ljava/lang/String;Lio/bidmachine/AdsType;)V

    .line 62
    invoke-static {v5, v6, p1}, Lio/bidmachine/o;->a(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/AdPlacementConfig;)V

    .line 65
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p0

    .line 66
    invoke-static {p0, v7, v3}, Lio/bidmachine/internal/B;->a(Lio/bidmachine/protobuf/sdk/Regs$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/u;)V

    .line 67
    invoke-virtual {v6, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setRegsData(Lio/bidmachine/protobuf/sdk/Regs$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 70
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p0

    .line 72
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lio/bidmachine/ExtraParamsManager;->getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 74
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putAllFields(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 76
    :cond_a3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result p1

    if-lez p1, :cond_b0

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p0

    invoke-virtual {v6, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 80
    :cond_b0
    invoke-virtual {v6}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object p0
    :try_end_b4
    .catchall {:try_start_0 .. :try_end_b4} :catchall_b5

    return-object p0

    :catchall_b5
    move-exception v0

    move-object p0, v0

    .line 82
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 2

    .line 83
    invoke-static {p0}, Lio/bidmachine/o;->a(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p0

    if-nez p0, :cond_14

    .line 85
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->newBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p0

    const/16 v0, 0x12c

    .line 86
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setExpirationTime(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method public static b(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object p0

    const-string v1, "tokenHashValue"

    .line 95
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    if-nez p0, :cond_1c

    return-object v0

    .line 99
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 90
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "BidToken is null by bidTokenId - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V
    .registers 5

    .line 88
    sget-object v0, Lio/bidmachine/o;->a:Lio/bidmachine/tracking/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2, p1}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lio/bidmachine/BidToken;
    .registers 2

    .line 3
    sget-object v0, Lio/bidmachine/o;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/BidToken;

    if-eqz p0, :cond_d

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->stopExpiration()V

    :cond_d
    return-object p0
.end method

.method public static c(Lio/bidmachine/BidToken;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/o;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->startExpiration()V

    return-void
.end method

###### Class io.bidmachine.o.a (io.bidmachine.o$a)
.class public abstract synthetic Lio/bidmachine/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.o.b (io.bidmachine.o$b)
.class public Lio/bidmachine/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ExpirationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$jRsRb3SmJ8gESY00rdfqVfoSH2Q(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/o$b;->a(Lio/bidmachine/BidToken;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/o$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/o$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "BidToken expired - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onExpired(Lio/bidmachine/BidToken;)V
    .registers 4

    .line 2
    new-instance v0, Lio/bidmachine/o$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/o$b$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidToken;)V

    const-string v1, "BidTokenManager"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 4
    invoke-static {p1}, Lio/bidmachine/o;->b(Lio/bidmachine/BidToken;)Lio/bidmachine/BidToken;

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/BidToken;->destroyAdRequest()V

    return-void
.end method

.method public bridge synthetic onExpired(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/BidToken;

    invoke-virtual {p0, p1}, Lio/bidmachine/o$b;->onExpired(Lio/bidmachine/BidToken;)V

    return-void
.end method

###### Class io.bidmachine.o$b$$ExternalSyntheticLambda0 (io.bidmachine.o$b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/o$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidToken;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidToken;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/o$b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidToken;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/o$b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidToken;

    invoke-static {v0}, Lio/bidmachine/o$b;->$r8$lambda$jRsRb3SmJ8gESY00rdfqVfoSH2Q(Lio/bidmachine/BidToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.o$$ExternalSyntheticLambda0 (io.bidmachine.o$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/o$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/o$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/o$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/o;->$r8$lambda$h2qO6G7D4oChcE2yQ20efm6vULg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.o$$ExternalSyntheticLambda1 (io.bidmachine.o$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/o$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/o$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/o$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/o;->$r8$lambda$r0NRy4jT92r-aUUTj-x6wV8wCqA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.o$$ExternalSyntheticLambda2 (io.bidmachine.o$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/o$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/o$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/o$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lio/bidmachine/o;->$r8$lambda$Op9UzRJlz36Pa7penQLpDkBunaU(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.o$$ExternalSyntheticLambda3 (io.bidmachine.o$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/o$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/o$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/o$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    check-cast p1, Lio/bidmachine/CustomParams;

    invoke-static {v0, p1}, Lio/bidmachine/o;->$r8$lambda$zyshTKDfQlzv1J5jGPyIsZjaQWE(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V

    return-void
.end method

###### Class io.bidmachine.o$$ExternalSyntheticLambda4 (io.bidmachine.o$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/o$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidToken;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidToken;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/o$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/BidToken;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/o$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/BidToken;

    invoke-static {v0}, Lio/bidmachine/o;->$r8$lambda$73-oKvJdUuVxw8lqaJU-oxJafMA(Lio/bidmachine/BidToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
