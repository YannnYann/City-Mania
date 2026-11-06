###### Class io.bidmachine.BidTokenTaskManager (io.bidmachine.BidTokenTaskManager)
.class public Lio/bidmachine/BidTokenTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Lio/bidmachine/utils/task/BackgroundTaskManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Lio/bidmachine/utils/task/CancelableTask;)V
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/BidTokenTaskManager;->get()Lio/bidmachine/utils/task/BackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/utils/task/BackgroundTaskManager;->cancel(Lio/bidmachine/utils/task/CancelableTask;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/BidTokenTaskManager;->get()Lio/bidmachine/utils/task/BackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/utils/task/BackgroundTaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static get()Lio/bidmachine/utils/task/BackgroundTaskManager;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/BidTokenTaskManager;->instance:Lio/bidmachine/utils/task/BackgroundTaskManager;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/utils/task/BackgroundTaskManager;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/BidTokenTaskManager;->instance:Lio/bidmachine/utils/task/BackgroundTaskManager;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/utils/task/BackgroundTaskManager;

    invoke-direct {v0}, Lio/bidmachine/utils/task/BackgroundTaskManager;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/BidTokenTaskManager;->instance:Lio/bidmachine/utils/task/BackgroundTaskManager;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    return-object v0
.end method

.method public static schedule(Lio/bidmachine/utils/task/CancelableTask;JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/bidmachine/BidTokenTaskManager;->get()Lio/bidmachine/utils/task/BackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/bidmachine/utils/task/BackgroundTaskManager;->schedule(Lio/bidmachine/utils/task/CancelableTask;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
