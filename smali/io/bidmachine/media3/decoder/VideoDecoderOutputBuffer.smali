###### Class io.bidmachine.media3.decoder.VideoDecoderOutputBuffer (io.bidmachine.media3.decoder.VideoDecoderOutputBuffer)
.class public Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;
.super Lio/bidmachine/media3/decoder/DecoderOutputBuffer;
.source "VideoDecoderOutputBuffer.java"


# instance fields
.field public colorspace:I

.field public height:I

.field public final owner:Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner<",
            "Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# virtual methods
.method public release()V
    .registers 2

    .line 79
    iget-object v0, p0, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->owner:Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
