###### Class io.bidmachine.media3.exoplayer.audio.AudioTimestampPoller (io.bidmachine.media3.exoplayer.audio.AudioTimestampPoller)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
    }
.end annotation


# instance fields
.field public final audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

.field public initialTimestampPositionFrames:J

.field public initializeSystemTimeUs:J

.field public lastTimestampSampleTimeUs:J

.field public sampleIntervalUs:J

.field public state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 109
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return-void
.end method


# virtual methods
.method public acceptTimestamp()V
    .registers 3

    .line 192
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    :cond_8
    return-void
.end method

.method public expectTimestampFramePositionReset()V
    .registers 2

    .line 244
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_7

    .line 245
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset()V

    :cond_7
    return-void
.end method

.method public getTimestampPositionFrames()J
    .registers 3

    .line 236
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .registers 3

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public hasAdvancingTimestamp()Z
    .registers 3

    .line 213
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public maybePollTimestamp(J)Z
    .registers 9

    .line 123
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    goto :goto_78

    .line 126
    :cond_10
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 127
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->maybeUpdateTimestamp()Z

    move-result v0

    .line 128
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_4f

    const/4 p1, 0x2

    if-eq v2, v4, :cond_39

    if-eq v2, p1, :cond_33

    if-eq v2, v3, :cond_2d

    const/4 p1, 0x4

    if-ne v2, p1, :cond_27

    goto :goto_77

    .line 173
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2d
    if-eqz v0, :cond_77

    .line 166
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return v0

    :cond_33
    if-nez v0, :cond_77

    .line 160
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return v0

    :cond_39
    if-eqz v0, :cond_4b

    .line 149
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v1

    .line 150
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_77

    .line 151
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    return v0

    .line 154
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return v0

    :cond_4f
    if-eqz v0, :cond_6a

    .line 131
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide p1

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long p1, p1, v2

    if-ltz p1, :cond_69

    .line 133
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 134
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    return v0

    :cond_69
    return v1

    .line 139
    :cond_6a
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x7a120

    cmp-long p1, p1, v1

    if-lez p1, :cond_77

    .line 144
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    :cond_77
    :goto_77
    return v0

    :cond_78
    :goto_78
    return v1
.end method

.method public rejectTimestamp()V
    .registers 2

    const/4 v0, 0x4

    .line 184
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 218
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    :cond_8
    return-void
.end method

.method public final updateState(I)V
    .registers 8

    .line 250
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_27

    const/4 v2, 0x1

    if-eq p1, v2, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    const-wide/32 v0, 0x7a120

    .line 267
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void

    .line 270
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1e
    const-wide/32 v0, 0x989680

    .line 264
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void

    .line 260
    :cond_24
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void

    :cond_27
    const-wide/16 v2, 0x0

    .line 254
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    const-wide/16 v2, -0x1

    .line 255
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 257
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioTimestampPoller.AudioTimestampWrapper (io.bidmachine.media3.exoplayer.audio.AudioTimestampPoller$AudioTimestampWrapper)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTimestampWrapper"
.end annotation


# instance fields
.field public accumulatedRawTimestampFramePosition:J

.field public final audioTimestamp:Landroid/media/AudioTimestamp;

.field public final audioTrack:Landroid/media/AudioTrack;

.field public expectTimestampFramePositionReset:Z

.field public lastTimestampPositionFrames:J

.field public lastTimestampRawPositionFrames:J

.field public rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 2

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTrack:Landroid/media/AudioTrack;

    .line 302
    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public expectTimestampFramePositionReset()V
    .registers 2

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    return-void
.end method

.method public getTimestampPositionFrames()J
    .registers 3

    .line 338
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .registers 5

    .line 334
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public maybeUpdateTimestamp()Z
    .registers 8

    .line 312
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 314
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 315
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_28

    .line 316
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    if-eqz v5, :cond_21

    .line 317
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    const/4 v3, 0x0

    .line 318
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    goto :goto_28

    .line 321
    :cond_21
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    .line 324
    :cond_28
    :goto_28
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    .line 325
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    :cond_35
    return v0
.end method
