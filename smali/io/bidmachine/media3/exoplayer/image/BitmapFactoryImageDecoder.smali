###### Class io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder (io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder)
.class public final Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;
.super Lio/bidmachine/media3/decoder/SimpleDecoder;
.source "BitmapFactoryImageDecoder.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/image/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;,
        Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/decoder/SimpleDecoder<",
        "Lio/bidmachine/media3/decoder/DecoderInputBuffer;",
        "Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;",
        "Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;",
        ">;",
        "Lio/bidmachine/media3/exoplayer/image/ImageDecoder;"
    }
.end annotation


# instance fields
.field public final bitmapDecoder:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;)V
    .registers 4

    const/4 v0, 0x1

    .line 107
    new-array v1, v0, [Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    new-array v0, v0, [Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    invoke-direct {p0, v1, v0}, Lio/bidmachine/media3/decoder/SimpleDecoder;-><init>([Lio/bidmachine/media3/decoder/DecoderInputBuffer;[Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    .line 108
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->bitmapDecoder:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;-><init>(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;)V

    return-void
.end method

.method public static synthetic access$100([BI)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->decode([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/decoder/SimpleDecoder;->releaseOutputBuffer(Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method

.method public static decode([BI)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 162
    :try_start_2
    invoke-static {p0, p1, v0, v1}, Lio/bidmachine/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_6
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_2 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 173
    new-instance p1, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_e
    move-exception v0

    .line 165
    new-instance v1, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not decode image data with BitmapFactory. (data.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", input length = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createInputBuffer()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .registers 3

    .line 118
    new-instance v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createOutputBuffer()Lio/bidmachine/media3/decoder/DecoderOutputBuffer;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->createOutputBuffer()Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public createOutputBuffer()Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;
    .registers 2

    .line 123
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;-><init>(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;)V

    return-object v0
.end method

.method public bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public createUnexpectedDecodeException(Ljava/lang/Throwable;)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
    .registers 4

    .line 133
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/decoder/DecoderOutputBuffer;Z)Lio/bidmachine/media3/decoder/DecoderException;
    .registers 4

    .line 47
    check-cast p2, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->decode(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;Z)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;Z)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
    .registers 6

    .line 141
    :try_start_0
    iget-object p3, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 143
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 144
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->bitmapDecoder:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-interface {v0, v1, p3}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;->decode([BI)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p2, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;->bitmap:Landroid/graphics/Bitmap;

    .line 145
    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p2, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->timeUs:J
    :try_end_2f
    .catch Lio/bidmachine/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_2f} :catch_31

    const/4 p1, 0x0

    return-object p1

    :catch_31
    move-exception p1

    return-object p1
.end method

.method public bridge synthetic dequeueOutputBuffer()Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lio/bidmachine/media3/decoder/SimpleDecoder;->dequeueOutputBuffer()Lio/bidmachine/media3/decoder/DecoderOutputBuffer;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder.AnonymousClass1 (io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder$1)
.class public Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;
.super Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;
.source "BitmapFactoryImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->createOutputBuffer()Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->this$0:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 126
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->this$0:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;

    invoke-static {v0, p0}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->access$200(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder.BitmapDecoder (io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder$BitmapDecoder)
.class public interface abstract Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapFactoryImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapDecoder"
.end annotation


# virtual methods
.method public abstract decode([BI)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder.Factory (io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder$Factory)
.class public final Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;
.super Ljava/lang/Object;
.source "BitmapFactoryImageDecoder.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final bitmapDecoder:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;


# direct methods
.method public static synthetic $r8$lambda$Wm7cWa1UDrA1A1tEk5JEd0XS3oI([BI)Landroid/graphics/Bitmap;
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;->access$100([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->bitmapDecoder:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;

    return-void
.end method


# virtual methods
.method public createImageDecoder()Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;
    .registers 4

    .line 100
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->bitmapDecoder:Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;-><init>(Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$1;)V

    return-object v0
.end method

.method public bridge synthetic createImageDecoder()Lio/bidmachine/media3/exoplayer/image/ImageDecoder;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->createImageDecoder()Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .registers 3

    .line 90
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1f

    .line 93
    :cond_b
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->isBitmapFactorySupportedMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x4

    .line 94
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x1

    .line 95
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$BitmapDecoder;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([BI)Landroid/graphics/Bitmap;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->$r8$lambda$Wm7cWa1UDrA1A1tEk5JEd0XS3oI([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
