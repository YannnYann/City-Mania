###### Class io.bidmachine.media3.common.util.ConditionVariable (io.bidmachine.media3.common.util.ConditionVariable)
.class public Lio/bidmachine/media3/common/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    sget-object v0, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/common/util/ConditionVariable;-><init>(Lio/bidmachine/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/util/Clock;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_b

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    goto :goto_d

    .line 87
    :cond_b
    monitor-exit p0

    return-void

    :goto_d
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_9

    throw v0
.end method

.method public declared-synchronized blockUninterruptible()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 122
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-nez v1, :cond_e

    .line 124
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_c
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_2

    :catchall_a
    move-exception v0

    goto :goto_19

    :catch_c
    const/4 v0, 0x1

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_17

    .line 131
    :try_start_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_a

    .line 133
    :cond_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_a

    throw v0
.end method

.method public declared-synchronized close()Z
    .registers 3

    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 75
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    .line 59
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    .line 60
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 62
    :try_start_9
    iput-boolean v0, p0, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen:Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 64
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method
