###### Class io.bidmachine.ads.networks.gam_dynamic.GAMAdManager (io.bidmachine.ads.networks.gam_dynamic.GAMAdManager)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;
.super Ljava/lang/Object;
.source "GAMAdManager.java"


# instance fields
.field public final internalAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            ">;"
        }
    .end annotation
.end field

.field public final internalAdListLock:Ljava/lang/Object;

.field public final reservedInternalAdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/NetworkAdUnit;",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            ">;"
        }
    .end annotation
.end field

.field public final reservedInternalAdMapLock:Ljava/lang/Object;

.field public final tag:Lio/bidmachine/utils/Tag;


# direct methods
.method public static synthetic $r8$lambda$PcBHCKk8Pz4EAh8V0D8yWyp8FN8(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getLoadedAdCount(Lio/bidmachine/AdsFormat;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 146
    const-string p1, "Remove ad from caches (%s, size - %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_F8gmejFKB_atFxNUk3VfSfHOZ4(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getReservedAdCount(Lio/bidmachine/AdsFormat;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 211
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getLoadedAdCount(Lio/bidmachine/AdsFormat;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 207
    const-string p1, "Reserve ad (networkAdUnitId - %s, %s, %s / %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$srNdTJBeXR4MVZ4VPYWVDFf6LNY(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getReservedAdCount(Lio/bidmachine/AdsFormat;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getLoadedAdCount(Lio/bidmachine/AdsFormat;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 235
    const-string p1, "UnReserve ad (networkAdUnitId - %s, %s, %s / %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkName"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AdManager"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->tag:Lio/bidmachine/utils/Tag;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    .line 42
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public findCheapestIdleAd(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adsFormat"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_29

    .line 129
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 130
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v3

    if-ne v3, p1, :cond_26

    .line 131
    invoke-virtual {p0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->isAdReserved(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_26

    .line 135
    :cond_22
    monitor-exit v0

    return-object v2

    :catchall_24
    move-exception p1

    goto :goto_2c

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 137
    :cond_29
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_24

    throw p1
.end method

.method public findMostExpensiveIdleAd(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adsFormat"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 114
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v3

    if-ne v3, p1, :cond_9

    .line 115
    invoke-virtual {p0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->isAdReserved(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_9

    .line 118
    :cond_22
    monitor-exit v0

    return-object v2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 120
    :cond_26
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public getCachedAdUnitList(Lio/bidmachine/AdsFormat;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adsFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p1, 0x0

    .line 159
    monitor-exit v0

    return-object p1

    :catchall_e
    move-exception p1

    goto :goto_69

    .line 161
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 163
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v4

    if-eq v4, p1, :cond_2e

    goto :goto_1b

    .line 167
    :cond_2e
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v4

    .line 168
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    move-result-object v5

    .line 169
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setPrice(D)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    move-result-object v5

    .line 170
    invoke-virtual {p0, v3}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->isAdReserved(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setFrozen(Z)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    move-result-object v5

    .line 171
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 173
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setAdUnitId(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 175
    :cond_53
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 177
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setServerParams(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 179
    :cond_5c
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getInternalAdLoadData()Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;

    .line 192
    invoke-virtual {v5}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 194
    :cond_67
    monitor-exit v0

    return-object v1

    .line 195
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_e

    throw p1
.end method

.method public getLoadedAdCount(Lio/bidmachine/AdsFormat;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adsFormat"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 87
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v3

    if-eq v3, p1, :cond_1d

    goto :goto_a

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 92
    :cond_22
    monitor-exit v0

    return v2

    .line 93
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public getReservedAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getReservedAdCount(Lio/bidmachine/AdsFormat;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adsFormat"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 255
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v3

    if-eq v3, p1, :cond_21

    goto :goto_e

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_24
    move-exception p1

    goto :goto_28

    .line 260
    :cond_26
    monitor-exit v0

    return v2

    .line 261
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_24

    throw p1
.end method

.method public isAdReserved(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 201
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public removeAdFromCaches(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 145
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->tag:Lio/bidmachine/utils/Tag;

    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v2, v3}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1d

    .line 150
    :cond_18
    :goto_18
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->unReserveAd(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 151
    monitor-exit v0

    return v1

    .line 152
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_16

    throw p1
.end method

.method public reserveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "internalAd"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 213
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
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

    .line 99
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->internalAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->findMostExpensiveIdleAd(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 102
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reserveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 103
    monitor-exit v0

    return-object p2

    :catchall_e
    move-exception p1

    goto :goto_13

    :cond_10
    const/4 p1, 0x0

    .line 105
    monitor-exit v0

    return-object p1

    .line 107
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e

    throw p1
.end method

.method public unReserveAd(Lio/bidmachine/NetworkAdUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    if-eqz v1, :cond_1a

    .line 235
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->tag:Lio/bidmachine/utils/Tag;

    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v2, v3}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_1c

    .line 241
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p1
.end method

.method public unReserveAd(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->reservedInternalAdMap:Ljava/util/Map;

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

    .line 221
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 222
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/NetworkAdUnit;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_34
    move-exception p1

    goto :goto_4c

    .line 225
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

    .line 226
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->unReserveAd(Lio/bidmachine/NetworkAdUnit;)V

    goto :goto_3a

    .line 228
    :cond_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_34

    throw p1
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

.field public final synthetic f$1:Lio/bidmachine/NetworkAdUnit;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/NetworkAdUnit;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/NetworkAdUnit;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->$r8$lambda$_F8gmejFKB_atFxNUk3VfSfHOZ4(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

.field public final synthetic f$1:Lio/bidmachine/NetworkAdUnit;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/NetworkAdUnit;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/NetworkAdUnit;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->$r8$lambda$srNdTJBeXR4MVZ4VPYWVDFf6LNY(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam_dynamic.GAMAdManager$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

.field public final synthetic f$1:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->$r8$lambda$PcBHCKk8Pz4EAh8V0D8yWyp8FN8(Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
