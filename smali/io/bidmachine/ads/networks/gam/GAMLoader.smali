###### Class io.bidmachine.ads.networks.gam.GAMLoader (io.bidmachine.ads.networks.gam.GAMLoader)
.class public Lio/bidmachine/ads/networks/gam/GAMLoader;
.super Ljava/lang/Object;
.source "GAMLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;,
        Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;
    }
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final expirationTimeMs:J

.field public final gamAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
            ">;"
        }
    .end annotation
.end field

.field public final gamAdListLock:Ljava/lang/Object;

.field public final gamTaskLoader:Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

.field public final gamTypeConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam/GAMTypeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final networkName:Ljava/lang/String;

.field public final requestAgent:Ljava/lang/String;

.field public final reservedGamAdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/NetworkAdUnit;",
            "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
            ">;"
        }
    .end annotation
.end field

.field public final reservedGamAdMapLock:Ljava/lang/Object;

.field public final tag:Lio/bidmachine/utils/Tag;

.field public final versionWrapper:Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;


# direct methods
.method public static synthetic $r8$lambda$PSPD1N01OhLavVkwOIo5Plh9ul8(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .registers 2

    .line 158
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 157
    const-string v0, "unReserveGAMAd (networkAdUnitId - %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RKHbFs3KlWvA1ID97u04rSTQM6E(Lio/bidmachine/ads/networks/gam/GAMUnitData;Lio/bidmachine/ads/networks/gam/GAMUnitData;)I
    .registers 2

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getScore()F

    move-result p0

    .line 188
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getScore()F

    move-result p1

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public static synthetic $r8$lambda$hkEcPBlftc8gwzMCv8HM8aGPC9k(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .registers 2

    .line 229
    const-string v0, "removeFromCaches (%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lhYbQso1gVU7WFB3na1KFzxT6XE(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)I
    .registers 2

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getScope()F

    move-result p0

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getScope()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public static synthetic $r8$lambda$x-Rfw2cTzxeOHW55TRJJDRPIWqs(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .registers 2

    .line 148
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 147
    const-string p1, "reserveGAMAd (networkAdUnitId - %s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "versionWrapper",
            "networkName",
            "gamTypeConfigMap",
            "requestAgent",
            "expirationTimeMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam/GAMTypeConfig;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->tag:Lio/bidmachine/utils/Tag;

    .line 67
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->applicationContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->versionWrapper:Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;

    .line 69
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->networkName:Ljava/lang/String;

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamTypeConfigMap:Ljava/util/Map;

    .line 71
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->requestAgent:Ljava/lang/String;

    .line 72
    iput-wide p6, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->expirationTimeMs:J

    .line 73
    new-instance p1, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

    invoke-direct {p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamTaskLoader:Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMap:Ljava/util/Map;

    .line 76
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdListLock:Ljava/lang/Object;

    .line 77
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMapLock:Ljava/lang/Object;

    .line 79
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_55
    if-ge p3, p2, :cond_7f

    aget-object p5, p1, p3

    .line 80
    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    if-eqz p5, :cond_7c

    .line 81
    invoke-virtual {p5}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getGAMUnitDataList()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_6c

    goto :goto_7c

    .line 84
    :cond_6c
    invoke-virtual {p5}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getGAMUnitDataList()Ljava/util/List;

    move-result-object p6

    invoke-virtual {p0, p6}, Lio/bidmachine/ads/networks/gam/GAMLoader;->sortDescByScore(Ljava/util/List;)V

    .line 86
    iget-object p6, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamTypeConfigMap:Ljava/util/Map;

    invoke-virtual {p5}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object p7

    invoke-interface {p6, p7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    :goto_7c
    add-int/lit8 p3, p3, 0x1

    goto :goto_55

    :cond_7f
    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/ads/networks/gam/GAMLoader;)Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->versionWrapper:Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/ads/networks/gam/GAMLoader;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->destroyGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void
.end method


# virtual methods
.method public final destroyGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    .line 255
    :catchall_3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->removeFromCaches(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void
.end method

.method public findMostExpensiveIdleGAMAd(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnitId"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 196
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 197
    invoke-virtual {p0, v2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->isReserved(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_9

    .line 200
    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception p1

    goto :goto_2d

    .line 202
    :cond_2a
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_28

    throw p1
.end method

.method public getExpirationTimeMs()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->expirationTimeMs:J

    return-wide v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestAgent()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->requestAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedGAMAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 168
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public isReserved(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalGAMAd"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 210
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public load()V
    .registers 5

    .line 110
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 111
    invoke-virtual {p0, v3}, Lio/bidmachine/ads/networks/gam/GAMLoader;->load(Lio/bidmachine/AdsFormat;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public load(Lio/bidmachine/AdsFormat;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adsFormat"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamTypeConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 120
    :cond_c
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/GAMLoader;->loadedGAMAdCount(Lio/bidmachine/ads/networks/gam/GAMTypeConfig;)I

    move-result v2

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getCacheSize()I

    move-result v3

    if-lt v2, v3, :cond_17

    return v1

    .line 123
    :cond_17
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamTaskLoader:Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

    new-instance v2, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMTypeConfig;ILio/bidmachine/ads/networks/gam/GAMLoader$1;)V

    invoke-static {v1, p1, v2}, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->access$100(Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final loadedGAMAdCount(Lio/bidmachine/ads/networks/gam/GAMTypeConfig;)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamTypeConfig"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 262
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v3

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v4

    if-ne v3, v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_23
    move-exception p1

    goto :goto_27

    .line 266
    :cond_25
    monitor-exit v0

    return v2

    .line 267
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_23

    throw p1
.end method

.method public onGAMAdDestroy(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gamAd",
            "canRemoveAd"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->release()V

    .line 178
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->removeFromCaches(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void

    .line 180
    :cond_9
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->unReserveGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void
.end method

.method public onGAMAdShown(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->removeFromCaches(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void
.end method

.method public final removeFromCaches(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 229
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1d

    .line 231
    :cond_18
    :goto_18
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->unReserveGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 232
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_16

    throw p1
.end method

.method public reserveGAMAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "internalGAMAd"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 151
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public reserveMostExpensiveGAMAd(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/GAMUnitData;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "adUnitId"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->findMostExpensiveIdleGAMAd(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 136
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->reserveGAMAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 137
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_12
    move-exception p1

    goto :goto_17

    :cond_14
    const/4 p1, 0x0

    .line 139
    monitor-exit v0

    return-object p1

    .line 141
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw p1
.end method

.method public final sortDescByScore(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamUnitDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/GAMUnitData;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public storeGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 217
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    goto :goto_20

    .line 219
    :cond_f
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->gamAdList:Ljava/util/List;

    new-instance v1, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_d

    throw p1
.end method

.method public unReserveGAMAd(Lio/bidmachine/NetworkAdUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 160
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public unReserveGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader;->reservedGamAdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 241
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/NetworkAdUnit;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_34
    move-exception p1

    goto :goto_4c

    .line 244
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    .line 245
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->unReserveGAMAd(Lio/bidmachine/NetworkAdUnit;)V

    goto :goto_3a

    .line 247
    :cond_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_34

    throw p1
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader.AnonymousClass1 (io.bidmachine.ads.networks.gam.GAMLoader$1)
.class public synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$1;
.super Ljava/lang/Object;
.source "GAMLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam.GAMLoader.GAMTaskLoader (io.bidmachine.ads.networks.gam.GAMLoader$GAMTaskLoader)
.class public Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;
.super Ljava/lang/Object;
.source "GAMLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GAMTaskLoader"
.end annotation


# static fields
.field public static final CORE_POOL_SIZE:I

.field public static final CPU_COUNT:I


# instance fields
.field public final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final submittedFutureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final submittedFutureMapLocker:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$4HjjHjwtRLranMID7kVCsBCcGX0(Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;Lio/bidmachine/AdsFormat;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->run()V

    .line 388
    invoke-static {p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->access$600(Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->removeTask(Lio/bidmachine/AdsFormat;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 362
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    sget v0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->CORE_POOL_SIZE:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 374
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsFormat;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMap:Ljava/util/Map;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMapLocker:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)V
    .registers 3

    .line 360
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->loadTask(Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)V

    return-void
.end method


# virtual methods
.method public final loadTask(Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adsFormat",
            "loadTask"
        }
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMapLocker:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_39

    .line 381
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_17

    .line 382
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 383
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_37

    .line 386
    :cond_17
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;Lio/bidmachine/AdsFormat;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    if-nez v1, :cond_2e

    .line 391
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 392
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_2e
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->access$600(Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_15

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    return-void
.end method

.method public final removeTask(Lio/bidmachine/AdsFormat;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adsFormat",
            "taskId"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMapLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->submittedFutureMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_13

    .line 404
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 406
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p1
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam.GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

.field public final synthetic f$1:Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;

.field public final synthetic f$2:Lio/bidmachine/AdsFormat;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;Lio/bidmachine/AdsFormat;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/AdsFormat;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/AdsFormat;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;->$r8$lambda$4HjjHjwtRLranMID7kVCsBCcGX0(Lio/bidmachine/ads/networks/gam/GAMLoader$GAMTaskLoader;Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;Lio/bidmachine/AdsFormat;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader.LoadAdUnitListTask (io.bidmachine.ads.networks.gam.GAMLoader$LoadAdUnitListTask)
.class public Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;
.super Ljava/lang/Object;
.source "GAMLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadAdUnitListTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;
    }
.end annotation


# instance fields
.field public final gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

.field public final gamTypeConfig:Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

.field public final id:Ljava/lang/String;

.field public final restAdLoadMs:I


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMTypeConfig;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoader",
            "gamTypeConfig",
            "restAdLoadMs"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->id:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    .line 293
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamTypeConfig:Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    .line 294
    iput p3, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->restAdLoadMs:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMTypeConfig;ILio/bidmachine/ads/networks/gam/GAMLoader$1;)V
    .registers 5

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMTypeConfig;I)V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;)Ljava/lang/String;
    .registers 1

    .line 278
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->id:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final loadGAMAdSync(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalGAMAd"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 323
    :try_start_6
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    invoke-static {v2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->access$300(Lio/bidmachine/ads/networks/gam/GAMLoader;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;-><init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/gam/GAMLoader$1;)V

    invoke-virtual {p1, v2, v3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->load(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V

    .line 324
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    goto :goto_1c

    .line 326
    :catchall_19
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 328
    :goto_1c
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 329
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->storeGAMAd(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return v1

    .line 332
    :cond_28
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->access$500(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .registers 6

    .line 300
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamTypeConfig:Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getGAMUnitDataList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 302
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    invoke-static {v2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->access$200(Lio/bidmachine/ads/networks/gam/GAMLoader;)Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    iget-object v4, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->gamTypeConfig:Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    .line 303
    invoke-virtual {v4}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v4

    .line 302
    invoke-interface {v2, v3, v4, v1}, Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;->createAd(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_f

    .line 308
    :cond_30
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->loadGAMAdSync(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_3e

    .line 313
    :cond_37
    iget v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;->restAdLoadMs:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    goto :goto_f

    :catchall_3e
    :cond_3e
    :goto_3e
    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader.LoadAdUnitListTask.AwaitLoadListener (io.bidmachine.ads.networks.gam.GAMLoader$LoadAdUnitListTask$AwaitLoadListener)
.class public Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;
.super Ljava/lang/Object;
.source "GAMLoader.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/InternalLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AwaitLoadListener"
.end annotation


# instance fields
.field public final countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countDownLatch"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/gam/GAMLoader$1;)V
    .registers 3

    .line 337
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/utils/BMError;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalGAMAd",
            "bmError"
        }
    .end annotation

    .line 353
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$LoadAdUnitListTask$AwaitLoadListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    check-cast p2, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {p1, p2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->$r8$lambda$lhYbQso1gVU7WFB3na1KFzxT6XE(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda1;
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/NetworkAdUnit;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/NetworkAdUnit;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/GAMLoader;->$r8$lambda$PSPD1N01OhLavVkwOIo5Plh9ul8(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/ads/networks/gam/GAMUnitData;

    check-cast p2, Lio/bidmachine/ads/networks/gam/GAMUnitData;

    invoke-static {p1, p2}, Lio/bidmachine/ads/networks/gam/GAMLoader;->$r8$lambda$RKHbFs3KlWvA1ID97u04rSTQM6E(Lio/bidmachine/ads/networks/gam/GAMUnitData;Lio/bidmachine/ads/networks/gam/GAMUnitData;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/GAMLoader;->$r8$lambda$hkEcPBlftc8gwzMCv8HM8aGPC9k(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.gam.GAMLoader$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkAdUnit;

.field public final synthetic f$1:Lio/bidmachine/ads/networks/gam/InternalGAMAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/NetworkAdUnit;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/NetworkAdUnit;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMLoader$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->$r8$lambda$x-Rfw2cTzxeOHW55TRJJDRPIWqs(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
