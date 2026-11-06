###### Class io.bidmachine.ads.networks.gam_dynamic.TaskExecutorImpl (io.bidmachine.ads.networks.gam_dynamic.TaskExecutorImpl)
.class public Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;
.super Ljava/lang/Object;
.source "TaskExecutorImpl.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;


# static fields
.field public static final CORE_POOL_SIZE:I


# instance fields
.field public final executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;->CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    sget v0, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;->CORE_POOL_SIZE:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executorService"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;J)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "delayMs"
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutorImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_9

    const/4 p1, 0x1

    return p1

    :catchall_9
    move-exception p1

    .line 39
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
