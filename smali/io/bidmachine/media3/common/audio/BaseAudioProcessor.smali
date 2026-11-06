###### Class io.bidmachine.media3.common.audio.BaseAudioProcessor (io.bidmachine.media3.common.audio.BaseAudioProcessor)
.class public abstract Lio/bidmachine/media3/common/audio/BaseAudioProcessor;
.super Ljava/lang/Object;
.source "BaseAudioProcessor.java"

# interfaces
.implements Lio/bidmachine/media3/common/audio/AudioProcessor;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

.field public inputEnded:Z

.field public outputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public pendingInputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

.field public pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 45
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 46
    sget-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 47
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 48
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 49
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method


# virtual methods
.method public final configure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 56
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->onConfigure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 57
    invoke-virtual {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->isActive()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p1

    :cond_11
    sget-object p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p1
.end method

.method public final flush()V
    .registers 2

    .line 89
    sget-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 93
    invoke-virtual {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->onFlush()V

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    .line 75
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 76
    sget-object v1, Lio/bidmachine/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final hasPendingOutput()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isEnded()Z
    .registers 3

    .line 84
    iget-boolean v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lio/bidmachine/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onConfigure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation
.end method

.method public onFlush()V
    .registers 1

    .line 0
    return-void
.end method

.method public onQueueEndOfStream()V
    .registers 1

    .line 0
    return-void
.end method

.method public onReset()V
    .registers 1

    .line 0
    return-void
.end method

.method public final queueEndOfStream()V
    .registers 2

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    .line 69
    invoke-virtual {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->onQueueEndOfStream()V

    return-void
.end method

.method public final replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_17

    .line 114
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1c

    .line 116
    :cond_17
    iget-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 118
    :goto_1c
    iget-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final reset()V
    .registers 2

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->flush()V

    .line 99
    sget-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 100
    sget-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 101
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 102
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 103
    iput-object v0, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 104
    invoke-virtual {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->onReset()V

    return-void
.end method
