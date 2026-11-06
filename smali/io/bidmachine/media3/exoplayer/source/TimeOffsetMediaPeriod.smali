###### Class io.bidmachine.media3.exoplayer.source.TimeOffsetMediaPeriod (io.bidmachine.media3.exoplayer.source.TimeOffsetMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;
.super Ljava/lang/Object;
.source "TimeOffsetMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;
    }
.end annotation


# instance fields
.field public callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public final mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;J)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 49
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    return-void
.end method


# virtual methods
.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 8

    .line 151
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 153
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo;->buildUpon()Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr v2, v4

    .line 154
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->build()Lio/bidmachine/media3/exoplayer/LoadingInfo;

    move-result-object p1

    .line 151
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 7

    .line 111
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 7

    .line 129
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 6

    .line 135
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    return-wide v2

    .line 138
    :cond_d
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 6

    .line 143
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    return-wide v2

    .line 146
    :cond_d
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 70
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 2

    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 175
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 33
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 170
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 6

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 60
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 6

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    return-wide v2

    .line 119
    :cond_10
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 6

    .line 165
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .registers 6

    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 16

    .line 85
    array-length v0, p3

    new-array v4, v0, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_5
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_18

    .line 87
    aget-object v2, p3, v1

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;

    if-eqz v2, :cond_13

    .line 88
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->getChildStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v8

    :cond_13
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 90
    :cond_18
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long v6, p5, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 91
    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 97
    :goto_25
    array-length p4, p3

    if-ge v0, p4, :cond_47

    .line 98
    aget-object p4, v4, v0

    if-nez p4, :cond_2f

    .line 100
    aput-object v8, p3, v0

    goto :goto_44

    .line 101
    :cond_2f
    aget-object p5, p3, v0

    if-eqz p5, :cond_3b

    check-cast p5, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;

    .line 102
    invoke-virtual {p5}, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->getChildStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object p5

    if-eq p5, p4, :cond_44

    .line 103
    :cond_3b
    new-instance p5, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    invoke-direct {p5, p4, v1, v2}, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;-><init>(Lio/bidmachine/media3/exoplayer/source/SampleStream;J)V

    aput-object p5, p3, v0

    :cond_44
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 106
    :cond_47
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, p3

    return-wide p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.TimeOffsetMediaPeriod.TimeOffsetSampleStream (io.bidmachine.media3.exoplayer.source.TimeOffsetMediaPeriod$TimeOffsetSampleStream)
.class public final Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;
.super Ljava/lang/Object;
.source "TimeOffsetMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeOffsetSampleStream"
.end annotation


# instance fields
.field public final sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

.field public final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/SampleStream;J)V
    .registers 4

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 185
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->timeOffsetUs:J

    return-void
.end method


# virtual methods
.method public getChildStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;
    .registers 2

    .line 189
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    return-object v0
.end method

.method public isReady()Z
    .registers 2

    .line 194
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 8

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_10

    .line 207
    iget-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->timeOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    :cond_10
    return p1
.end method

.method public skipData(J)I
    .registers 6

    .line 214
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->sampleStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod$TimeOffsetSampleStream;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
