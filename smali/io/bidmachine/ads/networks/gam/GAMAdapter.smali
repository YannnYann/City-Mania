###### Class io.bidmachine.ads.networks.gam.GAMAdapter (io.bidmachine.ads.networks.gam.GAMAdapter)
.class public Lio/bidmachine/ads/networks/gam/GAMAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "GAMAdapter.java"


# instance fields
.field public gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 45
    const-string v0, "3.8.0.3"

    const/16 v1, 0x10

    const-string v2, "gam"

    const-string v3, ""

    invoke-direct {p0, v2, v3, v0, v1}, Lio/bidmachine/ads/networks/gam/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/ads/networks/gam/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

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

    .line 207
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz v0, :cond_7

    .line 208
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->unReserveGAMAd(Lio/bidmachine/NetworkAdUnit;)V

    :cond_7
    return-void
.end method

.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .registers 3

    .line 80
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz v0, :cond_c

    .line 81
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMBanner;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/GAMBanner;-><init>(Lio/bidmachine/ads/networks/gam/GAMNetwork;)V

    return-object v0

    .line 83
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GAMNetwork is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 3

    .line 89
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz v0, :cond_c

    .line 90
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMInterstitial;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/GAMInterstitial;-><init>(Lio/bidmachine/ads/networks/gam/GAMNetwork;)V

    return-object v0

    .line 92
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GAMNetwork is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 3

    .line 98
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz v0, :cond_c

    .line 99
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMRewarded;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/GAMRewarded;-><init>(Lio/bidmachine/ads/networks/gam/GAMNetwork;)V

    return-object v0

    .line 101
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GAMNetwork is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "GAM"

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->getVersion()Ljava/lang/String;

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->isInitialized()Z

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

    .line 174
    const-string p1, "ad_unit_id"

    invoke-virtual {p3, p1}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 175
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 176
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 179
    :cond_14
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-nez v0, :cond_22

    .line 180
    const-string p1, "GAM network is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 183
    :cond_22
    invoke-virtual {v0, p3, p4}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->reserveMostExpensiveGAMAd(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object p3

    .line 184
    iget-object p4, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedAdRequestParams;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/AdRequestParameters;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object p2

    invoke-virtual {p4, p2}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->cache(Lio/bidmachine/AdsFormat;)V

    if-nez p3, :cond_3f

    .line 186
    const-string p1, "Can\'t find idle ad"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 190
    :cond_3f
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getAdUnitId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getScore()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p4, "score"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getPrice()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p3, "price"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
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

    .line 200
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    if-eqz v0, :cond_7

    .line 201
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->unReserveGAMAd(Lio/bidmachine/NetworkAdUnit;)V

    :cond_7
    return-void
.end method

.method public onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .registers 14
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
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam/VersionManager;->findVersionWrapper(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 132
    const-string p1, "Unsupported GAM version (VersionWrapper not found)"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_1e
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 136
    invoke-interface {v2, v1}, Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;->isGAMPresent(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 137
    const-string p1, "GAM is absent or used unsupported version"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 140
    :cond_2e
    const-string p1, "waterfall_configurations"

    invoke-interface {p3, p1}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 142
    const-string p1, "waterfall_configurations not provided"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_40
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMAdapter;->toGAMTypeConfigMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_87

    .line 146
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_87

    .line 150
    :cond_4d
    const-string p1, "request_agent"

    invoke-interface {p3, p1}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    const-string p1, "expiration_time"

    invoke-interface {p3, p1}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xe10

    invoke-static {p1, p2}, Lio/bidmachine/core/Utils;->parseIntOrDefault(Ljava/lang/String;I)I

    move-result p1

    .line 153
    const-string p2, "override_callbacks"

    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 155
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMNetwork;

    .line 157
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/GAMAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 160
    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/ads/networks/gam/GAMNetwork;-><init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JZ)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    .line 162
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->init(Landroid/content/Context;)V

    .line 163
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->cache()V

    .line 165
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void

    .line 147
    :cond_87
    :goto_87
    const-string p1, "waterfall_configurations is empty"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public final toGAMTypeConfigMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam/GAMTypeConfig;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 217
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_29

    .line 218
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_26

    .line 222
    :cond_18
    invoke-static {v2}, Lio/bidmachine/ads/networks/gam/GAMTypeConfigFactory;->create(Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_26

    .line 227
    :cond_1f
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2a

    :goto_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_29
    return-object v0

    :catchall_2a
    const/4 p1, 0x0

    return-object p1
.end method
