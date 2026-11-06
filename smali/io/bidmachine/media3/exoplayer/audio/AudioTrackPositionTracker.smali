###### Class io.bidmachine.media3.exoplayer.audio.AudioTrackPositionTracker (io.bidmachine.media3.exoplayer.audio.AudioTrackPositionTracker)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# instance fields
.field public audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

.field public audioTrack:Landroid/media/AudioTrack;

.field public audioTrackPlaybackSpeed:F

.field public bufferSize:I

.field public bufferSizeUs:J

.field public clock:Lio/bidmachine/media3/common/util/Clock;

.field public endPlaybackHeadPosition:J

.field public expectRawPlaybackHeadReset:Z

.field public forceResetWorkaroundTimeMs:J

.field public getLatencyMethod:Ljava/lang/reflect/Method;

.field public hasData:Z

.field public isOutputPcm:Z

.field public lastLatencySampleTimeUs:J

.field public lastPlayheadSampleTimeUs:J

.field public lastPositionUs:J

.field public lastRawPlaybackHeadPositionSampleTimeMs:J

.field public lastSampleUsedGetTimestampMode:Z

.field public lastSystemTimeUs:J

.field public latencyUs:J

.field public final listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field public needsPassthroughWorkarounds:Z

.field public nextPlayheadOffsetIndex:I

.field public notifiedPositionIncreasing:Z

.field public outputPcmFrameSize:I

.field public outputSampleRate:I

.field public passthroughWorkaroundPauseOffset:J

.field public playheadOffsetCount:I

.field public final playheadOffsets:[J

.field public previousModePositionUs:J

.field public previousModeSystemTimeUs:J

.field public rawPlaybackHeadPosition:J

.field public rawPlaybackHeadWrapCount:J

.field public smoothedPlayheadOffsetUs:J

.field public stopPlaybackHeadPosition:J

.field public stopTimestampUs:J

.field public sumRawPlaybackHeadPosition:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V
    .registers 4

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 228
    :try_start_b
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_16} :catch_16

    :catch_16
    const/16 p1, 0xa

    .line 232
    new-array p1, p1, [J

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 233
    sget-object p1, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method

.method public static needsPassthroughWorkarounds(I)Z
    .registers 3

    .line 621
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public expectRawPlaybackHeadReset()V
    .registers 2

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    .line 488
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    if-eqz v0, :cond_a

    .line 489
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->expectTimestampFramePositionReset()V

    :cond_a
    return-void
.end method

.method public final forceHasPendingData()Z
    .registers 5

    .line 611
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 612
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 613
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPositionUs()J
    .registers 20

    move-object/from16 v0, p0

    .line 288
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 289
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 290
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    .line 295
    :cond_14
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v2}, Lio/bidmachine/media3/common/util/Clock;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 297
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    .line 298
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->hasAdvancingTimestamp()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 301
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v9

    .line 302
    iget v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v9, v10, v11}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v9

    .line 303
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v11

    sub-long v11, v4, v11

    .line 304
    iget v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 305
    invoke-static {v11, v12, v2}, Lio/bidmachine/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_88

    .line 308
    :cond_43
    iget v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_62

    .line 311
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_5d

    .line 313
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getSimulatedPlaybackHeadPositionAfterStop()J

    move-result-wide v11

    iget v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 312
    invoke-static {v11, v12, v2}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v11

    goto :goto_6b

    .line 314
    :cond_5d
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v11

    goto :goto_6b

    .line 319
    :cond_62
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v11, v4

    iget v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 320
    invoke-static {v11, v12, v2}, Lio/bidmachine/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v11

    .line 324
    :goto_6b
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 325
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    cmp-long v2, v13, v9

    if-eqz v2, :cond_87

    .line 326
    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 327
    invoke-static {v9, v10, v2}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_88

    :cond_87
    move-wide v9, v11

    .line 331
    :goto_88
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v2, v8, :cond_94

    .line 333
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 334
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 336
    :cond_94
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v11, v4, v11

    const-wide/32 v13, 0xf4240

    cmp-long v2, v11, v13

    if-gez v2, :cond_b2

    move-wide v15, v6

    .line 340
    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 342
    invoke-static {v11, v12, v2}, Lio/bidmachine/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v17

    add-long v6, v6, v17

    mul-long/2addr v11, v15

    .line 345
    div-long/2addr v11, v13

    mul-long/2addr v9, v11

    sub-long v11, v15, v11

    mul-long/2addr v11, v6

    add-long/2addr v9, v11

    .line 348
    div-long/2addr v9, v15

    .line 351
    :cond_b2
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v2, :cond_e3

    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v2, v9, v6

    if-lez v2, :cond_e3

    .line 353
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v3, :cond_e3

    const/4 v1, 0x1

    .line 354
    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    .line 355
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    sub-long v1, v9, v1

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    .line 356
    iget v3, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 357
    invoke-static {v1, v2, v3}, Lio/bidmachine/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v1

    .line 359
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 360
    invoke-interface {v3}, Lio/bidmachine/media3/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    sub-long/2addr v6, v1

    .line 361
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v1, v6, v7}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionAdvancing(J)V

    .line 364
    :cond_e3
    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 365
    iput-wide v9, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 366
    iput-boolean v8, v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    return-wide v9
