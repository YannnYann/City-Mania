###### Class io.bidmachine.p (io.bidmachine.p)
.class public abstract Lio/bidmachine/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lio/bidmachine/utils/task/TaskManager;


# direct methods
.method public static a()Lio/bidmachine/utils/task/TaskManager;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/p;->a:Lio/bidmachine/utils/task/TaskManager;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/p;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/p;->a:Lio/bidmachine/utils/task/TaskManager;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/utils/task/BackgroundTaskManager;

    invoke-direct {v0}, Lio/bidmachine/utils/task/BackgroundTaskManager;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/p;->a:Lio/bidmachine/utils/task/TaskManager;

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
