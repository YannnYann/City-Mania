###### Class io.bidmachine.ads.networks.gam.InternalGAMAd (io.bidmachine.ads.networks.gam.InternalGAMAd)
.class public abstract Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.super Ljava/lang/Object;
.source "InternalGAMAd.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
    }
.end annotation


# instance fields
.field public final adsFormat:Lio/bidmachine/AdsFormat;

.field public final expirationHandler:Lio/bidmachine/ExpirationHandler;

.field public final gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

.field public final gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

.field public volatile status:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public final tag:Lio/bidmachine/utils/Tag;

.field public weakAdPresentListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$86noEJUozFK93SiGUHQ5oyQYaTI(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .registers 2

    .line 135
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 135
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "load (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GAZ82UytRm6q8-GfvlYTfgryaPg(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    :try_start_3
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loading:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->setStatus(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    .line 144
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 145
    const-string v0, "Exception loading InternalGAM object"

    .line 146
    invoke-static {v0, p1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 145
    invoke-interface {p2, p0, p1}, Lio/bidmachine/ads/networks/gam/InternalLoadListener;->onAdLoadFailed(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lof753OHTBqaq-seMcBr6mGGu5I(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .registers 2

    .line 117
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 117
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "destroy (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rh5BC5NfmkcQmT1z9oYE50f6UP0(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->destroyAd()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception p0

    .line 156
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pc-J_kgUqe6T6q6mpVUleoJgRNw(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .registers 2

    .line 101
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 101
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "onExpired (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pwnhHFf0tmAuLF7jHKXKrPiZIpg(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .registers 2

    .line 89
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 89
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "onAdShown (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoader",
            "adsFormat",
            "gamUnitData"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Idle:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->status:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 39
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->tag:Lio/bidmachine/utils/Tag;

    .line 40
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    .line 41
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 42
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

    .line 43
    new-instance p2, Lio/bidmachine/ExpirationHandler;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->getExpirationTimeMs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1, p0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    return-void
.end method

.method private destroy(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canRemoveAd"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 119
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 120
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    .line 123
    :cond_14
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 124
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->onGAMAdDestroy(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 113
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->destroy(Z)V

    return-void
.end method

.method public abstract destroyAd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getAdPresentListener()Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;
    .registers 2

    .line 72
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFormat()Lio/bidmachine/AdsFormat;
    .registers 2

    .line 53
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->adsFormat:Lio/bidmachine/AdsFormat;

    return-object v0
.end method

.method public getGamLoader()Lio/bidmachine/ads/networks/gam/GAMLoader;
    .registers 2

    .line 48
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    return-object v0
.end method

.method public getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;
    .registers 2

    .line 58
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamUnitData:Lio/bidmachine/ads/networks/gam/GAMUnitData;

    return-object v0
.end method

.method public getScope()F
    .registers 2

    .line 67
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/GAMUnitData;->getScore()F

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .registers 3

    .line 175
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->status:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .registers 3

    .line 166
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->status:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .registers 3

    .line 170
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->status:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    if-eqz v0, :cond_12

    .line 171
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final load(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "loadListener"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 138
    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "applicationContext",
            "loadListener"
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

    .line 89
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 91
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    invoke-virtual {v0, p0}, Lio/bidmachine/ads/networks/gam/GAMLoader;->onGAMAdShown(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 92
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->setStatus(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 93
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    return-void
.end method

.method public onExpired()V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 101
    :cond_7
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 103
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->setStatus(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 104
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getAdPresentListener()Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 106
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;->onAdExpired()V

    :cond_1f
    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->destroy(Z)V

    .line 109
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->gamLoader:Lio/bidmachine/ads/networks/gam/GAMLoader;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->adsFormat:Lio/bidmachine/AdsFormat;

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam/GAMLoader;->load(Lio/bidmachine/AdsFormat;)Z

    return-void
.end method

.method public final release()V
    .registers 2

    .line 152
    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAdPresentListener(Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adPresentListener"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setStatus(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->status:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->tag:Lio/bidmachine/utils/Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd.Status (io.bidmachine.ads.networks.gam.InternalGAMAd$Status)
.class public final enum Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
.super Ljava/lang/Enum;
.source "InternalGAMAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public static final enum Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public static final enum Idle:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public static final enum Loaded:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public static final enum Loading:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public static final enum Showing:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

.field public static final enum Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
    .registers 6

    .line 185
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Idle:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loading:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v2, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v3, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Showing:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v4, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    sget-object v5, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 186
    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Idle:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    const-string v1, "Loading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loading:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    const-string v1, "Loaded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    const-string v1, "Showing"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Showing:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    const-string v1, "Shown"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    const-string v1, "Expired"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 185
    invoke-static {}, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->$values()[Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->$VALUES:[Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

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

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 185
    const-class v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
    .registers 1

    .line 185
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->$VALUES:[Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-virtual {v0}, [Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->$r8$lambda$pc-J_kgUqe6T6q6mpVUleoJgRNw(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda1;
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->$r8$lambda$Lof753OHTBqaq-seMcBr6mGGu5I(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->$r8$lambda$86noEJUozFK93SiGUHQ5oyQYaTI(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/gam/InternalLoadListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/ads/networks/gam/InternalLoadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/ads/networks/gam/InternalLoadListener;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->$r8$lambda$GAZ82UytRm6q8-GfvlYTfgryaPg(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda4;
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->$r8$lambda$pwnhHFf0tmAuLF7jHKXKrPiZIpg(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda5 (io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->$r8$lambda$Rh5BC5NfmkcQmT1z9oYE50f6UP0(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    return-void
.end method
