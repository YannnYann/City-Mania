###### Class io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl (io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;
.super Ljava/lang/Object;
.source "VideoFrameRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;
    }
.end annotation


# instance fields
.field public final frameRenderer:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

.field public lastPresentationTimeUs:J

.field public latestInputPresentationTimeUs:J

.field public latestOutputPresentationTimeUs:J

.field public outputStreamStartPositionUs:J

.field public outputVideoSize:Lio/bidmachine/media3/common/VideoSize;

.field public final presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

.field public final streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field public final videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "Lio/bidmachine/media3/common/VideoSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    .line 93
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 94
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 95
    new-instance p1, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;

    .line 96
    new-instance p1, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    .line 97
    new-instance p1, Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/LongArrayQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    .line 99
    sget-object v0, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 100
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 101
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    return-void
.end method

.method public static getLastAndClear(Lio/bidmachine/media3/common/util/TimedValueQueue;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 268
    :goto_d
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    if-le v0, v1, :cond_17

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_d

    .line 271
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dropFrame()V
    .registers 2

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArrayQueue;->remove()J

    .line 226
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->dropFrame()V

    return-void
.end method

.method public flush()V
    .registers 5

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArrayQueue;->clear()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    .line 108
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 109
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    .line 110
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_2a

    .line 115
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->getLastAndClear(Lio/bidmachine/media3/common/util/TimedValueQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 119
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v3, v1, v2, v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 121
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->getLastAndClear(Lio/bidmachine/media3/common/util/TimedValueQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/VideoSize;

    .line 125
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v3, v1, v2, v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public isEnded()Z
    .registers 5

    .line 220
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeUpdateOutputStreamStartPosition(J)Z
    .registers 7

    .line 246
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1c

    .line 248
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1c

    .line 249
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeUpdateOutputVideoSize(J)Z
    .registers 4

    .line 256
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/VideoSize;

    if-eqz p1, :cond_1e

    .line 257
    sget-object p2, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    .line 258
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 259
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 260
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Lio/bidmachine/media3/common/VideoSize;

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public onFrameAvailableForRendering(J)V
    .registers 4

    .line 196
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/util/LongArrayQueue;->add(J)V

    .line 197
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 198
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    return-void
.end method

.method public onStreamStartPositionChanged(J)V
    .registers 8

    .line 185
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    .line 186
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    const-wide/16 v1, 0x0

    goto :goto_13

    :cond_10
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 187
    :goto_13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 185
    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .registers 8

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Lio/bidmachine/media3/common/util/TimedValueQueue;

    .line 180
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    const-wide/16 v1, 0x0

    goto :goto_13

    :cond_10
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :goto_13
    new-instance v3, Lio/bidmachine/media3/common/VideoSize;

    invoke-direct {v3, p1, p2}, Lio/bidmachine/media3/common/VideoSize;-><init>(II)V

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method

.method public render(JJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 137
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArrayQueue;->element()J

    move-result-wide v2

    .line 140
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->maybeUpdateOutputStreamStartPosition(J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 141
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onProcessedStreamChange()V

    .line 144
    :cond_19
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    const/4 v11, 0x0

    iget-object v12, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    const/4 v10, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    .line 145
    invoke-virtual/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->getFrameReleaseAction(JJJJZZLio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    const/4 v1, 0x4

    if-eq v0, v1, :cond_44

    const/4 p1, 0x5

    if-ne v0, p1, :cond_3a

    goto :goto_57

    .line 172
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_44
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    goto :goto_0

    .line 158
    :cond_47
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 159
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->dropFrame()V

    goto :goto_0

    .line 166
    :cond_4d
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    .line 167
    :goto_53
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->renderFrame(Z)V

    goto :goto_0

    :cond_57
    :goto_57
    return-void
.end method

.method public final renderFrame(Z)V
    .registers 9

    .line 230
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Lio/bidmachine/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArrayQueue;->remove()J

    move-result-wide v4

    .line 232
    invoke-virtual {p0, v4, v5}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->maybeUpdateOutputVideoSize(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Lio/bidmachine/media3/common/VideoSize;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    :cond_13
    if-eqz p1, :cond_19

    const-wide/16 v0, -0x1

    :goto_17
    move-wide v2, v0

    goto :goto_20

    .line 239
    :cond_19
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getReleaseTimeNs()J

    move-result-wide v0

    goto :goto_17

    .line 240
    :goto_20
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 241
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onFrameReleasedIsFirstFrame()Z

    move-result v6

    .line 240
    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->renderFrame(JJZ)V

    return-void
.end method

.method public signalEndOfInput()V
    .registers 3

    .line 208
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer (io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl$FrameRenderer)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;
.super Ljava/lang/Object;
.source "VideoFrameRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameRenderer"
.end annotation


# virtual methods
.method public abstract dropFrame()V
.end method

.method public abstract onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
.end method

.method public abstract renderFrame(JJZ)V
.end method
