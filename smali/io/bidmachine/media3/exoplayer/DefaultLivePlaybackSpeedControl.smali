###### Class io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl (io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl)
.class public final Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    }
.end annotation


# instance fields
.field public adjustedPlaybackSpeed:F

.field public currentTargetLiveOffsetUs:J

.field public final fallbackMaxPlaybackSpeed:F

.field public final fallbackMinPlaybackSpeed:F

.field public idealTargetLiveOffsetUs:J

.field public lastPlaybackSpeedUpdateMs:J

.field public final maxLiveOffsetErrorUsForUnitSpeed:J

.field public maxPlaybackSpeed:F

.field public maxTargetLiveOffsetUs:J

.field public mediaConfigurationTargetLiveOffsetUs:J

.field public minPlaybackSpeed:F

.field public final minPossibleLiveOffsetSmoothingFactor:F

.field public minTargetLiveOffsetUs:J

.field public final minUpdateIntervalMs:J

.field public final proportionalControlFactor:F

.field public smoothedMinPossibleLiveOffsetDeviationUs:J

.field public smoothedMinPossibleLiveOffsetUs:J

.field public targetLiveOffsetOverrideUs:J

.field public final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method public constructor <init>(FFJFJJF)V
    .registers 11

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    .line 289
    iput p2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    .line 290
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    .line 291
    iput p5, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    .line 292
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 293
    iput-wide p8, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    .line 294
    iput p10, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 295
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 296
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 297
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 298
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 299
    iput p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 300
    iput p2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 301
    iput p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 302
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 303
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 304
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 305
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 306
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

.method public synthetic constructor <init>(FFJFJJFLio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$1;)V
    .registers 12

    .line 52
    invoke-direct/range {p0 .. p10}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJF)V

    return-void
.end method

.method public static smooth(JJF)J
    .registers 5

    .line 0
    long-to-float p0, p0

    mul-float/2addr p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final adjustTargetLiveOffsetUs(J)V
    .registers 15

    .line 431
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v2, 0x3

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    mul-long/2addr v4, v2

    add-long v10, v0, v4

    .line 433
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    cmp-long v0, v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_3b

    .line 437
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    .line 438
    iget v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-long v2, v0

    .line 440
    iget p2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    float-to-long p1, p2

    add-long/2addr v2, p1

    .line 442
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v0, v2

    const/4 v2, 0x3

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v10, v2, v3

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    const/4 p1, 0x2

    aput-wide v0, v2, p1

    .line 443
    invoke-static {v2}, Lcom/google/common/primitives/Longs;->max([J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-void

    .line 448
    :cond_3b
    iget v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 449
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v6, p1, v0

    .line 450
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 451
    invoke-static/range {v6 .. v11}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 452
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_62

    cmp-long p1, p1, v0

    if-lez p1, :cond_62

    .line 454
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_62
    return-void
.end method

.method public getAdjustedPlaybackSpeed(JJ)F
    .registers 9

    .line 350
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_e

    return v1

    .line 354
    :cond_e
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->updateSmoothedMinPossibleLiveOffsetUs(JJ)V

    .line 356
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long p3, p3, v2

    if-eqz p3, :cond_27

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr p3, v2

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_27

    .line 358
    iget p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1

    .line 360
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 362
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustTargetLiveOffsetUs(J)V

    .line 363
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 364
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_40

    .line 365
    iput v1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_4f

    .line 367
    :cond_40
    iget p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    long-to-float p1, p1

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    .line 368
    iget p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget p2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 369
    invoke-static {p3, p1, p2}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 371
    :goto_4f
    iget p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1
.end method

.method public getTargetLiveOffsetUs()J
    .registers 3

    .line 376
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public final maybeResetTargetLiveOffsetUs()V
    .registers 8

    .line 381
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2a

    .line 382
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_12

    goto :goto_2b

    .line 386
    :cond_12
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-gez v6, :cond_1d

    move-wide v0, v4

    .line 389
    :cond_1d
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_28

    cmp-long v6, v0, v4

    if-lez v6, :cond_28

    goto :goto_2b

    :cond_28
    move-wide v4, v0

    goto :goto_2b

    :cond_2a
    move-wide v4, v2

    .line 394
    :goto_2b
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_32

    return-void

    .line 397
    :cond_32
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 398
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 399
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 400
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 401
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public notifyRebuffer()V
    .registers 8

    .line 337
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    return-void

    .line 340
    :cond_c
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 341
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v0, v0, v4

    if-lez v0, :cond_1d

    .line 343
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 345
    :cond_1d
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public setLiveConfiguration(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V
    .registers 5

    .line 311
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 312
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 313
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 315
    iget v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_22

    goto :goto_24

    .line 317
    :cond_22
    iget v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    :goto_24
    iput v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 319
    iget p1, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2d

    goto :goto_2f

    .line 321
    :cond_2d
    iget p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    :goto_2f
    iput p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_42

    cmpl-float p1, p1, v1

    if-nez p1, :cond_42

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 324
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 326
    :cond_42
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .registers 3

    .line 331
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 332
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public final updateSmoothedMinPossibleLiveOffsetUs(JJ)V
    .registers 7

    sub-long/2addr p1, p3

    .line 406
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_13

    .line 407
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 p1, 0x0

    .line 408
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void

    .line 412
    :cond_13
    iget v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 415
    invoke-static {p3, p4, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p3

    .line 413
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 421
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 422
    invoke-static {p3, p4, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl.AnonymousClass1 (io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$1;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl.Builder (io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl$Builder)
.class public final Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public fallbackMaxPlaybackSpeed:F

.field public fallbackMinPlaybackSpeed:F

.field public maxLiveOffsetErrorUsForUnitSpeed:J

.field public minPossibleLiveOffsetSmoothingFactor:F

.field public minUpdateIntervalMs:J

.field public proportionalControlFactorUs:F

.field public targetLiveOffsetIncrementOnRebufferUs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7851ec    # 0.97f

    .line 109
    iput v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    const v0, 0x3f83d70a    # 1.03f

    .line 110
    iput v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    const-wide/16 v0, 0x3e8

    .line 111
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    const v0, 0x33d6bf95    # 1.0E-7f

    .line 112
    iput v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    const-wide/16 v0, 0x14

    .line 114
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    const-wide/16 v0, 0x1f4

    .line 116
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    const v0, 0x3f7fbe77    # 0.999f

    .line 117
    iput v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;
    .registers 13

    .line 246
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    iget v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    iget v5, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    iget v10, p0, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJFLio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$1;)V

    return-object v0
.end method
