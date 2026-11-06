###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStream (io.bidmachine.media3.exoplayer.hls.HlsSampleStream)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;


# instance fields
.field public sampleQueueIndex:I

.field public final sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final trackGroupIndex:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 34
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->trackGroupIndex:I

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method


# virtual methods
.method public bindSampleQueue()V
    .registers 3

    .line 39
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 40
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->bindSampleQueueToSampleStream(I)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method public final hasValidSampleQueueIndex()Z
    .registers 3

    .line 92
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v1, -0x3

    if-eq v0, v1, :cond_d

    const/4 v1, -0x2

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 54
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_18

    .line 55
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isReady(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_17

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 64
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    return-void

    :cond_e
    const/4 v1, -0x3

    if-eq v0, v1, :cond_16

    .line 66
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowError(I)V

    :cond_16
    return-void

    .line 61
    :cond_17
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/SampleQueueMappingException;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 62
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 6

    .line 73
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    const/4 p1, 0x4

    .line 74
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/decoder/Buffer;->addFlag(I)V

    const/4 p1, -0x4

    return p1

    .line 77
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 78
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readData(ILio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1

    :cond_1a
    return v1
.end method

.method public skipData(J)I
    .registers 5

    .line 84
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->skipData(IJ)I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public unbindSampleQueue()V
    .registers 4

    .line 44
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 45
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleStreamWrapper:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->unbindSampleQueue(I)V

    .line 46
    iput v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->sampleQueueIndex:I

    :cond_e
    return-void
.end method
