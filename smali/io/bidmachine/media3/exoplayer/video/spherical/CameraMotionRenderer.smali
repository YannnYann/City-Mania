###### Class io.bidmachine.media3.exoplayer.video.spherical.CameraMotionRenderer (io.bidmachine.media3.exoplayer.video.spherical.CameraMotionRenderer)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;
.super Lio/bidmachine/media3/exoplayer/BaseRenderer;
.source "CameraMotionRenderer.java"


# instance fields
.field public final buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public lastTimestampUs:J

.field public listener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x6

    .line 49
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 50
    new-instance v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 51
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 70
    check-cast p2, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    .line 72
    :cond_9
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 116
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onDisabled()V
    .registers 1

    .line 84
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->resetListener()V

    return-void
.end method

.method public onPositionReset(JZ)V
    .registers 4

    const-wide/high16 p1, -0x8000000000000000L

    .line 78
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 79
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->resetListener()V

    return-void
.end method

.method public final parseMetadata(Ljava/nio/ByteBuffer;)[F
    .registers 5

    .line 126
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x3

    .line 131
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_26
    if-ge v1, p1, :cond_37

    .line 133
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_37
    return-object v0
.end method

.method public render(JJ)V
    .registers 9

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_6b

    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_6b

    .line 91
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 92
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object p3

    .line 93
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_6b

    .line 94
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_6b

    .line 98
    :cond_2c
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide p3, p3, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 99
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    cmp-long p3, p3, v1

    if-gez p3, :cond_3b

    const/4 v0, 0x1

    .line 100
    :cond_3b
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p3, :cond_0

    if-eqz v0, :cond_42

    goto :goto_0

    .line 104
    :cond_42
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 105
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object p3, p3, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->parseMetadata(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_58

    goto :goto_0

    .line 110
    :cond_58
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    invoke-static {p4}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getStreamOffsetUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    goto :goto_0

    :cond_6b
    :goto_6b
    return-void
.end method

.method public final resetListener()V
    .registers 2

    .line 139
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 140
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_7
    return-void
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .registers 3

    .line 61
    const-string v0, "application/x-camera-motion"

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x4

    .line 62
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    .line 63
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method
