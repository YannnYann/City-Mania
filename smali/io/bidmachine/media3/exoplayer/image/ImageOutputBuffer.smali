###### Class io.bidmachine.media3.exoplayer.image.ImageOutputBuffer (io.bidmachine.media3.exoplayer.image.ImageOutputBuffer)
.class public abstract Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;
.super Lio/bidmachine/media3/decoder/DecoderOutputBuffer;
.source "ImageOutputBuffer.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    invoke-super {p0}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->clear()V

    return-void
.end method
