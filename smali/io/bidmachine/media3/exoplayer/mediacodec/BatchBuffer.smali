###### Class io.bidmachine.media3.exoplayer.mediacodec.BatchBuffer (io.bidmachine.media3.exoplayer.mediacodec.BatchBuffer)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;
.super Lio/bidmachine/media3/decoder/DecoderInputBuffer;
.source "BatchBuffer.java"


# instance fields
.field public lastSampleTimeUs:J

.field public maxSampleCount:I

.field public sampleCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    const/16 v0, 0x20

    .line 46
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    return-void
.end method


# virtual methods
.method public append(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 6

    .line 96
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 97
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->hasSupplementalData()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 98
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 99
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->canAppendSampleBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_21
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-nez v0, :cond_36

    .line 103
    iget-wide v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 104
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isKeyFrame()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 105
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    .line 108
    :cond_36
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_46

    .line 110
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 111
    iget-object v2, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    :cond_46
    iget-wide v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return v1
.end method

.method public final canAppendSampleBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 6

    .line 118
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 122
    :cond_8
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    return v3

    .line 125
    :cond_10
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_27

    .line 126
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_27

    .line 128
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    add-int/2addr v0, p1

    const p1, 0x2ee000

    if-le v0, p1, :cond_27

    return v3

    :cond_27
    return v1
.end method

.method public clear()V
    .registers 2

    .line 51
    invoke-super {p0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    return-void
.end method

.method public getFirstSampleTimeUs()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    return-wide v0
.end method

.method public getLastSampleTimeUs()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return-wide v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 79
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    return v0
.end method

.method public hasSamples()Z
    .registers 2

    .line 84
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxSampleCount(I)V
    .registers 3

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 57
    :goto_5
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 58
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    return-void
.end method
