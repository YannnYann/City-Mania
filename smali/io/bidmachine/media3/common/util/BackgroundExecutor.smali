###### Class io.bidmachine.media3.common.util.BackgroundExecutor (io.bidmachine.media3.common.util.BackgroundExecutor)
.class public final Lio/bidmachine/media3/common/util/BackgroundExecutor;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# static fields
.field public static staticInstance:Ljava/util/concurrent/Executor;


# direct methods
.method public static declared-synchronized get()Ljava/util/concurrent/Executor;
    .registers 2

    const-class v0, Lio/bidmachine/media3/common/util/BackgroundExecutor;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lio/bidmachine/media3/common/util/BackgroundExecutor;->staticInstance:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_12

    .line 39
    const-string v1, "ExoPlayer:BackgroundExecutor"

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/common/util/BackgroundExecutor;->staticInstance:Ljava/util/concurrent/Executor;

    goto :goto_12

    :catchall_10
    move-exception v1

    goto :goto_16

    .line 41
    :cond_12
    :goto_12
    sget-object v1, Lio/bidmachine/media3/common/util/BackgroundExecutor;->staticInstance:Ljava/util/concurrent/Executor;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_10

    monitor-exit v0

    return-object v1

    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    throw v1
.end method
