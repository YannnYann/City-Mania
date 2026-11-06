###### Class io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl (io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;
.super Ljava/lang/Object;
.source "GAMNetworkImpl.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;


# static fields
.field public static final GAM_AD_MANAGER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAM_AD_MANAGER_MAP_LOCK:Ljava/lang/Object;


# instance fields
.field public final gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

.field public final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final tag:Lio/bidmachine/utils/Tag;

.field public final versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

.field public final waterfallControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MGZr0KdhOIUpyVxRaR-Gin8SElQ(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .registers 2

    .line 194
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 193
    const-string v0, "Fail to load interstitial (Can\'t find reserved ad by network ad unit id - %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PVXyPm5R07BZ39yXKtT44zpmY94(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .registers 2

    .line 217
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 216
    const-string v0, "Fail to load rewarded (Can\'t find reserved ad by network ad unit id - %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dTSXmfDc1z-taoNu7_h819X_QJE(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 170
    const-string v0, "Fail to load banner (Can\'t find reserved ad by network ad unit id - %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->GAM_AD_MANAGER_MAP:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->GAM_AD_MANAGER_MAP_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/protobuf/Waterfall$Context;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "networkParams",
            "waterfallContext",
            "versionWrapper"
        }
    .end annotation

    .line 52
    invoke-interface {p2}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->obtainGamAdManager(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 48
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;-><init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/protobuf/Waterfall$Context;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/protobuf/Waterfall$Context;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "networkParams",
            "waterfallContext",
            "versionWrapper",
            "gamAdManager"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->tag:Lio/bidmachine/utils/Tag;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v7, p4

    .line 62
    iput-object v7, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    move-object/from16 v9, p5

    .line 63
    iput-object v9, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    .line 64
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsFormat;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->waterfallControllerMap:Ljava/util/Map;

    .line 66
    new-instance v10, Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTrackerImpl;

    invoke-virtual {p3}, Lio/bidmachine/protobuf/Waterfall$Context;->getEventConfig()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-direct {v10, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTrackerImpl;-><init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    .line 67
    new-instance v11, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;

    invoke-direct {v11}, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;-><init>()V

    .line 68
    invoke-virtual {p3}, Lio/bidmachine/protobuf/Waterfall$Context;->getConfigurationsList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/bidmachine/protobuf/Waterfall$Configuration;

    .line 69
    invoke-virtual {v6}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    move-result-object v5

    if-nez v5, :cond_66

    goto :goto_4e

    .line 73
    :cond_66
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->waterfallControllerMap:Ljava/util/Map;

    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    move-object v8, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v11}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;-><init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;)V

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    goto :goto_4e

    :cond_78
    return-void
.end method

.method public static obtainGamAdManager(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkName"
        }
    .end annotation

    .line 247
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->GAM_AD_MANAGER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    if-eqz v1, :cond_b

    return-object v1

    .line 251
    :cond_b
    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->GAM_AD_MANAGER_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_e
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    if-eqz v2, :cond_1a

    .line 254
    monitor-exit v1

    return-object v2

    :catchall_18
    move-exception p0

    goto :goto_24

    .line 256
    :cond_1a
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v1

    return-object v2

    .line 259
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_18

    throw p0
.end method


# virtual methods
.method public cache()V
    .registers 6

    .line 117
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 118
    invoke-virtual {p0, v4, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->cacheWaterfall(Lio/bidmachine/AdsFormat;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public cacheWaterfall(Lio/bidmachine/AdsFormat;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adsFormat",
            "isForced"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->waterfallControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_c
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->load(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->getVersion()Lio/bidmachine/utils/version/Version;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 91
    invoke-virtual {v0}, Lio/bidmachine/utils/version/Version;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_f

    .line 110
    :cond_a
    :try_start_a
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    invoke-interface {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->initialize(Landroid/content/Context;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_f

    :catchall_f
    :goto_f
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadBanner(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "gamListener"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getReservedAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 169
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 172
    const-string p1, "Can\'t find reserved InternalAd by NetworkAdUnit"

    .line 174
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void

    .line 177
    :cond_1d
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    if-eqz p1, :cond_2a

    .line 178
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setAdPresentListener(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;)V

    .line 179
    check-cast v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;->onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void

    .line 181
    :cond_2a
    const-string p1, "InternalAd object has an incompatible ad type"

    .line 183
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public loadInterstitial(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalInterstitialAdListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "gamListener"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getReservedAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 192
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 195
    const-string p1, "Can\'t find reserved InternalAd by NetworkAdUnit"

    .line 197
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void

    .line 200
    :cond_1d
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalInterstitialAd;

    if-eqz p1, :cond_2a

    .line 201
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setAdPresentListener(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;)V

    .line 202
    check-cast v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalInterstitialAd;

    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;->onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void

    .line 204
    :cond_2a
    const-string p1, "InternalAd object has an incompatible ad type"

    .line 206
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public loadRewarded(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "gamListener"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getReservedAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 215
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 218
    const-string p1, "Can\'t find reserved InternalAd by NetworkAdUnit"

    .line 220
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void

    .line 223
    :cond_1d
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAd;

    if-eqz p1, :cond_2a

    .line 224
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setAdPresentListener(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;)V

    .line 225
    check-cast v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAd;

    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;->onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void

    .line 227
    :cond_2a
    const-string p1, "InternalAd object has an incompatible ad type"

    .line 229
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoadListener",
            "internalAd",
            "bmError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener<",
            "*>;",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 238
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroy()V

    :cond_5
    if-eqz p3, :cond_8

    goto :goto_a

    .line 242
    :cond_8
    sget-object p3, Lio/bidmachine/utils/BMError;->NoFill:Lio/bidmachine/utils/BMError;

    .line 240
    :goto_a
    invoke-interface {p1, p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public reserveMostExpensiveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "adsFormat"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reserveMostExpensiveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;

    move-result-object v0

    if-nez v0, :cond_15

    .line 151
    invoke-virtual {p2}, Lio/bidmachine/AdsFormat;->getParent()Lio/bidmachine/AdsFormat;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 153
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reserveMostExpensiveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v0
.end method

.method public unReserveAd(Lio/bidmachine/NetworkAdUnit;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->unReserveAd(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkAdUnit;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkAdUnit;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/NetworkAdUnit;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/NetworkAdUnit;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->$r8$lambda$MGZr0KdhOIUpyVxRaR-Gin8SElQ(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkAdUnit;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkAdUnit;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/NetworkAdUnit;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/NetworkAdUnit;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->$r8$lambda$dTSXmfDc1z-taoNu7_h819X_QJE(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam_dynamic.GAMNetworkImpl$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkAdUnit;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkAdUnit;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/NetworkAdUnit;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/NetworkAdUnit;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetworkImpl;->$r8$lambda$PVXyPm5R07BZ39yXKtT44zpmY94(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
