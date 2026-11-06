###### Class io.bidmachine.media3.exoplayer.audio.TrimmingAudioProcessor (io.bidmachine.media3.exoplayer.audio.TrimmingAudioProcessor)
.class public final Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;
.super Lio/bidmachine/media3/common/audio/BaseAudioProcessor;
.source "TrimmingAudioProcessor.java"


# instance fields
.field public endBuffer:[B

.field public endBufferSize:I

.field public pendingTrimStartBytes:I

.field public reconfigurationPending:Z

.field public trimEndFrames:I

.field public trimStartFrames:I

.field public trimmedFrameCount:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 40
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 5

    .line 140
    invoke-super {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v0, :cond_1c

    .line 144
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    iput v3, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 147
    :cond_1c
    invoke-super {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTrimmedFrameCount()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-wide v0
.end method

.method public isEnded()Z
    .registers 2

    .line 152
    invoke-super {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 81
    iget v0, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_f

    .line 83
    :cond_9
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    .line 86
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimStartFrames:I

    if-nez v0, :cond_1d

    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimEndFrames:I

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    sget-object p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    :cond_1d
    :goto_1d
    return-object p1
.end method

.method public onFlush()V
    .registers 4

    .line 168
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 170
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    .line 171
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimEndFrames:I

    iget-object v2, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 172
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimStartFrames:I

    mul-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 183
    :cond_17
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    return-void
.end method

.method public onQueueEndOfStream()V
    .registers 6

    .line 157
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    if-eqz v0, :cond_16

    .line 159
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v0, :cond_13

    .line 160
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget-object v3, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    :cond_13
    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    :cond_16
    return-void
.end method

.method public onReset()V
    .registers 2

    .line 188
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 91
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 92
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_d

    goto :goto_2c

    .line 100
    :cond_d
    iget v3, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 101
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget-object v6, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 102
    iget v4, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v4, v3

    iput v4, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    add-int/2addr v0, v3

    .line 103
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v0, :cond_2d

    :goto_2c
    return-void

    :cond_2d
    sub-int/2addr v2, v3

    .line 114
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 115
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 118
    iget v4, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 119
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 123
    invoke-static {v0, v5, v2}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    .line 124
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 125
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 130
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 131
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 133
    iget p1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 135
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public resetTrimmedFrameCount()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-void
.end method

.method public setTrimFrameCount(II)V
    .registers 3

    .line 54
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimStartFrames:I

    .line 55
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->trimEndFrames:I

    return-void
.end method
