###### Class io.bidmachine.media3.common.util.TimestampAdjuster (io.bidmachine.media3.common.util.TimestampAdjuster)
.class public final Lio/bidmachine/media3/common/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# instance fields
.field public firstSampleTimestampUs:J

.field public lastUnadjustedTimestampUs:J

.field public final nextSampleTimestampUs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->reset(J)V

    return-void
.end method

.method public static ptsToUs(J)J
    .registers 8

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    move-wide v0, p0

    .line 274
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static usToNonWrappedPts(J)J
    .registers 8

    const-wide/32 v2, 0x15f90

    const-wide/32 v4, 0xf4240

    move-wide v0, p0

    .line 298
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static usToWrappedPts(J)J
    .registers 4

    .line 285
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide p0

    const-wide v0, 0x200000000L

    rem-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized adjustSampleTimestamp(J)J
    .registers 7

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 247
    monitor-exit p0

    return-wide v0

    .line 249
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_38

    .line 251
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    .line 252
    iget-object v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_3f

    :cond_32
    :goto_32
    sub-long/2addr v0, p1

    .line 254
    iput-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 258
    :cond_38
    iput-wide p1, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    .line 259
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_30

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_30

    throw p1
.end method

.method public declared-synchronized adjustTsTimestamp(J)J
    .registers 11

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 198
    monitor-exit p0

    return-wide v0

    .line 200
    :cond_c
    :try_start_c
    iget-wide v2, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3e

    .line 203
    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 204
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long/2addr v6, v4

    add-long/2addr v6, p1

    mul-long/2addr v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 208
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3e

    move-wide p1, v6

    goto :goto_3e

    :catchall_3c
    move-exception p1

    goto :goto_48

    .line 212
    :cond_3e
    :goto_3e
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_3c

    monitor-exit p0

    return-wide p1

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_3c

    throw p1
.end method

.method public declared-synchronized adjustTsTimestampGreaterThanPreviousTimestamp(J)J
    .registers 13

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 226
    monitor-exit p0

    return-wide v0

    .line 228
    :cond_c
    :try_start_c
    iget-wide v2, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2d

    .line 230
    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x200000000L

    .line 231
    div-long v4, v0, v2

    mul-long v6, v4, v2

    add-long/2addr v6, p1

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-long/2addr p1, v4

    cmp-long v0, v6, v0

    if-ltz v0, :cond_2d

    move-wide p1, v6

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_37

    .line 236
    :cond_2d
    :goto_2d
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_2b

    monitor-exit p0

    return-wide p1

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2b

    throw p1
.end method

.method public declared-synchronized getFirstSampleTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 151
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    :cond_15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1a
    monitor-exit p0

    return-wide v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public declared-synchronized getLastAdjustedTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 161
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 162
    iget-wide v2, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, v2

    goto :goto_16

    :catchall_10
    move-exception v0

    goto :goto_18

    .line 163
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_10

    .line 161
    :goto_16
    monitor-exit p0

    return-wide v0

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_10

    throw v0
.end method

.method public declared-synchronized getTimestampOffsetUs()J
    .registers 3

    monitor-enter p0

    .line 171
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .registers 5

    monitor-enter p0

    .line 264
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized reset(J)V
    .registers 5

    monitor-enter p0

    .line 182
    :try_start_1
    iput-wide p1, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p1, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_15

    :cond_14
    move-wide p1, v0

    .line 183
    :goto_15
    iput-wide p1, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 184
    iput-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 185
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public declared-synchronized sharedInitializeOrWait(ZJJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 119
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_28

    if-eqz v0, :cond_1c

    .line 120
    monitor-exit p0

    return-void

    :cond_1c
    if-eqz p1, :cond_2a

    .line 122
    :try_start_1e
    iget-object p1, p0, Lio/bidmachine/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_7d

    :catchall_28
    move-exception p1

    goto :goto_7f

    :cond_2a
    const-wide/16 p1, 0x0

    move-wide v5, p1

    move-wide v3, p4

    .line 127
    :goto_2e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_7d

    cmp-long p3, p4, p1

    if-nez p3, :cond_3c

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2e

    :cond_3c
    cmp-long p3, v3, p1

    if-lez p3, :cond_42

    move p3, v2

    goto :goto_43

    :cond_42
    move p3, v1

    .line 131
    :goto_43
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 133
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    add-long/2addr v5, v3

    cmp-long p3, v5, p4

    if-ltz p3, :cond_7a

    .line 135
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result p3

    if-eqz p3, :cond_5e

    goto :goto_7a

    .line 136
    :cond_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TimestampAdjuster failed to initialize in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " milliseconds"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7a
    .catchall {:try_start_1e .. :try_end_7a} :catchall_28

    :cond_7a
    :goto_7a
    sub-long v3, p4, v5

    goto :goto_2e

    .line 144
    :cond_7d
    :goto_7d
    monitor-exit p0

    return-void

    :goto_7f
    :try_start_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_28

    throw p1
.end method
