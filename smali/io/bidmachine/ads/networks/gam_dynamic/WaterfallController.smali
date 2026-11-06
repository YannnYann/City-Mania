###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController (io.bidmachine.ads.networks.gam_dynamic.WaterfallController)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;
.super Ljava/lang/Object;
.source "WaterfallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;,
        Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;
    }
.end annotation


# static fields
.field public static final TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;


# instance fields
.field public final adUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public final adsFormat:Lio/bidmachine/AdsFormat;

.field public final applicationContext:Landroid/content/Context;

.field public cacheSize:I

.field public final failedWaterfallLoadAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

.field public final gamEventTracker:Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;

.field public final gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

.field public id:Ljava/lang/String;

.field public final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isPolling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isShouldPollAfter:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public maxRetryDegree:I

.field public final networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

.field public refreshTimeOutMs:J

.field public refreshUrl:Ljava/lang/String;

.field public retryBaseSec:I

.field public serverParams:Lcom/explorestack/protobuf/StringValue;

.field public final tag:Lio/bidmachine/utils/Tag;

.field public final taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

.field public final versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

.field public waterfallLoader:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;


# direct methods
.method public static synthetic $r8$lambda$3D_Ia8sY1TeSXao0UU3SGfNL8zg(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;
    .registers 2

    .line 229
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 229
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s) Request next waterfall"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KzLS3-o4Ti-8SBTMOwCIoH3wHyc(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;
    .registers 2

    .line 268
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 268
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s) onWaterfallRequestSuccess"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MKEe7gO0-UlKEILoCKUTi2poeVA(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;
    .registers 2

    .line 214
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 214
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s) Fail to start loading waterfall"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V9i694GD9MmAZPqn3tj5rll1xxI(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 282
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 282
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "(%s) onWaterfallRequestFail - %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jRMfX45J1a8uC0tZ91zhD_9HG2E(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;J)Ljava/lang/String;
    .registers 5

    .line 205
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 208
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->failedWaterfallLoadAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->maxRetryDegree:I

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->retryBaseSec:I

    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p1, p2, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 205
    const-string p1, "(%s) Execution waterfall load started after - %s ms (failedAttempts - %s, maxRetryDegree - %s, retryBase - %s sec)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pQNTio1beMiH_T8OnbAzvWyINDw(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)I
    .registers 4

    .line 304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide v0

    .line 305
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    move-result-wide p0

    .line 304
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public static synthetic $r8$lambda$z5-jOOkUr54INCg3g7RGTpUGJS8(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;
    .registers 2

    .line 289
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 289
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s) Loading completed"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;)V
    .registers 13
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
            0x0
        }
        names = {
            "context",
            "networkParams",
            "adsFormat",
            "waterfallConfiguration",
            "versionWrapper",
            "gamNetwork",
            "gamAdManager",
            "gamEventTracker",
            "taskExecutor"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WaterfallController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->applicationContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

    .line 106
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 107
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    .line 108
    iput-object p6, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    .line 109
    iput-object p7, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    .line 110
    iput-object p9, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    .line 111
    iput-object p8, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamEventTracker:Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;

    .line 112
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adUnitList:Ljava/util/List;

    .line 113
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isPolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isShouldPollAfter:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->failedWaterfallLoadAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    invoke-virtual {p0, p4}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->setWaterfallConfiguration(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    return-void
.end method


# virtual methods
.method public calculateLoadingDelayMs()J
    .registers 6

    .line 222
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->failedWaterfallLoadAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->maxRetryDegree:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 224
    iget v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->retryBaseSec:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public clearWaterfall()V
    .registers 2

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->waterfallLoader:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    return-void
.end method

.method public load(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForced"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_19

    .line 123
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isPolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_19

    .line 124
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isShouldPollAfter:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_19
    return-void

    .line 129
    :cond_1a
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isPolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->failedWaterfallLoadAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 131
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->loadWaterfall()V

    return-void
.end method

.method public loadWaterfall()V
    .registers 16

    .line 190
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isShouldPollAfter:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

    iget-object v5, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    iget-object v6, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->versionWrapper:Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;

    iget-object v7, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    iget-object v8, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iget-object v9, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamEventTracker:Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;

    iget-object v10, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    iget-object v11, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->id:Ljava/lang/String;

    iget-object v12, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adUnitList:Ljava/util/List;

    iget v13, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->cacheSize:I

    new-instance v14, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;

    invoke-direct {v14, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V

    invoke-direct/range {v2 .. v14}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;-><init>(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Ljava/lang/String;Ljava/util/List;ILio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;)V

    iput-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->waterfallLoader:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    .line 203
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->calculateLoadingDelayMs()J

    move-result-wide v0

    .line 204
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;J)V

    invoke-static {v2, v3}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 212
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->taskExecutor:Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;

    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->waterfallLoader:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader;

    invoke-interface {v2, v3, v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 214
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 216
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->processLoadCompleted()V

    :cond_4d
    return-void
.end method

.method public onWaterfallRequestFail(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 284
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->loadWaterfall()V

    return-void
.end method

.method public onWaterfallRequestSuccess(Lio/bidmachine/protobuf/Waterfall$Configuration;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfallConfiguration"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 271
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->setWaterfallConfiguration(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    .line 273
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isShouldPollAfter:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getShouldBreak()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 274
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->processLoadCompleted()V

    return-void

    .line 277
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->loadWaterfall()V

    return-void
.end method

.method public processLoadCompleted()V
    .registers 3

    .line 289
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 291
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->clearWaterfall()V

    .line 292
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public requestNextWaterfall(Ljava/util/Queue;)V
    .registers 7
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

    .line 229
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 231
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->refreshUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->refreshUrl:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_86

    .line 236
    :cond_1b
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 238
    invoke-virtual {v2}, Lio/bidmachine/AdsFormat;->getRemoteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setFormat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->addAllAdUnitResults(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->id:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 243
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setWaterfallId(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 245
    :cond_40
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->gamAdManager:Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adsFormat:Lio/bidmachine/AdsFormat;

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdManager;->getCachedAdUnitList(Lio/bidmachine/AdsFormat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 246
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 247
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->addAllCachedAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 249
    :cond_53
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->networkParams:Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->applicationContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;->getExt(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 251
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 253
    :cond_60
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->serverParams:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_67

    .line 255
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setServerParams(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 257
    :cond_67
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V

    .line 258
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->refreshUrl:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result;

    move-result-object p1

    iget-wide v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->refreshTimeOutMs:J

    long-to-int v3, v3

    invoke-direct {v1, v2, p1, v3}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;-><init>(Ljava/lang/String;Lio/bidmachine/protobuf/Waterfall$Result;I)V

    .line 261
    invoke-virtual {v1, v0}, Lio/bidmachine/core/NetworkRequest;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)V

    .line 262
    invoke-virtual {v1, v0}, Lio/bidmachine/core/NetworkRequest;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)V

    .line 263
    sget-object p1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-virtual {v1, p1}, Lio/bidmachine/core/NetworkRequest;->request(Lio/bidmachine/util/taskmanager/TaskManager;)V

    return-void

    .line 232
    :cond_86
    :goto_86
    const-string p1, "Request next waterfall failed (refreshUrl is null or empty or incorrect)"

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->onWaterfallRequestFail(Ljava/lang/String;)V

    return-void
.end method

.method public setWaterfallConfiguration(Lio/bidmachine/protobuf/Waterfall$Configuration;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfallConfiguration"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->id:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getAdUnitsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 140
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 141
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adUnitList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->adUnitList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->sortDescByPrice(Ljava/util/List;)V

    .line 145
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasRefreshUrl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 146
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getRefreshUrl()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v1

    :goto_2e
    if-eqz v0, :cond_46

    .line 149
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-static {v2}, Lio/bidmachine/core/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 151
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->refreshUrl:Ljava/lang/String;

    .line 155
    :cond_46
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasCacheSize()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 156
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getCacheSize()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    goto :goto_52

    :cond_51
    move-object v0, v1

    :goto_52
    if-eqz v0, :cond_59

    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x1

    .line 160
    :goto_5a
    iput v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->cacheSize:I

    .line 162
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasRetryBase()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 163
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getRetryBase()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    goto :goto_68

    :cond_67
    move-object v0, v1

    :goto_68
    if-eqz v0, :cond_6f

    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result v0

    goto :goto_70

    :cond_6f
    const/4 v0, 0x2

    .line 167
    :goto_70
    iput v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->retryBaseSec:I

    .line 169
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasMaxRetryDegree()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 170
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getMaxRetryDegree()Lcom/explorestack/protobuf/UInt32Value;

    move-result-object v0

    goto :goto_7e

    :cond_7d
    move-object v0, v1

    :goto_7e
    if-eqz v0, :cond_85

    .line 173
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    move-result v0

    goto :goto_86

    :cond_85
    const/4 v0, 0x5

    .line 174
    :goto_86
    iput v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->maxRetryDegree:I

    .line 176
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasRefreshTimeout()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getRefreshTimeout()Lcom/explorestack/protobuf/UInt64Value;

    move-result-object v0

    goto :goto_94

    :cond_93
    move-object v0, v1

    :goto_94
    if-eqz v0, :cond_9b

    .line 180
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt64Value;->getValue()J

    move-result-wide v2

    goto :goto_9d

    :cond_9b
    const-wide/16 v2, 0x2710

    .line 181
    :goto_9d
    iput-wide v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->refreshTimeOutMs:J

    .line 183
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasServerParams()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 184
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 185
    :cond_a9
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->serverParams:Lcom/explorestack/protobuf/StringValue;

    return-void
.end method

.method public sortDescByPrice(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnitList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 302
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController.WaterfallCallback (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$WaterfallCallback)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;
.super Ljava/lang/Object;
.source "WaterfallController.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;
.implements Lio/bidmachine/core/NetworkRequest$CancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaterfallCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .registers 3

    .line 358
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    const-string v1, "Request is canceled"

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->onWaterfallRequestFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Lio/bidmachine/utils/BMError;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmError"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    if-eqz p1, :cond_9

    .line 352
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 353
    :cond_9
    const-string p1, "Unknown"

    .line 351
    :goto_b
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->onWaterfallRequestFail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bmError"
        }
    .end annotation

    .line 337
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/protobuf/Waterfall$Configuration;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 343
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->onWaterfallRequestSuccess(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    return-void

    .line 345
    :cond_8
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    const-string v0, "Configuration response is null"

    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->onWaterfallRequestFail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 337
    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Configuration;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallCallback;->onSuccess(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController.WaterfallLoaderListener (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$WaterfallLoaderListener)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;
.super Ljava/lang/Object;
.source "WaterfallController.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/WaterfallLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaterfallLoaderListener"
.end annotation


# instance fields
.field public final isAdLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;->isAdLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onWaterfallLoadCompleted(Ljava/util/Queue;)V
    .registers 4
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

    .line 328
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    iget-object v0, v0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->isPolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;->isAdLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_17

    .line 330
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    iget-object v0, v0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->failedWaterfallLoadAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 332
    :cond_17
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$WaterfallLoaderListener;->this$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->requestNextWaterfall(Ljava/util/Queue;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    iput-wide p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    iget-wide v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$jRMfX45J1a8uC0tZ91zhD_9HG2E(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$MKEe7gO0-UlKEILoCKUTi2poeVA(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda2;
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
    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    check-cast p2, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    invoke-static {p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$pQNTio1beMiH_T8OnbAzvWyINDw(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$z5-jOOkUr54INCg3g7RGTpUGJS8(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$3D_Ia8sY1TeSXao0UU3SGfNL8zg(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda5 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$V9i694GD9MmAZPqn3tj5rll1xxI(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda6 (io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;->$r8$lambda$KzLS3-o4Ti-8SBTMOwCIoH3wHyc(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallController;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