.end method

.method public final getPlaybackHeadPosition()J
    .registers 7

    .line 638
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 639
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getSimulatedPlaybackHeadPositionAfterStop()J

    move-result-wide v0

    .line 640
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 642
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 643
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2b

    .line 645
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->updateRawPlaybackHeadPosition(J)V

    .line 646
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    .line 648
    :cond_2b
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getPlaybackHeadPositionUs()J
    .registers 4

    .line 626
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSimulatedPlaybackHeadPositionAfterStop()J
    .registers 5

    .line 652
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 654
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    return-wide v0

    .line 657
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    sub-long/2addr v0, v2

    .line 658
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 659
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v0

    .line 660
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v0

    .line 661
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public handleEndOfStream(J)V
    .registers 5

    .line 448
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 449
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 450
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    return-void
.end method

.method public hasPendingData(J)Z
    .registers 6

    .line 460
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getCurrentPositionUs()J

    move-result-wide v0

    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_17

    .line 461
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public isPlaying()Z
    .registers 3

    .line 381
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isStalled(J)Z
    .registers 7

    .line 435
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_22

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 437
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public mayHandleBuffer(J)Z
    .registers 11

    .line 392
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 393
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_18

    .line 398
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    return v3

    :cond_18
    if-ne v0, v2, :cond_25

    .line 405
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_25

    return v3

    .line 410
    :cond_25
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 411
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    if-eqz v1, :cond_40

    if-nez p1, :cond_40

    if-eq v0, v2, :cond_40

    .line 413
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iget p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    :cond_40
    return v2
.end method

.method public final maybePollAndCheckTimestamp(J)V
    .registers 16

    .line 546
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    .line 547
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 552
    :cond_f
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v5

    .line 553
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    .line 554
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v9

    sub-long v1, v5, p1

    .line 555
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v1, v1, v7

    if-lez v1, :cond_32

    .line 556
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    invoke-interface/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 558
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->rejectTimestamp()V

    return-void

    :cond_32
    move-wide v11, v7

    move-wide v7, p1

    move-wide p1, v11

    .line 559
    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 560
    invoke-static {v3, v4, v1}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 559
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-lez p1, :cond_4d

    .line 562
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    invoke-interface/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 564
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->rejectTimestamp()V

    return-void

    .line 566
    :cond_4d
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->acceptTimestamp()V

    return-void
.end method

