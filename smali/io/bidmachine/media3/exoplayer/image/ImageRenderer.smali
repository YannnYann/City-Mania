###### Class io.bidmachine.media3.exoplayer.image.ImageRenderer (io.bidmachine.media3.exoplayer.image.ImageRenderer)
.class public Lio/bidmachine/media3/exoplayer/image/ImageRenderer;
.super Lio/bidmachine/media3/exoplayer/BaseRenderer;
.source "ImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;,
        Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;
    }
.end annotation


# instance fields
.field public codecNeedsInitialization:Z

.field public currentTileIndex:I

.field public decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

.field public final decoderFactory:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

.field public decoderReinitializationState:I

.field public firstFrameState:I

.field public final flagsOnlyBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public imageOutput:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

.field public inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public inputFormat:Lio/bidmachine/media3/common/Format;

.field public inputStreamEnded:Z

.field public largestQueuedPresentationTimeUs:J

.field public lastProcessedOutputBufferTimeUs:J

.field public nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public outputBitmap:Landroid/graphics/Bitmap;

.field public outputStreamEnded:Z

.field public outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

.field public final pendingOutputStreamChanges:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field public readyToOutputTiles:Z

.field public tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V
    .registers 4

    const/4 v0, 0x4

    .line 130
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 131
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    .line 132
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->getImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->imageOutput:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    .line 133
    invoke-static {}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->flagsOnlyBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 134
    sget-object p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->UNSET:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 135
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    .line 137
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->lastProcessedOutputBufferTimeUs:J

    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const/4 p1, 0x1

    .line 139
    iput p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    return-void
.end method

.method public static getImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)Lio/bidmachine/media3/exoplayer/image/ImageOutput;
    .registers 1

    if-nez p0, :cond_4

    .line 610
    sget-object p0, Lio/bidmachine/media3/exoplayer/image/ImageOutput;->NO_OP:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    :cond_4
    return-object p0
.end method

.method private onProcessedOutputBuffer(J)V
    .registers 5

    .line 436
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 437
    :goto_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 438
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_23

    .line 439
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    goto :goto_2

    :cond_23
    return-void
.end method


