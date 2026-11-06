###### Class io.bidmachine.util.taskmanager.handler.HandlerTaskManager (io.bidmachine.util.taskmanager.handler.HandlerTaskManager)
.class public Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
.super Lio/bidmachine/util/taskmanager/BaseTaskManager;
.source "HandlerTaskManager.kt"


# instance fields
.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/BaseTaskManager;-><init>()V

    .line 14
    iput-object p1, p0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public cancelTask(Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .line 9
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final isCurrentThread()Z
    .registers 3

    .line 33
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public scheduleTask(Ljava/lang/Runnable;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_11

    .line 20
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 22
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->isCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 23
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 25
    :cond_1b
    iget-object p2, p0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
