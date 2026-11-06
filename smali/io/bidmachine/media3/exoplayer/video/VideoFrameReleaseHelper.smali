###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;,
        Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;,
        Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;
    }
.end annotation


# instance fields
.field public changeFrameRateStrategy:I

.field public final displayHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

.field public formatFrameRate:F

.field public frameIndex:J

.field public final frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

.field public lastAdjustedFrameIndex:J

.field public lastAdjustedReleaseTimeNs:J

.field public pendingLastAdjustedFrameIndex:J

.field public pendingLastAdjustedReleaseTimeNs:J

.field public playbackSpeed:F

.field public started:Z

.field public surface:Landroid/view/Surface;

.field public surfaceMediaFrameRate:F

.field public surfacePlaybackFrameRate:F

.field public vsyncDurationNs:J

.field public vsyncOffsetNs:J

.field public final vsyncSampler:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 134
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->maybeBuildDisplayHelper(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz p1, :cond_17

    .line 135
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->getInstance()Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 137
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 138
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 139
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V

    return-void
.end method

.method public static adjustmentAllowed(JJ)Z
    .registers 4

    sub-long/2addr p0, p2

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 p2, 0x1312d00

    cmp-long p0, p0, p2

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static closestVsync(JJJ)J
    .registers 10

    sub-long v0, p0, p2

    .line 400
    div-long/2addr v0, p4

    mul-long/2addr v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_c

    sub-long p4, p2, p4

    goto :goto_10

    :cond_c
    add-long/2addr p4, p2

    move-wide v2, p4

    move-wide p4, p2

    move-wide p2, v2

    :goto_10
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long p0, v0, p0

    if-gez p0, :cond_18

    return-wide p2

    :cond_18
    return-wide p4
.end method


# virtual methods
.method public adjustReleaseTime(J)J
    .registers 13

    .line 255
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 256
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameDurationNs()J

    move-result-wide v0

    .line 257
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    .line 260
    invoke-static {p1, p2, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-wide v4, v2

    goto :goto_30

    .line 263
    :cond_2c
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    :cond_2f
    move-wide v4, p1

    .line 266
    :goto_30
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 267
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 269
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz p1, :cond_57

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_46

    goto :goto_57

    .line 272
    :cond_46
    iget-wide v6, p1, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_4d

    goto :goto_57

    .line 277
    :cond_4d
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    invoke-static/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->closestVsync(JJJ)J

    move-result-wide p1

    .line 279
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_57
    :goto_57
    return-wide v4
.end method

.method public final clearSurfaceFrameRate()V
    .registers 4

    .line 375
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_1d

    .line 381
    :cond_18
    iput v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 382
    invoke-static {v0, v2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final maybeBuildDisplayHelper(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 421
    :cond_4
    const-string v1, "display"

    .line 422
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_13

    .line 423
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/hardware/display/DisplayManager;)V

    :cond_13
    return-object v0
.end method

.method public onFormatChanged(F)V
    .registers 2

    .line 205
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 206
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->reset()V

    .line 207
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onNextFrame(J)V
    .registers 7

    .line 216
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 217
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 218
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 220
    :cond_e
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 221
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->onNextFrame(J)V

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 2

    .line 194
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 195
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    const/4 p1, 0x0

    .line 196
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onPositionReset()V
    .registers 1

    .line 185
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    return-void
.end method

.method public onStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 161
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 162
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_1a

    .line 163
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->addObserver()V

    .line 164
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->register()V

    :cond_1a
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 2

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_15

    .line 229
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    .line 230
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserver()V

    .line 232
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_5

    return-void

    .line 178
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 179
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public final resetAdjustment()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 283
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v0, -0x1

    .line 284
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 285
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .registers 3

    .line 151
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_5

    return-void

    .line 154
    :cond_5
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public final updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V
    .registers 6

    if-eqz p1, :cond_19

    .line 389
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 390
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    .line 391
    div-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    return-void

    .line 393
    :cond_19
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 394
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 395
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    return-void
.end method

.method public final updateSurfaceMediaFrameRate()V
    .registers 6

    .line 301
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_69

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_b

    goto :goto_69

    .line 306
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameRate()F

    move-result v0

    goto :goto_1c

    :cond_1a
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 307
    :goto_1c
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_23

    goto :goto_69

    :cond_23
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_58

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_58

    .line 315
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 316
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 317
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->getMatchingFrameDurationSumNs()J

    move-result-wide v1

    const-wide v3, 0x12a05f200L

    cmp-long v1, v1, v3

    if-ltz v1, :cond_48

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_4a

    :cond_48
    const/high16 v1, 0x3f800000    # 1.0f

    .line 323
    :goto_4a
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_57

    goto :goto_63

    :cond_57
    return-void

    :cond_58
    if-eqz v4, :cond_5b

    goto :goto_63

    .line 327
    :cond_5b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 328
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->getFramesWithoutSyncCount()I

    move-result v2

    if-lt v2, v1, :cond_69

    .line 333
    :goto_63
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :cond_69
    :goto_69
    return-void
.end method

.method public final updateSurfacePlaybackFrameRate(Z)V
    .registers 5

    .line 349
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_30

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    goto :goto_30

    .line 356
    :cond_11
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_21

    .line 357
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float/2addr v1, v2

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-nez p1, :cond_2b

    .line 361
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2b

    goto :goto_30

    .line 364
    :cond_2b
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 365
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_30
    :goto_30
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper.Api30 (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper$Api30)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api30"
.end annotation


# direct methods
.method public static setSurfaceFrameRate(Landroid/view/Surface;F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    .line 436
    :goto_8
    :try_start_8
    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$Api30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Surface;FI)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 438
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Failed to call Surface.setFrameRate"

    invoke-static {p1, v0, p0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper.DisplayHelper (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper$DisplayHelper)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayHelper"
.end annotation


# instance fields
.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/hardware/display/DisplayManager;)V
    .registers 3

    .line 447
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->this$0:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final getDefaultDisplay()Landroid/view/Display;
    .registers 3

    .line 478
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    if-nez p1, :cond_b

    .line 463
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->this$0:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->access$000(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    :cond_b
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public register()V
    .registers 3

    .line 452
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 453
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->this$0:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;->access$000(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 457
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler (io.bidmachine.media3.exoplayer.video.VideoFrameReleaseHelper$VSyncSampler)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VSyncSampler"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# instance fields
.field public choreographer:Landroid/view/Choreographer;

.field public final choreographerOwnerThread:Landroid/os/HandlerThread;

.field public final handler:Landroid/os/Handler;

.field public observerCount:I

.field public volatile sampledVsyncTimeNs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 495
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 507
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 508
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    .line 509
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 510
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 511
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static getInstance()Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;
    .registers 1

    .line 503
    sget-object v0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    return-object v0
.end method


# virtual methods
.method public addObserver()V
    .registers 3

    .line 519
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final addObserverInternal()V
    .registers 4

    .line 563
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_f

    .line 564
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    if-ne v1, v2, :cond_f

    .line 566
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_f
    return-void
.end method

.method public final createChoreographerInstanceInternal()V
    .registers 4

    .line 555
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    .line 558
    const-string v1, "VideoFrameReleaseHelper"

    const-string v2, "Vsync sampling disabled due to platform error"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public doFrame(J)V
    .registers 5

    .line 532
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 533
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 538
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 p1, 0x0

    return p1

    .line 546
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserverInternal()V

    return v0

    .line 543
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->addObserverInternal()V

    return v0

    .line 540
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->createChoreographerInstanceInternal()V

    return v0
.end method

.method public removeObserver()V
    .registers 3

    .line 527
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final removeObserverInternal()V
    .registers 3

    .line 572
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_16

    .line 573
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    if-nez v1, :cond_16

    .line 575
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 576
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    :cond_16
    return-void
.end method
