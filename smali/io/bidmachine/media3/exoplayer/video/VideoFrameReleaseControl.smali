###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "VideoFrameReleaseControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;,
        Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;
    }
.end annotation


# instance fields
.field public final allowedJoiningTimeMs:J

.field public clock:Lio/bidmachine/media3/common/util/Clock;

.field public firstFrameState:I

.field public frameReadyWithoutSurface:Z

.field public final frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

.field public final frameTimingEvaluator:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

.field public hasOutputSurface:Z

.field public initialPositionUs:J

.field public joiningDeadlineMs:J

.field public joiningRenderNextFrameImmediately:Z

.field public lastPresentationTimeUs:J

.field public lastReleaseRealtimeUs:J

.field public playbackSpeed:F

.field public started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V
    .registers 5

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 201
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    .line 202
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    const/4 p1, 0x0

    .line 203
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 204
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 205
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 206
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 207
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    .line 208
    sget-object p1, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .registers 2

    .line 278
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 279
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    :cond_7
    return-void
.end method

.method public final calculateEarlyTimeUs(JJJ)J
    .registers 7

    sub-long/2addr p5, p1

    long-to-double p1, p5

    .line 464
    iget p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    float-to-double p5, p5

    div-double/2addr p1, p5

    double-to-long p1, p1

    .line 465
    iget-boolean p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz p5, :cond_17

    .line 467
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p5}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p5

    invoke-static {p5, p6}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p5

    sub-long/2addr p5, p3

    sub-long/2addr p1, p5

    :cond_17
    return-wide p1
.end method

