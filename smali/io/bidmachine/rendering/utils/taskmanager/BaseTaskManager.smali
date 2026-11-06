###### Class io.bidmachine.rendering.utils.taskmanager.BaseTaskManager (io.bidmachine.rendering.utils.taskmanager.BaseTaskManager)
.class public abstract Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/taskmanager/TaskManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Z)V
    .registers 4

    .line 1
    :try_start_0
    instance-of v0, p1, Lio/bidmachine/util/Cancelable;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lio/bidmachine/util/Cancelable;

    invoke-interface {p1, p2}, Lio/bidmachine/util/Cancelable;->setCancel(Z)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-void
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

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;->a(Ljava/lang/Runnable;Z)V

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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
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

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/utils/taskmanager/BaseTaskManager;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
