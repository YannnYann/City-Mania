###### Class io.bidmachine.media3.exoplayer.image.ImageDecoder (io.bidmachine.media3.exoplayer.image.ImageDecoder)
.class public interface abstract Lio/bidmachine/media3/exoplayer/image/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Lio/bidmachine/media3/decoder/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/decoder/Decoder<",
        "Lio/bidmachine/media3/decoder/DecoderInputBuffer;",
        "Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;",
        "Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract dequeueOutputBuffer()Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation
.end method

.method public abstract queueInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.image.ImageDecoder.Factory (io.bidmachine.media3.exoplayer.image.ImageDecoder$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/image/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;->DEFAULT:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    return-void
.end method


# virtual methods
.method public abstract createImageDecoder()Lio/bidmachine/media3/exoplayer/image/ImageDecoder;
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/common/Format;)I
.end method
