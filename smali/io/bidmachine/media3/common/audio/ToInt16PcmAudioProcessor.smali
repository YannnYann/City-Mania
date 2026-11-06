###### Class io.bidmachine.media3.common.audio.ToInt16PcmAudioProcessor (io.bidmachine.media3.common.audio.ToInt16PcmAudioProcessor)
.class public final Lio/bidmachine/media3/common/audio/ToInt16PcmAudioProcessor;
.super Lio/bidmachine/media3/common/audio/BaseAudioProcessor;
.source "ToInt16PcmAudioProcessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 45
    iget v0, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_26

    if-eq v0, v2, :cond_26

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_26

    const/16 v1, 0x15

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_26

    const/16 v1, 0x16

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x60000000

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    goto :goto_26

    .line 54
    :cond_20
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v0

    :cond_26
    :goto_26
    if-eq v0, v2, :cond_32

    .line 57
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget p1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v0, v1, p1, v2}, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    return-object v0

    .line 59
    :cond_32
    sget-object p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p1
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 13

    .line 65
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 69
    iget-object v3, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/high16 v4, 0x60000000

    const/high16 v5, 0x50000000

    const/high16 v6, 0x10000000

    const/16 v7, 0x16

    const/16 v8, 0x15

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v3, v10, :cond_31

    if-eq v3, v9, :cond_34

    if-eq v3, v8, :cond_2f

    if-eq v3, v7, :cond_34

    if-eq v3, v6, :cond_36

    if-eq v3, v5, :cond_2f

    if-ne v3, v4, :cond_29

    goto :goto_34

    .line 89
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 78
    :cond_2f
    div-int/lit8 v2, v2, 0x3

    :cond_31
    mul-int/lit8 v2, v2, 0x2

    goto :goto_36

    .line 83
    :cond_34
    :goto_34
    div-int/lit8 v2, v2, 0x2

    .line 93
    :cond_36
    :goto_36
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lio/bidmachine/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-eq v3, v10, :cond_e4

    if-eq v3, v9, :cond_bf

    if-eq v3, v8, :cond_a8

    if-eq v3, v7, :cond_91

    if-eq v3, v6, :cond_7c

    if-eq v3, v5, :cond_67

    if-ne v3, v4, :cond_61

    :goto_4c
    if-ge v0, v1, :cond_f9

    add-int/lit8 v3, v0, 0x1

    .line 133
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_4c

    .line 155
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_67
    :goto_67
    if-ge v0, v1, :cond_f9

    add-int/lit8 v3, v0, 0x1

    .line 119
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_67

    :cond_7c
    :goto_7c
    if-ge v0, v1, :cond_f9

    add-int/lit8 v3, v0, 0x1

    .line 105
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_7c

    :cond_91
    :goto_91
    if-ge v0, v1, :cond_f9

    add-int/lit8 v3, v0, 0x2

    .line 126
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    .line 127
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_91

    :cond_a8
    :goto_a8
    if-ge v0, v1, :cond_f9

    add-int/lit8 v3, v0, 0x1

    .line 112
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    .line 113
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_a8

    :cond_bf
    :goto_bf
    if-ge v0, v1, :cond_f9

    .line 144
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result v3

    const v4, 0x46fffe00    # 32767.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-short v3, v3

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    .line 146
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 147
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_bf

    :cond_e4
    :goto_e4
    if-ge v0, v1, :cond_f9

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    .line 157
    :cond_f9
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