.method public final maybeSampleSyncParams()V
    .registers 12

    .line 513
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 514
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_53

    .line 515
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1e

    goto :goto_57

    .line 521
    :cond_1e
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v8, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 522
    invoke-static {v2, v3, v8}, Lio/bidmachine/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v2

    sub-long/2addr v2, v0

    aput-wide v2, v6, v7

    .line 524
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    rem-int/2addr v2, v3

    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 525
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_3c

    add-int/lit8 v2, v2, 0x1

    .line 526
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 528
    :cond_3c
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 529
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 530
    :goto_41
    iget v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_53

    .line 531
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v7, v6, v2

    int-to-long v9, v3

    div-long/2addr v7, v9

    add-long/2addr v4, v7

    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 535
    :cond_53
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_58

    :goto_57
    return-void

    .line 541
    :cond_58
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(J)V

    .line 542
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    return-void
.end method

.method public final maybeUpdateLatency(J)V
    .registers 9

    .line 571
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_51

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-ltz v1, :cond_51

    .line 577
    :try_start_13
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 578
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v2, 0x0

    .line 581
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v4, v0, v4

    if-lez v4, :cond_4f

    .line 584
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v4, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    .line 585
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4b} :catch_4c

    goto :goto_4f

    :catch_4c
    const/4 v0, 0x0

    .line 589
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 591
    :cond_4f
    :goto_4f
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    :cond_51
    return-void
.end method

.method public pause()Z
    .registers 5

    .line 470
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 471
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 474
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    const/4 v0, 0x1

    return v0

    .line 477
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 500
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    return-void
.end method

.method public final resetSyncParams()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 596
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 597
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 598
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 599
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 600
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 601
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 602
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;ZIII)V
    .registers 8

    .line 253
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 254
    iput p4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 255
    iput p5, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 256
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    .line 257
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1e

    .line 258
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    move p2, p1

    :goto_1f
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 259
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_37

    .line 262
    div-int/2addr p5, p4

    int-to-long p2, p5

    iget p4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {p2, p3, p4}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p2

    goto :goto_38

    :cond_37
    move-wide p2, v0

    .line 263
    :goto_38
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 p2, 0x0

    .line 264
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 265
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 266
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    .line 267
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    .line 268
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 269
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 270
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 271
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 272
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 273
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 274
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    return-void
.end method

.method public setAudioTrackPlaybackSpeed(F)V
    .registers 2

    .line 278
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 281
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    if-eqz p1, :cond_9

    .line 282
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 284
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    return-void
.end method

.method public setClock(Lio/bidmachine/media3/common/util/Clock;)V
    .registers 2

    .line 509
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method

.method public start()V
    .registers 5

    .line 373
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 374
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 376
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return-void
.end method

.method public final updateRawPlaybackHeadPosition(J)V
    .registers 13

    .line 665
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 666
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_4f

    .line 671
    :cond_10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 672
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2c

    cmp-long v0, v2, v4

    if-nez v0, :cond_2c

    .line 677
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iput-wide v6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 679
    :cond_2c
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v2, v6

    .line 682
    :cond_2f
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1d

    if-gt v0, v6, :cond_52

    cmp-long v0, v2, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_50

    .line 683
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v0, v8, v4

    if-lez v0, :cond_50

    const/4 v0, 0x3

    if-ne v1, v0, :cond_50

    .line 691
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4f

    .line 692
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    :cond_4f
    :goto_4f
    return-void

    .line 696
    :cond_50
    iput-wide v6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 700
    :cond_52
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_6c

    .line 701
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    if-eqz v0, :cond_65

    .line 702
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    const/4 p1, 0x0

    .line 703
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    goto :goto_6c

    .line 706
    :cond_65
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 709
    :cond_6c
    :goto_6c
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioTrackPositionTracker.Listener (io.bidmachine.media3.exoplayer.audio.AudioTrackPositionTracker$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onInvalidLatency(J)V
.end method

.method public abstract onPositionAdvancing(J)V
.end method

.method public abstract onPositionFramesMismatch(JJJJ)V
.end method

.method public abstract onSystemTimeUsMismatch(JJJJ)V
.end method

.method public abstract onUnderrun(IJ)V
.end method