.method public getFrameReleaseAction(JJJJZZLio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v1, p3

    move-object/from16 v9, p11

    .line 354
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$000(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)V

    .line 356
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v7

    if-nez v3, :cond_18

    .line 357
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 359
    :cond_18
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    .line 360
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v3, v5, v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 361
    iput-wide v5, v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    :cond_25
    move-wide/from16 v3, p5

    .line 365
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->calculateEarlyTimeUs(JJJ)J

    move-result-wide v5

    move-object v10, v0

    .line 364
    invoke-static {v9, v5, v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    const/16 v16, 0x3

    if-eqz p9, :cond_36

    if-nez p10, :cond_36

    return v16

    .line 370
    :cond_36
    iget-boolean v0, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    const/4 v11, 0x4

    const/16 v17, 0x5

    const/4 v12, 0x1

    if-nez v0, :cond_64

    .line 371
    iput-boolean v12, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    .line 373
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 374
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v1

    const/4 v8, 0x1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p10

    .line 373
    invoke-interface/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldIgnoreFrame(JJJZZ)Z

    move-result v0

    if-eqz v0, :cond_54

    return v11

    .line 381
    :cond_54
    iget-boolean v0, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v0, :cond_63

    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_63

    return v16

    :cond_63
    return v17

    .line 385
    :cond_64
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v3

    move-wide/from16 v1, p3

    move-wide/from16 v5, p7

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->shouldForceRelease(JJJ)Z

    move-result v3

    const/4 v0, 0x0

    if-eqz v3, :cond_75

    return v0

    .line 388
    :cond_75
    iget-boolean v1, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v1, :cond_e4

    iget-wide v1, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v1, p3, v1

    if-nez v1, :cond_80

    goto :goto_e4

    .line 393
    :cond_80
    iget-object v1, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->nanoTime()J

    move-result-wide v1

    .line 394
    iget-object v3, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 395
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v4

    const-wide/16 v13, 0x3e8

    mul-long/2addr v4, v13

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v3

    .line 394
    invoke-static {v9, v3, v4}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$202(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 396
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$200(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    div-long/2addr v3, v13

    invoke-static {v9, v3, v4}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 398
    iget-wide v1, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_ac

    iget-boolean v1, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v1, :cond_ac

    move v8, v12

    goto :goto_ad

    :cond_ac
    move v8, v0

    .line 400
    :goto_ad
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 401
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p10

    .line 400
    invoke-interface/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldIgnoreFrame(JJJZZ)Z

    move-result v0

    if-eqz v0, :cond_c0

    return v11

    :cond_c0
    move-object v0, v10

    .line 403
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    move v1, v12

    .line 404
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v11

    move-wide/from16 v13, p5

    move/from16 v15, p10

    .line 403
    invoke-interface/range {v10 .. v15}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldDropFrame(JJZ)Z

    move-result v0

    if-eqz v0, :cond_d7

    if-eqz v8, :cond_d5

    return v16

    :cond_d5
    const/4 v0, 0x2

    return v0

    .line 407
    :cond_d7
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v2

    const-wide/32 v4, 0xc350

    cmp-long v0, v2, v4

    if-lez v0, :cond_e3

    return v17

    :cond_e3
    return v1

    :cond_e4
    :goto_e4
    return v17
.end method

.method public isReady(Z)Z
    .registers 10

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_18

    .line 293
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_15

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    if-eqz p1, :cond_18

    .line 297
    :cond_15
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return v0

    .line 299
    :cond_18
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_20

    return v3

    .line 302
    :cond_20
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_2d

    return v0

    .line 307
    :cond_2d
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return v3
.end method

.method public join(Z)V
    .registers 6

    .line 322
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    .line 324
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_14

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_19

    :cond_14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_19
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return-void
.end method

.method public final lowerFirstFrameState(I)V
    .registers 3

    .line 444
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    return-void
.end method

.method public onDisabled()V
    .registers 2

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    return-void
.end method

.method public onEnabled(Z)V
    .registers 2

    .line 216
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    return-void
.end method

.method public onFrameReleasedIsFirstFrame()Z
    .registers 4

    .line 262
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 263
    :goto_8
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 264
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    return v0
.end method

.method public onProcessedStreamChange()V
    .registers 2

    const/4 v0, 0x2

    .line 240
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    .line 227
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onStarted()V

    return-void
.end method

.method public onStopped()V
    .registers 3

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 234
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onStopped()V

    return-void
.end method

.method public reset()V
    .registers 4

    .line 415
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 416
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 417
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    const/4 v2, 0x1

    .line 418
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 419
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .registers 3

    .line 430
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setClock(Lio/bidmachine/media3/common/util/Clock;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method

.method public setFrameRate(F)V
    .registers 3

    .line 253
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 245
    :goto_7
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    .line 246
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    .line 247
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 248
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 435
    :goto_8
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 436
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_12

    return-void

    .line 439
    :cond_12
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    .line 440
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    return-void
.end method

.method public final shouldForceRelease(JJJ)Z
    .registers 11

    .line 476
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v0, :cond_11

    return v1

    .line 480
    :cond_11
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-eqz v0, :cond_46

    const/4 v2, 0x1

    if-eq v0, v2, :cond_45

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3f

    const/4 p1, 0x3

    if-ne v0, p1, :cond_39

    .line 488
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 489
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iget-wide p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    sub-long/2addr p1, p5

    .line 490
    iget-boolean p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz p5, :cond_38

    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 491
    invoke-interface {p5, p3, p4, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldForceReleaseFrame(JJ)Z

    move-result p1

    if-eqz p1, :cond_38

    return v2

    :cond_38
    return v1

    .line 493
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3f
    cmp-long p1, p1, p5

    if-ltz p1, :cond_44

    return v2

    :cond_44
    return v1

    :cond_45
    return v2

    .line 482
    :cond_46
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl.FrameReleaseInfo (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl$FrameReleaseInfo)
.class public Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;
.super Ljava/lang/Object;
.source "VideoFrameReleaseControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameReleaseInfo"
.end annotation


# instance fields
.field public earlyUs:J

.field public releaseTimeNs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->earlyUs:J

    .line 95
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->releaseTimeNs:J

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)V
    .registers 1

    .line 88
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->reset()V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J
    .registers 3

    .line 88
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->earlyUs:J

    return-wide v0
.end method

.method public static synthetic access$102(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J
    .registers 3

    .line 88
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->earlyUs:J

    return-wide p1
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J
    .registers 3

    .line 88
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->releaseTimeNs:J

    return-wide v0
.end method

.method public static synthetic access$202(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J
    .registers 3

    .line 88
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->releaseTimeNs:J

    return-wide p1
.end method


# virtual methods
.method public getEarlyUs()J
    .registers 3

    .line 103
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->earlyUs:J

    return-wide v0
.end method

.method public getReleaseTimeNs()J
    .registers 3

    .line 111
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->releaseTimeNs:J

    return-wide v0
.end method

.method public final reset()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->earlyUs:J

    .line 116
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->releaseTimeNs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl$FrameTimingEvaluator)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;
.super Ljava/lang/Object;
.source "VideoFrameReleaseControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameTimingEvaluator"
.end annotation


# virtual methods
.method public abstract shouldDropFrame(JJZ)Z
.end method

.method public abstract shouldForceReleaseFrame(JJ)Z
.end method

.method public abstract shouldIgnoreFrame(JJJZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method
