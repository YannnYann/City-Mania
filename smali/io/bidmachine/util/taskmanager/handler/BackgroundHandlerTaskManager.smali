###### Class io.bidmachine.util.taskmanager.handler.BackgroundHandlerTaskManager (io.bidmachine.util.taskmanager.handler.BackgroundHandlerTaskManager)
.class public final Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;
.super Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
.source "BackgroundHandlerTaskManager.kt"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandlerTaskManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    invoke-direct {p0, v1}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;-><init>(Landroid/os/Handler;)V

    return-void
.end method
