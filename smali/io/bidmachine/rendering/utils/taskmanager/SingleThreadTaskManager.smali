###### Class io.bidmachine.rendering.utils.taskmanager.SingleThreadTaskManager (io.bidmachine.rendering.utils.taskmanager.SingleThreadTaskManager)
.class public abstract Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;
.super Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/os/Handler;
.end method

.method public b()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public cancel(Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;->cancel(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "delay",
            "timeUnit"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