# virtual methods
.method public final canCreateDecoderForFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 3

    .line 539
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    const/4 v0, 0x4

    .line 540
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    .line 541
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public final cropTileFromImageGrid(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 600
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Format;

    iget v1, v1, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    div-int/2addr v0, v1

    .line 602
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    div-int/2addr v1, v2

    .line 603
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    rem-int v3, p1, v2

    mul-int/2addr v3, v0

    .line 604
    div-int/2addr p1, v2

    mul-int/2addr p1, v1

    .line 605
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final drainOutput(JJ)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;,
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 303
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-nez v1, :cond_a

    return v8

    .line 306
    :cond_a
    iget v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    if-nez v1, :cond_16

    .line 307
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    return v8

    .line 310
    :cond_16
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-nez v1, :cond_6e

    .line 311
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/image/ImageDecoder;->dequeueOutputBuffer()Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    move-result-object v1

    if-nez v1, :cond_2a

    return v8

    .line 316
    :cond_2a
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 317
    iget v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    if-ne v2, v9, :cond_46

    .line 319
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    .line 320
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->maybeInitCodec()Z

    goto :goto_59

    .line 323
    :cond_46
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->release()V

    .line 324
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 325
    iput-boolean v10, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    :cond_59
    :goto_59
    return v8

    .line 330
    :cond_5a
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;->bitmap:Landroid/graphics/Bitmap;

    const-string v3, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    .line 333
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/image/ImageOutputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->release()V

    .line 336
    :cond_6e
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-eqz v1, :cond_111

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_111

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v1, :cond_111

    .line 337
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v2, v1, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    if-ne v2, v10, :cond_89

    iget v3, v1, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    if-eq v3, v10, :cond_92

    :cond_89
    const/4 v3, -0x1

    if-eq v2, v3, :cond_92

    iget v1, v1, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    if-eq v1, v3, :cond_92

    move v11, v10

    goto :goto_93

    :cond_92
    move v11, v8

    .line 344
    :goto_93
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->hasTileBitmap()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 345
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v11, :cond_a8

    .line 347
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getTileIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->cropTileFromImageGrid(I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_b0

    .line 348
    :cond_a8
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 345
    :goto_b0
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->setTileBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    :cond_b3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 353
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getTileBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 354
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getPresentationTimeUs()J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 350
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->processOutputBuffer(JJLandroid/graphics/Bitmap;J)Z

    move-result v1

    if-nez v1, :cond_d0

    return v8

    .line 357
    :cond_d0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getPresentationTimeUs()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->onProcessedOutputBuffer(J)V

    .line 358
    iput v9, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    const/4 v1, 0x0

    if-eqz v11, :cond_108

    .line 359
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 360
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getTileIndex()I

    move-result v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 361
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/Format;

    iget v3, v3, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 362
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/Format;

    iget v4, v4, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    mul-int/2addr v3, v4

    sub-int/2addr v3, v10

    if-ne v2, v3, :cond_10a

    .line 364
    :cond_108
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    .line 366
    :cond_10a
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 367
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    return v10

    :cond_111
    return v8
.end method

.method public final feedInputBuffer(J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 449
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v0, :cond_a

    return v1

    .line 452
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 453
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    if-eqz v2, :cond_f2

    iget v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f2

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_1d

    goto/16 :goto_f2

    .line 459
    :cond_1d
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    if-nez v3, :cond_2c

    .line 460
    invoke-interface {v2}, Lio/bidmachine/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    if-nez v2, :cond_2c

    return v1

    .line 465
    :cond_2c
    iget v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4f

    .line 466
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    .line 468
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/image/ImageDecoder;->queueInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 469
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 470
    iput v4, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    return v1

    .line 473
    :cond_4f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    const/4 v6, 0x1

    if-eq v2, v4, :cond_e3

    const/4 v0, -0x4

    if-eq v2, v0, :cond_66

    const/4 p1, -0x3

    if-ne v2, p1, :cond_60

    return v1

    .line 510
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 477
    :cond_66
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 480
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_77

    .line 481
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_85

    :cond_77
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 482
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_85
    move v0, v6

    goto :goto_88

    :cond_87
    move v0, v1

    :goto_88
    if-eqz v0, :cond_9f

    .line 484
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/image/ImageDecoder;->queueInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 485
    iput v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    .line 487
    :cond_9f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->maybeAdvanceTileInfo(JLio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 488
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 489
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    .line 490
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    return v1

    .line 493
    :cond_bd
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 494
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide v1, v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    if-eqz v0, :cond_d4

    .line 499
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    goto :goto_df

    .line 501
    :cond_d4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 503
    :goto_df
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    xor-int/2addr p1, v6

    return p1

    .line 505
    :cond_e3
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 506
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    .line 507
    iput v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    return v6

    :cond_f2
    :goto_f2
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 144
    const-string v0, "ImageRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0xf

    if-eq p1, v0, :cond_8

    .line 285
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void

    .line 281
    :cond_8
    instance-of p1, p2, Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_f

    check-cast p2, Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    .line 282
    :goto_10
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->setImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V

    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 195
    iget v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public final isTileLastInGrid(Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;)Z
    .registers 5

    .line 592
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    if-eq v0, v2, :cond_2d

    .line 594
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getTileIndex()I

    move-result p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 595
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    mul-int/2addr v0, v2

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    return v1
.end method

.method public final lowerFirstFrameState(I)V
    .registers 3

    .line 545
    iget v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    return-void
.end method

.method public final maybeAdvanceTileInfo(JLio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .registers 12

    .line 563
    invoke-virtual {p3}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 564
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    return-void

    .line 567
    :cond_a
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    iget-wide v3, p3, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {v0, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;-><init>(IJ)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 568
    iget p3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    add-int/2addr p3, v1

    iput p3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    .line 571
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-nez p3, :cond_61

    .line 572
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getPresentationTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    sub-long v6, v2, v4

    cmp-long p3, v6, p1

    const/4 v0, 0x0

    if-gtz p3, :cond_32

    add-long/2addr v4, v2

    cmp-long p3, p1, v4

    if-gtz p3, :cond_32

    move p3, v1

    goto :goto_33

    :cond_32
    move p3, v0

    .line 576
    :goto_33
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v4, :cond_45

    .line 578
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->getPresentationTimeUs()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_45

    cmp-long p1, p1, v2

    if-gez p1, :cond_45

    move p1, v1

    goto :goto_46

    :cond_45
    move p1, v0

    .line 580
    :goto_46
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->isTileLastInGrid(Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;)Z

    move-result p2

    if-nez p3, :cond_5a

    if-nez p1, :cond_5a

    if-eqz p2, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v0

    .line 581
    :cond_5a
    :goto_5a
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-eqz p1, :cond_61

    if-nez p3, :cond_61

    return-void

    .line 587
    :cond_61
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    const/4 p1, 0x0

    .line 588
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    return-void
.end method

.method public final maybeInitCodec()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->maybeInitializeProcessingPipeline()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 519
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    const/4 v2, 0x1

    if-nez v0, :cond_e

    return v2

    .line 523
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->canCreateDecoderForFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 524
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    if-eqz v0, :cond_23

    .line 525
    invoke-interface {v0}, Lio/bidmachine/media3/decoder/Decoder;->release()V

    .line 527
    :cond_23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;->createImageDecoder()Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    .line 534
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    return v2

    .line 529
    :cond_2e
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public maybeInitializeProcessingPipeline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onDisabled()V
    .registers 2

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 258
    sget-object v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->UNSET:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 259
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 260
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    .line 261
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->imageOutput:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/image/ImageOutput;->onDisabled()V

    return-void
.end method

.method public onEnabled(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 211
    iput p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    return-void
.end method

.method public onPositionReset(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->lowerFirstFrameState(I)V

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    .line 243
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    const/4 p2, 0x0

    .line 244
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    .line 245
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->tileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 246
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 247
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    .line 248
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 249
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    if-eqz p1, :cond_1b

    .line 250
    invoke-interface {p1}, Lio/bidmachine/media3/decoder/Decoder;->flush()V

    .line 252
    :cond_1b
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public onRelease()V
    .registers 1

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    return-void
.end method

.method public onReset()V
    .registers 2

    .line 266
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->lowerFirstFrameState(I)V

    return-void
.end method

.method public onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 222
    invoke-super/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    move-object p1, p0

    .line 223
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide p2, p2, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, v0

    if-eqz p2, :cond_37

    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 224
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-wide p2, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long p6, p2, v0

    if-eqz p6, :cond_37

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long p6, v2, v0

    if-eqz p6, :cond_2a

    cmp-long p2, v2, p2

    if-ltz p2, :cond_2a

    goto :goto_37

    .line 233
    :cond_2a
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    new-instance p3, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    invoke-direct {p3, v0, v1, p4, p5}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    .line 230
    :cond_37
    :goto_37
    new-instance p2, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    invoke-direct {p2, v0, v1, p4, p5}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    iput-object p2, p1, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    return-void
.end method

.method public processOutputBuffer(JJLandroid/graphics/Bitmap;J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    sub-long p1, p6, p1

    .line 405
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->shouldForceRender()Z

    move-result p3

    if-nez p3, :cond_11

    const-wide/16 p3, 0x7530

    cmp-long p1, p1, p3

    if-gez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    .line 406
    :cond_11
    :goto_11
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->imageOutput:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide p2, p2, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->streamOffsetUs:J

    sub-long/2addr p6, p2

    invoke-interface {p1, p6, p7, p5}, Lio/bidmachine/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final releaseDecoderResources()V
    .registers 4

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    .line 550
    iput v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 551
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    .line 552
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    if-eqz v1, :cond_16

    .line 553
    invoke-interface {v1}, Lio/bidmachine/media3/decoder/Decoder;->release()V

    .line 554
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    :cond_16
    return-void
.end method

.method public render(JJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_5

    goto :goto_45

    .line 158
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_3b

    .line 160
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->flagsOnlyBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 163
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->flagsOnlyBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2a

    .line 166
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 167
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    goto :goto_3b

    :cond_2a
    const/4 p1, -0x4

    if-ne v1, p1, :cond_45

    .line 170
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->flagsOnlyBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 171
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    .line 172
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    return-void

    .line 179
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoder:Lio/bidmachine/media3/exoplayer/image/ImageDecoder;

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->maybeInitCodec()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_45
    :goto_45
    return-void

    .line 184
    :cond_46
    :try_start_46
    const-string v0, "drainAndFeedDecoder"

    invoke-static {v0}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 185
    :goto_4b
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->drainOutput(JJ)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_4b

    .line 186
    :cond_52
    :goto_52
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->feedInputBuffer(J)Z

    move-result p3

    if-eqz p3, :cond_59

    goto :goto_52

    .line 187
    :cond_59
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V
    :try_end_5c
    .catch Lio/bidmachine/media3/exoplayer/image/ImageDecoderException; {:try_start_46 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p1

    const/4 p2, 0x0

    const/16 p3, 0xfa3

    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final setImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V
    .registers 2

    .line 559
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->getImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->imageOutput:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    return-void
.end method

.method public final shouldForceRender()Z
    .registers 5

    .line 374
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    .line 375
    :goto_c
    iget v1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    if-eqz v1, :cond_1d

    if-eq v1, v3, :cond_1c

    const/4 v0, 0x3

    if-ne v1, v0, :cond_16

    return v2

    .line 383
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    return v3

    :cond_1d
    return v0
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .registers 3

    .line 149
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.image.ImageRenderer.OutputStreamInfo (io.bidmachine.media3.exoplayer.image.ImageRenderer$OutputStreamInfo)
.class public final Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;
.super Ljava/lang/Object;
.source "ImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/image/ImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputStreamInfo"
.end annotation


# static fields
.field public static final UNSET:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;


# instance fields
.field public final previousStreamLastBufferTimeUs:J

.field public final streamOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 646
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v1, v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->UNSET:Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    .line 655
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->streamOffsetUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.image.ImageRenderer.TileInfo (io.bidmachine.media3.exoplayer.image.ImageRenderer$TileInfo)
.class public Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;
.super Ljava/lang/Object;
.source "ImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/image/ImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileInfo"
.end annotation


# instance fields
.field public final presentationTimeUs:J

.field public tileBitmap:Landroid/graphics/Bitmap;

.field public final tileIndex:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    .line 620
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    return-void
.end method


# virtual methods
.method public getPresentationTimeUs()J
    .registers 3

    .line 628
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    return-wide v0
.end method

.method public getTileBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 632
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTileIndex()I
    .registers 2

    .line 624
    iget v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    return v0
.end method

.method public hasTileBitmap()Z
    .registers 2

    .line 640
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setTileBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
