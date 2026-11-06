###### Class io.bidmachine.BidMachineAd (io.bidmachine.BidMachineAd)
.class public abstract Lio/bidmachine/BidMachineAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/IAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidMachineAd$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/IAd;",
        "AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;AdObjectType::",
        "Lio/bidmachine/models/AdObject<",
        "TAdObjectParamsType;TUnifiedAdRequestParamsType;*>;AdObjectParamsType:",
        "Lio/bidmachine/models/AdObjectParams;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        "Ad",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Ljava/lang/Object;",
        "Lio/bidmachine/IAd<",
        "TSelfType;TAdRequestType;>;"
    }
.end annotation


# instance fields
.field final adProcessCallback:Lio/bidmachine/AdProcessCallback;

.field adRequest:Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field private final adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TAdRequestType;>;"
        }
    .end annotation
.end field

.field private final adsType:Lio/bidmachine/AdsType;

.field private final contextProvider:Lio/bidmachine/ContextProvider;

.field private currentState:Lio/bidmachine/BidMachineAd$d;

.field private final internalAdRequestListener:Lio/bidmachine/AdRequest$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$e;"
        }
    .end annotation
.end field

.field protected final isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAd",
            "ListenerType;"
        }
    .end annotation
.end field

.field protected rendererConfiguration:Lio/bidmachine/RendererConfiguration;

.field private final tag:Lio/bidmachine/utils/Tag;

.field final trackingObject:Lio/bidmachine/BidMachineTrackingObject;


# direct methods
.method public static synthetic $r8$lambda$SV873FyWFexSXfkJwv8ZwaozPw0(Lio/bidmachine/BidMachineAd;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 4
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getNetworkKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_22
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s - %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/utils/Tag;

    const-string v1, "BidMachineAd"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->tag:Lio/bidmachine/utils/Tag;

    .line 23
    sget-object v0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/BidMachineAd$d;

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    .line 280
    new-instance v0, Lio/bidmachine/BidMachineAd$a;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$a;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    .line 306
    new-instance v0, Lio/bidmachine/BidMachineAd$b;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$b;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$e;

    .line 316
    new-instance v0, Lio/bidmachine/BidMachineAd$c;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 317
    new-instance v0, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v0, p1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 318
    iput-object p2, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    .line 319
    new-instance p1, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 320
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 321
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    return-object p0
.end method

.method public static synthetic access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$d;)Lio/bidmachine/BidMachineAd$d;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    return-object p1
.end method

.method public static synthetic access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->listener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/BidMachineAd;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/BidMachineAd;->destroyAdRequest()V

    return-void
.end method

