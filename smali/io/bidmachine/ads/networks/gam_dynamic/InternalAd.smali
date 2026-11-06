###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd (io.bidmachine.ads.networks.gam_dynamic.InternalAd)
.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.super Ljava/lang/Object;
.source "InternalAd.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
    }
.end annotation


# instance fields
.field public final adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

.field public final adsFormat:Lio/bidmachine/AdsFormat;

.field public final customParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final expirationHandler:Lio/bidmachine/ExpirationHandler;

.field public final internalAdListener:Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;

.field public volatile status:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public final tag:Lio/bidmachine/utils/Tag;

.field public final taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

.field public weakAdPresentListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-kWqPEjSQ2Fej0qYm9IO6unOEWs(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroyAd()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception p0

    .line 222
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-hSrBDIn3hWxUrAsBe3wOoIyD4(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 2

    .line 144
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 144
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMUtils;->toString(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "onAdShown (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_SoYTIANHWCzF3GAvbfFQHzXjrE(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    :try_start_3
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loading:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setStatus(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 206
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    .line 208
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 209
    const-string v0, "Exception loading InternalAd object"

    .line 210
    invoke-static {v0, p1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 209
    invoke-interface {p2, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apvJyrl-5olp4sAFA9kF1W_cO6E(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 2

    .line 199
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 199
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMUtils;->toString(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "load (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cIXVF7xbVzlFExC5knkDg3JJyME(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 2

    .line 171
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 171
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMUtils;->toString(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "destroy (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tiFTuzdKiIZjUQCnrq7tORG6FR4(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .registers 2

    .line 114
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 114
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMUtils;->toString(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "onExpired (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "networkParams",
            "taskExecutor",
            "adsFormat",
            "adUnit",
            "internalAdListener"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Idle:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->status:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 52
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Ad"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->tag:Lio/bidmachine/utils/Tag;

    .line 53
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    .line 54
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 55
    iput-object p4, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 56
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->internalAdListener:Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;

    .line 57
    new-instance p1, Lio/bidmachine/ExpirationHandler;

    invoke-virtual {p4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getExpirationTime()I

    move-result p2

    int-to-long p2, p2

    invoke-direct {p1, p2, p3, p0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    .line 58
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->customParamsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 165
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->isShown()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroy(Z)V

    return-void
.end method

.method public destroy(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canReleaseAd"
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 173
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 175
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_22

    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1c

    .line 179
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->release()V

    .line 181
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->internalAdListener:Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;->onAdDestroyed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Z)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_12

    return-void

    .line 183
    :goto_22
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract destroyAd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getAdPresentListener()Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;
    .registers 2

    .line 90
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 92
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
    .registers 2

    .line 85
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFormat()Lio/bidmachine/AdsFormat;
    .registers 2

    .line 80
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adsFormat:Lio/bidmachine/AdsFormat;

    return-object v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->customParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getInternalAdLoadData()Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadData;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    .line 69
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public isExpired()Z
    .registers 3

    .line 241
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->status:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .registers 3

    .line 232
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->status:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .registers 3

    .line 236
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->status:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    if-eqz v0, :cond_12

    .line 237
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final load(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "internalLoadListener"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 202
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "applicationContext",
            "internalLoadListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onAdShown()V
    .registers 3

    .line 144
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 146
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->internalAdListener:Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;

    invoke-interface {v0, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;->onAdShown(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 147
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setStatus(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 148
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    return-void
.end method

.method public onExpired()V
    .registers 3

    .line 111
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 114
    :cond_7
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 116
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->internalAdListener:Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;

    invoke-interface {v0, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;->onAdExpired(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 117
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setStatus(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 118
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdPresentListener()Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 120
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;->onAdExpired()V

    :cond_24
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroy(Z)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 217
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 218
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAdPresentListener(Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adPresentListener"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCustomParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->customParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStatus(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->status:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->tag:Lio/bidmachine/utils/Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->adUnit:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    invoke-static {v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMUtils;->toString(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd.Status (io.bidmachine.ads.networks.gam_dynamic.InternalAd$Status)
.class public final enum Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
.super Ljava/lang/Enum;
.source "InternalAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public static final enum Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public static final enum Idle:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public static final enum Loaded:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public static final enum Loading:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public static final enum Showing:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

.field public static final enum Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
    .registers 6

    .line 251
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Idle:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loading:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v2, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Showing:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v4, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    sget-object v5, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 252
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Idle:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    const-string v1, "Loading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loading:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    const-string v1, "Loaded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    const-string v1, "Showing"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Showing:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    const-string v1, "Shown"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    const-string v1, "Expired"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 251
    invoke-static {}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->$values()[Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->$VALUES:[Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 251
    const-class v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
    .registers 1

    .line 251
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->$VALUES:[Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-virtual {v0}, [Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->$r8$lambda$tiFTuzdKiIZjUQCnrq7tORG6FR4(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->$r8$lambda$cIXVF7xbVzlFExC5knkDg3JJyME(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->$r8$lambda$H-hSrBDIn3hWxUrAsBe3wOoIyD4(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->$r8$lambda$-kWqPEjSQ2Fej0qYm9IO6unOEWs(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->$r8$lambda$apvJyrl-5olp4sAFA9kF1W_cO6E(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda5 (io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->$r8$lambda$_SoYTIANHWCzF3GAvbfFQHzXjrE(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V

    return-void
.end method
