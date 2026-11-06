###### Class io.bidmachine.ads.networks.gam_dynamic.GAMAdapter (io.bidmachine.ads.networks.gam_dynamic.GAMAdapter)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "GAMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$GAMNetworkParams;
    }
.end annotation


# instance fields
.field public gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 45
    const-string v0, "3.8.0.0"

    const/16 v1, 0x10

    const-string v2, ""

    invoke-direct {p0, p1, v2, v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "version",
            "adapterVersion",
            "adapterMinDeviceApiVersion"
        }
    .end annotation

    .line 55
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/AdsType;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "version",
            "adapterVersion",
            "adapterMinDeviceApiVersion",
            "supportedTypes"
        }
    .end annotation

    .line 67
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz v0, :cond_7

    .line 203
    invoke-interface {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->unReserveAd(Lio/bidmachine/NetworkAdUnit;)V

    :cond_7
    return-void
.end method

.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .registers 3

    .line 80
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz v0, :cond_a

    .line 81
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;

    invoke-direct {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;)V

    return-object v1

    .line 83
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GAMNetwork is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 3

    .line 89
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz v0, :cond_a

    .line 90
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMInterstitialAd;

    invoke-direct {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMInterstitialAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;)V

    return-object v1

    .line 92
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GAMNetwork is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 3

    .line 98
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz v0, :cond_a

    .line 99
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;

    invoke-direct {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;)V

    return-object v1

    .line 101
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GAMNetwork is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "GAMDynamic"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz v0, :cond_9

    .line 74
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNetworkInitializationStatusCheckSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextProvider",
            "adRequestParams",
            "networkAdUnit",
            "hbAdRequestParams",
            "collectCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-nez p1, :cond_e

    .line 168
    const-string p1, "GAM network is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 172
    :cond_e
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdUnit;->getAdFormat()Lio/bidmachine/AdsFormat;

    move-result-object p2

    .line 171
    invoke-interface {p1, p3, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->reserveMostExpensiveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;

    move-result-object p1

    if-nez p1, :cond_22

    .line 174
    const-string p1, "Can\'t find idle ad"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 178
    :cond_22
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string p3, "ad_unit_id"

    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;->getAdUnitId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;->getPrice()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    const-string p4, "price"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;->getCustomParamsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 183
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 184
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    if-nez p3, :cond_68

    goto :goto_49

    .line 187
    :cond_68
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 190
    :cond_70
    invoke-interface {p5, p2}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    return-void
.end method

.method public onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    if-eqz v0, :cond_7

    .line 196
    invoke-interface {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->unReserveAd(Lio/bidmachine/NetworkAdUnit;)V

    :cond_7
    return-void
.end method

.method public onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextProvider",
            "initializationParams",
            "networkConfigParams",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    const-string p2, "supported_versions_range"

    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 127
    const-string p1, "supported_versions_range not provided"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_12
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->findVersionWrapper(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    move-result-object p2

    if-nez p2, :cond_1e

    .line 132
    const-string p1, "Unsupported GAM version (VersionWrapper not found)"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_1e
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 136
    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->isGAMPresent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 137
    const-string p1, "GAM is absent or used unsupported version"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 140
    :cond_2e
    const-string v0, "context"

    invoke-interface {p3, v0}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 142
    const-string p1, "context not provided"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_40
    invoke-virtual {p0, p3}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->parseWaterfallContext(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Context;

    move-result-object p3

    if-nez p3, :cond_4c

    .line 147
    const-string p1, "context can\'t transform to model"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_4c
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$GAMNetworkParams;

    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$GAMNetworkParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;

    invoke-direct {v1, p1, v0, p3, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;-><init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/protobuf/Waterfall$Context;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;)V

    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    .line 155
    invoke-interface {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->init(Landroid/content/Context;)V

    .line 156
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->cache()V

    .line 158
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method

.method public parseWaterfallContext(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Context;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 212
    invoke-static {p1}, Lio/bidmachine/protobuf/Waterfall$Context;->parseFrom([B)Lio/bidmachine/protobuf/Waterfall$Context;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    return-object p1

    :catchall_a
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMAdapter.GAMNetworkParams (io.bidmachine.ads.networks.gam_dynamic.GAMAdapter$GAMNetworkParams)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$GAMNetworkParams;
.super Lio/bidmachine/ads/networks/gam_dynamic/NetworkParamsImpl;
.source "GAMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GAMNetworkParams"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkKey",
            "networkName"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParamsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExt(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 229
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/ExtraParamsManager;->getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    return-object p1
.end method
