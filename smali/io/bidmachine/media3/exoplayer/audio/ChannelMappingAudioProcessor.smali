###### Class io.bidmachine.media3.exoplayer.audio.ChannelMappingAudioProcessor (io.bidmachine.media3.exoplayer.audio.ChannelMappingAudioProcessor)
.class public final Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;
.super Lio/bidmachine/media3/common/audio/BaseAudioProcessor;
.source "ChannelMappingAudioProcessor.java"


# instance fields
.field public outputChannels:[I

.field public pendingOutputChannels:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    if-nez v0, :cond_7

    .line 56
    sget-object p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p1

    .line 59
    :cond_7
    iget v1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    goto :goto_16

    .line 61
    :cond_10
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v0

    .line 64
    :cond_16
    :goto_16
    iget v1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1f

    move v1, v4

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    move v2, v3

    .line 65
    :goto_21
    array-length v5, v0

    if-ge v2, v5, :cond_53

    .line 66
    aget v5, v0, v2

    .line 67
    iget v6, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ge v5, v6, :cond_33

    if-eq v5, v2, :cond_2e

    move v5, v4

    goto :goto_2f

    :cond_2e
    move v5, v3

    :goto_2f
    or-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 68
    :cond_33
    new-instance v1, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel map ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") trying to access non-existent input channel."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v1

    :cond_53
    if-eqz v1, :cond_60

    .line 77
    new-instance v1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    array-length v0, v0

    iget p1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-direct {v1, v2, v0, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    return-object v1

    .line 79
    :cond_60
    sget-object p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p1
.end method

.method public onFlush()V
    .registers 2

    .line 112
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    return-void
.end method

.method public onReset()V
    .registers 2

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 118
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 11

    .line 84
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 85
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 86
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    .line 87
    iget-object v4, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v3, v4

    .line 88
    iget-object v4, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v3, v4

    .line 89
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_20
    if-ge v1, v2, :cond_6f

    .line 91
    array-length v4, v0

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_69

    aget v6, v0, v5

    .line 92
    iget-object v7, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v7, v7, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-static {v7}, Lio/bidmachine/media3/common/util/Util;->getByteDepth(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v1

    .line 93
    iget-object v6, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_5f

    const/4 v8, 0x4

    if-ne v6, v8, :cond_44

    .line 98
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_66

    .line 101
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_5f
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 104
    :cond_69
    iget-object v4, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    add-int/2addr v1, v4

    goto :goto_20

    .line 106
    :cond_6f
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public setChannelMap([I)V
    .registers 2

    .line 48
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method
