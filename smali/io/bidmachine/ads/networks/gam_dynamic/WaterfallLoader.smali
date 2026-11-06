###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;,
        Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;,
        Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;
    }
.end annotation


# instance fields
.field public final adUnitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public final adUnitResultQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public final adsFormat:Lio/bidmachine/AdsFormat;

.field public final applicationContext:Landroid/content/Context;

.field public final cacheSize:I

.field public final gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

.field public final gamEventTracker:Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;

.field public final gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

.field public final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final listener:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;

.field public final networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

.field public final tag:Lio/bidmachine/utils/Tag;

.field public final taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

.field public final versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

.field public final waterfallId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$73bJOA5aw2GEmX8IgHRGl6hCwz4(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;
    .registers 2

    .line 152
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 152
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s) Can\'t create InternalAd"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8s6Ewq1FyDne2CVIQby4hAhjrKc(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;
    .registers 2

    .line 129
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 129
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s) Stop polling. Waterfall already filled with expensive ads"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DtnBJu0H1w6GyS-DGGOQQGc_S6E(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V
    .registers 11

    .line 126
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    .line 126
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->findCheapestIdleAd(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 127
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v2

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_52

    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 128
    invoke-virtual {v0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getLoadedAdCount(Lio/bidmachine/AdsFormat;)I

    move-result v0

    iget v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->cacheSize:I

    if-lt v0, v2, :cond_52

    .line 129
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V

    invoke-static {v0, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 132
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    invoke-virtual {p0, p1, v0, v1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->addAdUnitResult(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)V

    .line 136
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 137
    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    invoke-virtual {p0, v0, v2, v1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->addAdUnitResult(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)V

    goto :goto_3c

    .line 142
    :cond_4e
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->processLoadCompleted()V

    return-void

    .line 146
    :cond_52
    :try_start_52
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    iget-object v4, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

    iget-object v5, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    iget-object v6, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    new-instance v8, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;

    invoke-direct {v8, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_aa

    move-object v7, p1

    :try_start_60
    invoke-interface/range {v3 .. v8}, Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;->createAd(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    move-result-object p1

    if-nez p1, :cond_82

    .line 152
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V

    invoke-static {p1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 154
    sget-object p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    const-string v0, "Can\'t create InternalAd"

    .line 157
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v7, p1, v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->addAdUnitResult(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)V

    .line 158
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->loadNextAdUnit(Ljava/lang/Long;)V

    return-void

    :catchall_7f
    move-exception v0

    :goto_80
    move-object p1, v0

    goto :goto_ad

    .line 161
    :cond_82
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 162
    const-string v0, "gam_waterfall_id"

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setCustomParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v0, "gam_ad_unit_id"

    invoke-virtual {v7}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setCustomParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :cond_9a
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;

    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V

    invoke-virtual {p1, v0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->load(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V

    .line 166
    sget-object v0, Lio/bidmachine/TrackEventType;->AdUnitLoadStart:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    :try_end_a9
    .catchall {:try_start_60 .. :try_end_a9} :catchall_7f

    return-void

    :catchall_aa
    move-exception v0

    move-object v7, p1

    goto :goto_80

    .line 168
    :goto_ad
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 170
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    const-string v2, "Exception loading InternalAd object"

    .line 173
    invoke-static {v2, p1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 170
    invoke-virtual {p0, v7, v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->addAdUnitResult(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)V

    .line 174
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->loadNextAdUnit(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGX9d_OawxMyaoraVs7ZbEBKRVM(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;J)Ljava/lang/String;
    .registers 3

    .line 124
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "(%s) Execution ad unit load started after %s ms"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$efdc7OiLuM8naWrLadF7yI7fzPE(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 102
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitQueue:Ljava/util/Queue;

    .line 105
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 102
    const-string v0, "(%s) Polling started (waterfallId - %s, ad unit count - %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q2v7Dd39UbYcvmQ5e42BuBjC0mQ(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;
    .registers 5

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 202
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitResultQueue:Ljava/util/Queue;

    .line 206
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 203
    const-string v2, "(%s) Polling completed (waterfallId - %s, ad unit count - %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitResultQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 208
    invoke-static {v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMUtils;->toString(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 210
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Ljava/lang/String;Ljava/util/List;ILio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "networkParams",
            "adsFormat",
            "versionWrapper",
            "gamNetwork",
            "gamAdManager",
            "gamEventTracker",
            "taskExecutor",
            "waterfallId",
            "adUnitList",
            "cacheSize",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;",
            "Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;",
            "Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;",
            "Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;",
            "Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;I",
            "Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WaterfallLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->tag:Lio/bidmachine/utils/Tag;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->applicationContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

    .line 78
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 79
    iput-object p4, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    .line 80
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    .line 81
    iput-object p6, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    .line 82
    iput-object p7, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamEventTracker:Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;

    .line 83
    iput-object p8, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    .line 84
    iput-object p9, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    .line 85
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, p10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitQueue:Ljava/util/Queue;

    .line 86
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitResultQueue:Ljava/util/Queue;

    .line 87
    iput p11, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->cacheSize:I

    .line 88
    iput-object p12, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->listener:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    return-object p0
.end method


# virtual methods
.method public addAdUnitResult(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "adUnitStatus",
            "internalAdLoadData",
            "bmError"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitResultQueue:Ljava/util/Queue;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->create(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateLoadingDelayMs(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Ljava/lang/Long;)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "sleepTimeAfterMs"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->getSleepTimeBeforeMs(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J

    move-result-wide v0

    if-eqz p2, :cond_b

    .line 187
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr v0, p1

    :cond_b
    return-wide v0
.end method

.method public create(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "adUnitStatus",
            "internalAdLoadData",
            "bmError"
        }
    .end annotation

    .line 281
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object p3

    .line 282
    invoke-virtual {p3, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setStatus(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object p2

    .line 283
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setPrice(D)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object p2

    .line 284
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 286
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setAdUnitId(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 288
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 290
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setServerParams(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    :cond_26
    if-eqz p4, :cond_3f

    .line 305
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    .line 306
    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setCode(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    .line 305
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setError(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 309
    :cond_3f
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    move-result-object p1

    return-object p1
.end method

.method public getSleepTimeAfterMs(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->hasSleepTimeAfter()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 268
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getSleepTimeAfter()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_14

    .line 271
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSleepTimeBeforeMs(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->hasSleepTimeBefore()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getSleepTimeBefore()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_14

    .line 261
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public load()V
    .registers 4

    .line 99
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 102
    :cond_b
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 107
    sget-object v0, Lio/bidmachine/TrackEventType;->WaterfallLoadStart:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;)V

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->loadNextAdUnit(Ljava/lang/Long;)V

    return-void
.end method

.method public loadNextAdUnit(Ljava/lang/Long;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sleepTimeAfterMs"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 114
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->processLoadCompleted()V

    return-void

    .line 117
    :cond_c
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    if-nez v0, :cond_1a

    .line 119
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->loadNextAdUnit(Ljava/lang/Long;)V

    return-void

    .line 123
    :cond_1a
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->calculateLoadingDelayMs(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Ljava/lang/Long;)J

    move-result-wide v1

    .line 124
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;J)V

    invoke-static {p1, v3}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 125
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V

    invoke-interface {p1, v3, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_38

    .line 178
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->processLoadCompleted()V

    :cond_38
    return-void
.end method

.method public processLoadCompleted()V
    .registers 3

    .line 201
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 213
    sget-object v0, Lio/bidmachine/TrackEventType;->WaterfallLoadFinish:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;)V

    .line 215
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->listener:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adUnitResultQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;->onWaterfallLoadCompleted(Ljava/util/Queue;)V

    return-void
.end method

.method public removeAdFromCaches(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->removeAdFromCaches(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 222
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->cacheWaterfall(Lio/bidmachine/AdsFormat;Z)Z

    :cond_12
    return-void
.end method

.method public run()V
    .registers 1

    .line 94
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->load()V

    return-void
.end method

.method public trackEvent(Lio/bidmachine/TrackEventType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackEventType"
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0, v0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackEventType",
            "internalAd"
        }
    .end annotation

    .line 233
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackEventType",
            "adUnit",
            "internalAd",
            "bmError"
        }
    .end annotation

    .line 241
    new-instance v0, Lio/bidmachine/tracking/EventData;

    invoke-direct {v0}, Lio/bidmachine/tracking/EventData;-><init>()V

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

    .line 242
    invoke-interface {v1}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    move-result-object v0

    if-eqz p2, :cond_1c

    .line 244
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/bidmachine/tracking/EventData;->setPrice(Ljava/lang/Double;)Lio/bidmachine/tracking/EventData;

    :cond_1c
    if-eqz p3, :cond_25

    .line 247
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getCustomParamsMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/bidmachine/tracking/EventData;->setCustomParams(Ljava/util/Map;)Lio/bidmachine/tracking/EventData;

    .line 249
    :cond_25
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_34

    .line 250
    const-string p2, "gam_waterfall_id"

    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->waterfallId:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Lio/bidmachine/tracking/EventData;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    .line 252
    :cond_34
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->gamEventTracker:Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;

    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->adsFormat:Lio/bidmachine/AdsFormat;

    invoke-interface {p2, p1, p3, v0, p4}, Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsFormat;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader.AdListener (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$AdListener)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDestroyed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalAd",
            "isAdReleased"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 338
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-virtual {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->removeAdFromCaches(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void

    .line 340
    :cond_8
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-static {p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->access$000(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->unReserveAd(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitExpired:Lio/bidmachine/TrackEventType;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->removeAdFromCaches(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 327
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitShown:Lio/bidmachine/TrackEventType;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader.AdLoadListener (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$AdLoadListener)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdLoadListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalAd",
            "bmError"
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    sget-object v2, Lio/bidmachine/TrackEventType;->AdUnitLoadFinish:Lio/bidmachine/TrackEventType;

    invoke-virtual {v1, v2, v0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    .line 376
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    sget-object v2, Lio/bidmachine/TrackEventType;->AdUnitLoss:Lio/bidmachine/TrackEventType;

    invoke-virtual {v1, v2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 377
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_ERROR:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->addAdUnitResult(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;Lio/bidmachine/utils/BMError;)V

    .line 381
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroy()V

    .line 383
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$AdLoadListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->getSleepTimeAfterMs(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->loadNextAdUnit(Ljava/lang/Long;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader.Listener (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$Listener)
.class public interface abstract Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onWaterfallLoadCompleted(Ljava/util/Queue;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnitResultQueue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->$r8$lambda$efdc7OiLuM8naWrLadF7yI7fzPE(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    iput-wide p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    iget-wide v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->$r8$lambda$MGX9d_OawxMyaoraVs7ZbEBKRVM(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

.field public final synthetic f$1:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->$r8$lambda$DtnBJu0H1w6GyS-DGGOQQGc_S6E(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->$r8$lambda$q2v7Dd39UbYcvmQ5e42BuBjC0mQ(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->$r8$lambda$8s6Ewq1FyDne2CVIQby4hAhjrKc(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda5 (io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;->$r8$lambda$73bJOA5aw2GEmX8IgHRGl6hCwz4(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