.method private attachRequest(Lio/bidmachine/AdRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$e;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->addInternalListener(Lio/bidmachine/AdRequest$e;)V

    :cond_c
    return-void
.end method

.method private destroyAdRequest()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_d

    .line 4
    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->detachRequest(Lio/bidmachine/AdRequest;)V

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->destroy()V

    :cond_d
    return-void
.end method

.method private detachRequest(Lio/bidmachine/AdRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$e;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->removeInternalListener(Lio/bidmachine/AdRequest$e;)V

    :cond_c
    return-void
.end method

.method private isNetworkAvailableDuringShow()Z
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/m;->a()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method private prepareShow(Z)Lio/bidmachine/models/AdObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TAdObjectType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->processPrepareShow()V

    .line 3
    invoke-direct {p0}, Lio/bidmachine/BidMachineAd;->isNetworkAvailableDuringShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 4
    sget-object p1, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-object v1

    .line 7
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8
    sget-object p1, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-object v1

    .line 11
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 12
    sget-object p1, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-object v1

    .line 15
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_38

    .line 16
    const-string p1, "Ad not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-object v1

    :cond_38
    if-eqz p1, :cond_46

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isCanShowAd()Z

    move-result p1

    if-nez p1, :cond_46

    .line 20
    sget-object p1, Lio/bidmachine/utils/BMError;->ResponseDuplicated:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-object v1

    .line 23
    :cond_46
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object p1

    return-object p1
.end method

.method private processRequest(Lio/bidmachine/AdRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    const-string v0, "process request start"

    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestSuccess(Lio/bidmachine/AdRequest;)V

    return-void

    .line 6
    :cond_f
    sget-object v0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd$d;

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->request(Landroid/content/Context;)V

    return-void
.end method

.method private trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v3

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v4

    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/AdsType;Lio/bidmachine/AdResponse;Lio/bidmachine/utils/BMError;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isCanShowAd()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lio/bidmachine/BidMachineAd;->isNetworkAvailableDuringShow()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public abstract createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TAdRequestType;",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/AdProcessCallback;",
            ")TAdObjectType;"
        }
    .end annotation
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processDestroy()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {v0}, Lio/bidmachine/tracking/SessionTrackingObject;->clear()V

    return-void
.end method

.method public final getAdResponse()Lio/bidmachine/AdResponse;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdsType()Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextProvider()Lio/bidmachine/ContextProvider;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    return-object v0
.end method

.method public final getLoadedAdObject()Lio/bidmachine/models/AdObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 6
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    return-object v1
.end method

.method public isCanShowAd()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->wasShown()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isDestroyed()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->f:Lio/bidmachine/BidMachineAd$d;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isDuplicateShowDisabled()Z
.end method

.method public isExpired()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->g:Lio/bidmachine/BidMachineAd$d;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd$d;

    if-eq v0, v1, :cond_d

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->c:Lio/bidmachine/BidMachineAd$d;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation

    .line 1
    const-string v0, "load requested"

    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-interface {v0, v1}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 4
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->s()Z

    move-result v0

    if-nez v0, :cond_20

    .line 5
    const-string p1, "BidMachine not initialized"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-object p0

    .line 8
    :cond_20
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/BidMachineAd$d;

    if-eq v0, v1, :cond_2c

    .line 9
    const-string p1, "request process abort because it\'s already processing"

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    return-object p0

    :cond_2c
    if-nez p1, :cond_38

    .line 13
    const-string p1, "AdRequest"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-object p0

    .line 16
    :cond_38
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->detachRequest(Lio/bidmachine/AdRequest;)V

    .line 17
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 18
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->attachRequest(Lio/bidmachine/AdRequest;)V

    .line 19
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequest(Lio/bidmachine/AdRequest;)V

    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidMachineAd;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public prepareShow()Lio/bidmachine/models/AdObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isDuplicateShowDisabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->prepareShow(Z)Lio/bidmachine/models/AdObject;

    move-result-object v0

    return-object v0
.end method

.method public processPrepareShow()V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/TrackEventType;->ImpressionOpportunity:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processRequestFail(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->c:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_f

    return-void

    .line 4
    :cond_f
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-direct {p0, v0, p1}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processRequestSuccess(Lio/bidmachine/AdRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->c:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-le v0, v2, :cond_f

    return-void

    .line 4
    :cond_f
    iput-object v1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    .line 6
    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    invoke-virtual {v1, v0}, Lio/bidmachine/BidMachineTrackingObject;->setAdResponse(Lio/bidmachine/AdResponse;)V

    if-nez v0, :cond_26

    .line 9
    const-string p1, "AdResponse is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 12
    :cond_26
    const-string v1, "start loading"

    invoke-virtual {p0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    invoke-virtual {v0, v1, p1, p0, v2}, Lio/bidmachine/AdResponse;->loadAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    invoke-direct {p0, v0, p1}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd",
            "ListenerType;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->listener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method public setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/IAd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/RendererConfiguration;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->tag:Lio/bidmachine/utils/Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auctionResult - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachineAd.a (io.bidmachine.BidMachineAd$a)
.class public Lio/bidmachine/BidMachineAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdRequest$AdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestExpired(Lio/bidmachine/AdRequest;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v1, :cond_b

    .line 2
    iget-object p1, v0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    :cond_b
    return-void
.end method

.method public onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v1, :cond_9

    .line 2
    invoke-virtual {v0, p2}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    :cond_9
    return-void
.end method

.method public onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    iget-object v0, p2, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v0, :cond_9

    .line 2
    invoke-virtual {p2, p1}, Lio/bidmachine/BidMachineAd;->processRequestSuccess(Lio/bidmachine/AdRequest;)V

    :cond_9
    return-void
.end method

###### Class io.bidmachine.BidMachineAd.b (io.bidmachine.BidMachineAd$b)
.class public Lio/bidmachine/BidMachineAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdRequest$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$b;->a:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/AdRequest;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$b;->a:Lio/bidmachine/BidMachineAd;

    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v1, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    :cond_9
    return-void
.end method

###### Class io.bidmachine.BidMachineAd.c (io.bidmachine.BidMachineAd$c)
.class public Lio/bidmachine/BidMachineAd$c;
.super Lio/bidmachine/SimpleAdProcessCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lio/bidmachine/AdCridThreadHandler;

.field public final synthetic b:Lio/bidmachine/BidMachineAd;


# direct methods
.method public static synthetic $r8$lambda$SNyLFrpqLH8Ppya8jEywSlK2IFs(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/AdListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c;->a(Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcpD05Q9Tw49DvEZEM-OUf6bJZI(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/BidMachineAd$c;->a(Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1vhHfDkD4WBtn4TIywCHpCQR88(Lio/bidmachine/BidMachineAd$c;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd$c;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$XQcJUGXClsde7WxDx3umXaqmH_w(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c;->b(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nsS6tIh9K9VMtixwqv4tNAx5MfM(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c;->a(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oMoo4HA1NrJs7a5oCo4gi8N-omo(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c;->a(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-Utd1NH57yC1Qgl05c3c2-Pag4(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/BidMachineAd$c;->b(Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Lio/bidmachine/SimpleAdProcessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .registers 3

    .line 7
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isDuplicateShowDisabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 14
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "duplicate showing is disabled, starting destroy internally"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    :cond_22
    return-void
.end method

.method public final synthetic a(Lio/bidmachine/AdListener;)V
    .registers 4

    .line 16
    instance-of v0, p1, Lio/bidmachine/AdFullScreenListener;

    if-eqz v0, :cond_18

    .line 17
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdClosed"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 18
    check-cast p1, Lio/bidmachine/AdFullScreenListener;

    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/AdFullScreenListener;->onAdClosed(Lio/bidmachine/IAd;Z)V

    :cond_18
    return-void
.end method

.method public final synthetic a(Lio/bidmachine/AdResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/AdCridThreadHandler;

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 2
    iget-boolean v0, p1, Lio/bidmachine/AdResponse;->isCridMonitoringEnabled:Z

    if-eqz v0, :cond_1d

    .line 3
    new-instance v0, Lio/bidmachine/AdCridThreadHandler;

    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/models/AuctionResult;->getCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdCridThreadHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/AdCridThreadHandler;

    :cond_1d
    return-void
.end method

.method public final synthetic a(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

.method public final synthetic a(Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V
    .registers 5

    .line 5
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdLoadFailed"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p2, v0, p1}, Lio/bidmachine/AdListener;->onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final synthetic b(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

.method public final synthetic b(Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdShowFailed"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p2, v0, p1}, Lio/bidmachine/AdListener;->onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {p1}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object p2, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-le p1, p2, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string p2, "processClickVerified"

    invoke-virtual {p1, p2}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lio/bidmachine/BidMachineAd$c$c;

    invoke-direct {p1, p0}, Lio/bidmachine/BidMachineAd$c$c;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processClosed()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    goto :goto_1f

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_1f
    return-void

    .line 7
    :cond_20
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processClosed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    iget-object v2, v2, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "destroy requested"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->f:Lio/bidmachine/BidMachineAd$d;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$d;)Lio/bidmachine/BidMachineAd$d;

    .line 4
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6
    invoke-virtual {v0, p0}, Lio/bidmachine/AdResponse;->removeCallback(Lio/bidmachine/AdProcessCallback;)V

    .line 8
    :cond_19
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$200(Lio/bidmachine/BidMachineAd;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/AdCridThreadHandler;

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/AdCridThreadHandler;

    return-void
.end method

.method public processExpired()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "processExpired"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->g:Lio/bidmachine/BidMachineAd$d;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$d;)Lio/bidmachine/BidMachineAd$d;

    .line 6
    new-instance v0, Lio/bidmachine/BidMachineAd$c$e;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c$e;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/AdCridThreadHandler;

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/AdCridThreadHandler;

    return-void
.end method

.method public processFillAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "processFillAd"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processFinished()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    goto :goto_1f

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_1f
    return-void

    .line 7
    :cond_20
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "processFinished"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lio/bidmachine/BidMachineAd$c$d;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c$d;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadFail(Lio/bidmachine/utils/BMError;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLoadFail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->e:Lio/bidmachine/BidMachineAd$d;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$d;)Lio/bidmachine/BidMachineAd$d;

    .line 3
    new-instance v0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadSuccess()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->c:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "processLoadSuccess"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$d;)Lio/bidmachine/BidMachineAd$d;

    .line 6
    new-instance v0, Lio/bidmachine/BidMachineAd$c$a;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c$a;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processShowFail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processShown()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    return-void

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "processShown"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lio/bidmachine/BidMachineAd$c$b;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c$b;-><init>(Lio/bidmachine/BidMachineAd$c;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd.c.a (io.bidmachine.BidMachineAd$c$a)
.class public Lio/bidmachine/BidMachineAd$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$c;->processLoadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public static synthetic $r8$lambda$-cNJRfmWZftnGJmloWgnnYgRP3Q(Lio/bidmachine/BidMachineAd$c$a;Lio/bidmachine/AdListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c$a;->a(Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$a;->a:Lio/bidmachine/BidMachineAd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/bidmachine/AdListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$a;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdLoaded"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$a;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdLoaded(Lio/bidmachine/IAd;)V

    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$a;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$a$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidMachineAd$c$a;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$a$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$c$a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c$a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c$a;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$a;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$a;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c$a;->$r8$lambda$-cNJRfmWZftnGJmloWgnnYgRP3Q(Lio/bidmachine/BidMachineAd$c$a;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd.c.b (io.bidmachine.BidMachineAd$c$b)
.class public Lio/bidmachine/BidMachineAd$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$c;->processShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public static synthetic $r8$lambda$fvSt5yUCd0IPpqc51w-mxMvvDGc(Lio/bidmachine/BidMachineAd$c$b;Lio/bidmachine/AdListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c$b;->a(Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$b;->a:Lio/bidmachine/BidMachineAd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/bidmachine/AdListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$b;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdImpression"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$b;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdImpression(Lio/bidmachine/IAd;)V

    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$b;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$b$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidMachineAd$c$b;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$b$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$c$b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c$b;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c$b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$b;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$b;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c$b;->$r8$lambda$fvSt5yUCd0IPpqc51w-mxMvvDGc(Lio/bidmachine/BidMachineAd$c$b;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd.c.RunnableC1100c (io.bidmachine.BidMachineAd$c$c)
.class public Lio/bidmachine/BidMachineAd$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$c;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public static synthetic $r8$lambda$TcegDjfz5zbpyGeZEzEW1Ve6n_U(Lio/bidmachine/BidMachineAd$c$c;Lio/bidmachine/AdListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c$c;->a(Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$c;->a:Lio/bidmachine/BidMachineAd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/bidmachine/AdListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$c;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdClicked"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$c;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdClicked(Lio/bidmachine/IAd;)V

    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$c;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$c$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidMachineAd$c$c;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$c$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$c$c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c$c;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c$c;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$c$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$c;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$c$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$c;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c$c;->$r8$lambda$TcegDjfz5zbpyGeZEzEW1Ve6n_U(Lio/bidmachine/BidMachineAd$c$c;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd.c.d (io.bidmachine.BidMachineAd$c$d)
.class public Lio/bidmachine/BidMachineAd$c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$c;->processFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public static synthetic $r8$lambda$Vzn64NGM23WNimSTQ3XjtpIoHlI(Lio/bidmachine/BidMachineAd$c$d;Lio/bidmachine/AdListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c$d;->a(Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$d;->a:Lio/bidmachine/BidMachineAd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/bidmachine/AdListener;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lio/bidmachine/AdRewardedListener;

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$d;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdRewarded"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 3
    check-cast p1, Lio/bidmachine/AdRewardedListener;

    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$d;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p1, v0}, Lio/bidmachine/AdRewardedListener;->onAdRewarded(Lio/bidmachine/IAd;)V

    :cond_16
    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$d;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$d$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$d$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidMachineAd$c$d;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$d$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$c$d$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c$d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c$d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$d$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$d;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$d$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$d;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c$d;->$r8$lambda$Vzn64NGM23WNimSTQ3XjtpIoHlI(Lio/bidmachine/BidMachineAd$c$d;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd.c.e (io.bidmachine.BidMachineAd$c$e)
.class public Lio/bidmachine/BidMachineAd$c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$c;->processExpired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public static synthetic $r8$lambda$kZsE4BIFbOyY_Qa4_rspX_t9y1s(Lio/bidmachine/BidMachineAd$c$e;Lio/bidmachine/AdListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd$c$e;->a(Lio/bidmachine/AdListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$e;->a:Lio/bidmachine/BidMachineAd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/bidmachine/AdListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$e;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdExpired"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$e;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdExpired(Lio/bidmachine/IAd;)V

    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$e;->a:Lio/bidmachine/BidMachineAd$c;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$c;->b:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachineAd$c$e$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachineAd$c$e$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/BidMachineAd$c$e;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$e$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$c$e$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$e$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c$e;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c$e;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$e$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$e;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$e$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd$c$e;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c$e;->$r8$lambda$kZsE4BIFbOyY_Qa4_rspX_t9y1s(Lio/bidmachine/BidMachineAd$c$e;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda1 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/BidMachineAd$c;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/BidMachineAd$c;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$XQcJUGXClsde7WxDx3umXaqmH_w(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda2 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/BidMachineAd$c;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/BidMachineAd$c;

    check-cast p1, Lio/bidmachine/AdResponse;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$oMoo4HA1NrJs7a5oCo4gi8N-omo(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/AdResponse;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda3 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/BidMachineAd$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/BidMachineAd$c;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$X1vhHfDkD4WBtn4TIywCHpCQR88(Lio/bidmachine/BidMachineAd$c;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda4 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/BidMachineAd$c;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/BidMachineAd$c;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$nsS6tIh9K9VMtixwqv4tNAx5MfM(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda5 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/BidMachineAd$c;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/BidMachineAd$c;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/utils/BMError;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$u-Utd1NH57yC1Qgl05c3c2-Pag4(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda6 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/BidMachineAd$c;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/BidMachineAd$c;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda6;->f$1:Lio/bidmachine/utils/BMError;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$VcpD05Q9Tw49DvEZEM-OUf6bJZI(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/utils/BMError;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda7 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd$c;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$c;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/BidMachineAd$c;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/BidMachineAd$c;

    check-cast p1, Lio/bidmachine/AdListener;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$c;->$r8$lambda$SNyLFrpqLH8Ppya8jEywSlK2IFs(Lio/bidmachine/BidMachineAd$c;Lio/bidmachine/AdListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachineAd.d (io.bidmachine.BidMachineAd$d)
.class public final enum Lio/bidmachine/BidMachineAd$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/BidMachineAd$d;

.field public static final enum b:Lio/bidmachine/BidMachineAd$d;

.field public static final enum c:Lio/bidmachine/BidMachineAd$d;

.field public static final enum d:Lio/bidmachine/BidMachineAd$d;

.field public static final enum e:Lio/bidmachine/BidMachineAd$d;

.field public static final enum f:Lio/bidmachine/BidMachineAd$d;

.field public static final enum g:Lio/bidmachine/BidMachineAd$d;

.field public static final synthetic h:[Lio/bidmachine/BidMachineAd$d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/BidMachineAd$d;

    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Requesting"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd$d;

    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Loading"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->c:Lio/bidmachine/BidMachineAd$d;

    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Success"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Failed"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->e:Lio/bidmachine/BidMachineAd$d;

    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Destroyed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->f:Lio/bidmachine/BidMachineAd$d;

    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    const-string v1, "Expired"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->g:Lio/bidmachine/BidMachineAd$d;

    .line 2
    invoke-static {}, Lio/bidmachine/BidMachineAd$d;->a()[Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    sput-object v0, Lio/bidmachine/BidMachineAd$d;->h:[Lio/bidmachine/BidMachineAd$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lio/bidmachine/BidMachineAd$d;
    .registers 7

    .line 1
    sget-object v0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/BidMachineAd$d;

    sget-object v1, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd$d;

    sget-object v2, Lio/bidmachine/BidMachineAd$d;->c:Lio/bidmachine/BidMachineAd$d;

    sget-object v3, Lio/bidmachine/BidMachineAd$d;->d:Lio/bidmachine/BidMachineAd$d;

    sget-object v4, Lio/bidmachine/BidMachineAd$d;->e:Lio/bidmachine/BidMachineAd$d;

    sget-object v5, Lio/bidmachine/BidMachineAd$d;->f:Lio/bidmachine/BidMachineAd$d;

    sget-object v6, Lio/bidmachine/BidMachineAd$d;->g:Lio/bidmachine/BidMachineAd$d;

    filled-new-array/range {v0 .. v6}, [Lio/bidmachine/BidMachineAd$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/BidMachineAd$d;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/BidMachineAd$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/BidMachineAd$d;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/BidMachineAd$d;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/BidMachineAd$d;->h:[Lio/bidmachine/BidMachineAd$d;

    invoke-virtual {v0}, [Lio/bidmachine/BidMachineAd$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/BidMachineAd$d;

    return-object v0
.end method

###### Class io.bidmachine.BidMachineAd$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidMachineAd;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/BidMachineAd;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->$r8$lambda$SV873FyWFexSXfkJwv8ZwaozPw0(Lio/bidmachine/BidMachineAd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
