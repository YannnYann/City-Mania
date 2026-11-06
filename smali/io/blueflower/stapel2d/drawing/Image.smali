###### Class io.blueflower.stapel2d.drawing.Image (io.blueflower.stapel2d.drawing.Image)
.class public final Lio/blueflower/stapel2d/drawing/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;
    }
.end annotation


# instance fields
.field public charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

.field public charToFrameTable:[I

.field public charToXAdvanceMapping:Lcom/badlogic/gdx/utils/IntIntMap;

.field public charToXAdvanceTable:[I

.field public currentFrame:I

.field public currentFrameType:I

.field public currentHeight:I

.field public currentTextureId:I

.field public currentWidth:I

.field public fontPadding:F

.field public missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

.field public offsetX:F

.field public offsetY:F

.field public scaleX:F

.field public scaleY:F

.field public spacingX:F

.field public textureIds:[I

.field public textures:[Lio/blueflower/stapel2d/drawing/Texture;

.field public typeMasks:[I

.field public unknownFrame:I

.field public uvs:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    .line 40
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/drawing/Image;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x8

    .line 44
    new-array v0, v0, [F

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    .line 46
    new-array p1, p1, [I

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->scaleX:F

    .line 48
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->scaleY:F

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/Image;-><init>()V

    .line 60
    filled-new-array {p1}, [Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Texture;I)V
    .registers 3

    .line 65
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/drawing/Image;-><init>(I)V

    .line 66
    filled-new-array {p1}, [Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    return-void
.end method

.method public static createSingleFrame(Lio/blueflower/stapel2d/drawing/Texture;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 3

    .line 516
    new-instance v0, Lio/blueflower/stapel2d/drawing/Image;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;I)V

    .line 517
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->addSingleFrame()I

    return-object v0
.end method

.method public static createSingleFrame(Lio/blueflower/stapel2d/drawing/Texture;II)Lio/blueflower/stapel2d/drawing/Image;
    .registers 5

    .line 522
    new-instance v0, Lio/blueflower/stapel2d/drawing/Image;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;I)V

    int-to-float p0, p1

    int-to-float p1, p2

    const/4 p2, 0x0

    .line 523
    invoke-virtual {v0, p2, p2, p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    return-object v0
.end method


# virtual methods
.method public addChar(FFFFII)I
    .registers 7

    .line 444
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result p1

    .line 445
    invoke-virtual {p0, p5, p1, p6}, Lio/blueflower/stapel2d/drawing/Image;->addChar(III)V

    return p1
.end method

.method public addChar(III)V
    .registers 6

    .line 203
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameTable:[I

    if-nez v0, :cond_25

    const/16 v0, 0x400

    .line 204
    new-array v1, v0, [I

    iput-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameTable:[I

    .line 205
    new-array v0, v0, [I

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceTable:[I

    const/4 v0, -0x1

    .line 206
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 207
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 208
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 209
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 212
    :cond_25
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameTable:[I

    array-length v1, v0

    if-ge p1, v1, :cond_31

    .line 213
    aput p2, v0, p1

    .line 214
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceTable:[I

    aput p3, v0, p1

    goto :goto_3b

    .line 216
    :cond_31
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 217
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :goto_3b
    const/16 p3, 0x3f

    if-ne p1, p3, :cond_41

    .line 221
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    :cond_41
    return-void
.end method

.method public addFrame(FFFF)I
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 279
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result p1

    return p1
.end method

.method public addFrame(FFFFFF)I
    .registers 16

    .line 284
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Image;->offsetX:F

    add-float v2, p1, v1

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Image;->currentWidth:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    iget v4, p0, Lio/blueflower/stapel2d/drawing/Image;->offsetY:F

    add-float v5, p2, v4

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Image;->currentHeight:I

    int-to-float v7, v6

    div-float/2addr v5, v7

    add-float/2addr v1, p1

    add-float/2addr v1, p3

    int-to-float v3, v3

    div-float v3, v1, v3

    add-float v1, p2, v4

    add-float/2addr v1, p4

    int-to-float v4, v6

    div-float v4, v1, v4

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Image;->scaleX:F

    mul-float/2addr v1, p3

    .line 288
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Image;->scaleY:F

    mul-float/2addr v6, p4

    .line 289
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move v0, v5

    move v5, v1

    move v1, v2

    move v2, v0

    move-object v0, p0

    move v7, p5

    move v8, p6

    .line 284
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Image;->appendFrame(FFFFFFFF)I

    move-result v1

    return v1
.end method

.method public addFrame(IFF)I
    .registers 14

    mul-int/lit8 p1, p1, 0x8

    .line 296
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    aget v2, v0, p1

    add-int/lit8 v1, p1, 0x1

    aget v3, v0, v1

    add-int/lit8 v1, p1, 0x2

    aget v4, v0, v1

    add-int/lit8 v1, p1, 0x3

    aget v5, v0, v1

    add-int/lit8 v1, p1, 0x4

    aget v6, v0, v1

    add-int/lit8 p1, p1, 0x5

    aget v7, v0, p1

    move-object v1, p0

    move v8, p2

    move v9, p3

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Image;->appendFrame(FFFFFFFF)I

    move-result p1

    return p1
.end method

.method public addNinePatch(FFFF)I
    .registers 8

    .line 428
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrame:I

    .line 430
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    add-float v1, p1, p3

    .line 431
    invoke-virtual {p0, v1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    add-float v2, v1, p3

    .line 432
    invoke-virtual {p0, v2, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    add-float/2addr p2, p4

    .line 433
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 434
    invoke-virtual {p0, v1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 435
    invoke-virtual {p0, v2, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    add-float/2addr p2, p4

    .line 436
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 437
    invoke-virtual {p0, v1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 438
    invoke-virtual {p0, v2, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    return v0
.end method

.method public addSingleFrame()I
    .registers 4

    .line 274
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v0

    return v0
.end method

.method public addStrip(FFFFFFIFF)I
    .registers 18

    .line 414
    iget p4, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrame:I

    const/4 v0, 0x0

    move v2, p1

    move v3, p2

    :goto_5
    if-ge v0, p7, :cond_23

    move-object v1, p0

    move v4, p5

    move v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    .line 416
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    add-float/2addr v2, p5

    add-float v1, v2, p5

    add-float v4, p1, p3

    const v5, 0x3c23d70a    # 0.01f

    add-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_20

    add-float/2addr v3, p6

    move v2, p1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    return p4
.end method

.method public addTexture(Lio/blueflower/stapel2d/drawing/Texture;)I
    .registers 4

    .line 71
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/blueflower/stapel2d/drawing/Texture;

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    .line 72
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 73
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public appendFrame(FFFFFFFF)I
    .registers 12

    .line 381
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    array-length v1, v0

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrame:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_2a

    .line 382
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    .line 383
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    .line 384
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    .line 387
    :cond_2a
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrame:I

    mul-int/lit8 v1, v0, 0x8

    .line 388
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    aput p1, v2, v1

    add-int/lit8 p1, v1, 0x1

    .line 389
    aput p2, v2, p1

    add-int/lit8 p1, v1, 0x2

    .line 390
    aput p3, v2, p1

    add-int/lit8 p1, v1, 0x3

    .line 391
    aput p4, v2, p1

    add-int/lit8 p1, v1, 0x4

    .line 392
    aput p5, v2, p1

    add-int/lit8 p1, v1, 0x5

    .line 393
    aput p6, v2, p1

    add-int/lit8 p1, v1, 0x6

    .line 394
    aput p7, v2, p1

    add-int/lit8 v1, v1, 0x7

    .line 395
    aput p8, v2, v1

    .line 396
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    iget p2, p0, Lio/blueflower/stapel2d/drawing/Image;->currentTextureId:I

    aput p2, p1, v0

    .line 397
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    iget p2, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrameType:I

    aput p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    .line 399
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrame:I

    return v0
.end method

.method public charToFrame(I)I
    .registers 5

    .line 237
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    if-eqz v0, :cond_42

    .line 238
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameTable:[I

    array-length v2, v1

    if-ge p1, v2, :cond_23

    .line 239
    aget v0, v1, p1

    if-gez v0, :cond_22

    .line 241
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    .line 242
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    if-eqz v1, :cond_22

    invoke-interface {v1, p1}, Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;->handle(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 243
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameTable:[I

    aget p1, v0, p1

    if-gez p1, :cond_21

    .line 245
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    :cond_21
    return p1

    :cond_22
    return v0

    :cond_23
    const/4 v1, -0x1

    .line 251
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v0

    if-gez v0, :cond_41

    .line 253
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    .line 254
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Image;->missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    if-eqz v2, :cond_41

    invoke-interface {v2, p1}, Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;->handle(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 255
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1

    if-gez p1, :cond_40

    .line 257
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    :cond_40
    return p1

    :cond_41
    return v0

    .line 264
    :cond_42
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    if-eqz v0, :cond_55

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;->handle(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 265
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    if-eqz v0, :cond_55

    .line 266
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->charToFrame(I)I

    move-result p1

    return p1

    .line 269
    :cond_55
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    return p1
.end method

.method public charToXAdvance(I)I
    .registers 6

    .line 226
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    .line 227
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvanceTable:[I

    array-length v3, v2

    if-ge p1, v3, :cond_d

    .line 228
    aget p1, v2, p1

    return p1

    .line 230
    :cond_d
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1

    return p1

    :cond_12
    return v1
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrame:I

    .line 404
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameTable:[I

    if-eqz v1, :cond_b

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 405
    :cond_b
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->charToFrameMapping:Lcom/badlogic/gdx/utils/IntIntMap;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 406
    :cond_12
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Image;->unknownFrame:I

    return-void
.end method

.method public countTextureIds()I
    .registers 2

    .line 149
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    array-length v0, v0

    return v0
.end method

.method public getCodepointWidth(I)F
    .registers 4

    .line 328
    invoke-static {p1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 332
    :cond_a
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvance(I)I

    move-result v0

    if-ltz v0, :cond_12

    int-to-float p1, v0

    return p1

    .line 337
    :cond_12
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->charToFrame(I)I

    move-result p1

    .line 338
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Image;->fontPadding:F

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    return p1
.end method

.method public getHandleX(I)F
    .registers 3

    .line 303
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    return p1
.end method

.method public getHandleY(I)F
    .registers 3

    .line 307
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x7

    aget p1, v0, p1

    return p1
.end method

.method public getHeight()F
    .registers 2

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    return v0
.end method

.method public getHeight(I)F
    .registers 3

    .line 346
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x5

    aget p1, v0, p1

    return p1
.end method

.method public getSelectedTexture()I
    .registers 2

    .line 83
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentTextureId:I

    return v0
.end method

.method public getTextHeight()F
    .registers 2

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    return v0
.end method

.method public getTextWidth(Ljava/lang/String;)F
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x0

    .line 496
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 497
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 498
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/drawing/Image;->getCodepointWidth(I)F

    move-result v3

    iget v4, p0, Lio/blueflower/stapel2d/drawing/Image;->spacingX:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 499
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_a

    .line 501
    :cond_22
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Image;->spacingX:F

    sub-float/2addr v0, p1

    :cond_25
    return v0
.end method

.method public getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;
    .registers 5

    .line 141
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget p1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentTextureId:I

    goto :goto_d

    :cond_9
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    aget p1, v1, p1

    :goto_d
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTextureId(I)I
    .registers 4

    .line 145
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget p1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentTextureId:I

    return p1

    :cond_9
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    aget p1, v0, p1

    return p1
.end method

.method public getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;
    .registers 3

    .line 153
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getType(I)I
    .registers 3

    .line 164
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    aget p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getTypeMask(I)I
    .registers 3

    .line 168
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    aget p1, v0, p1

    return p1
.end method

.method public getUVCoords(I[F)[F
    .registers 6

    mul-int/lit8 p1, p1, 0x8

    .line 364
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    aget v1, v0, p1

    const/4 v2, 0x0

    aput v1, p2, v2

    add-int/lit8 v1, p1, 0x1

    .line 365
    aget v1, v0, v1

    const/4 v2, 0x1

    aput v1, p2, v2

    add-int/lit8 v1, p1, 0x2

    .line 366
    aget v1, v0, v1

    const/4 v2, 0x2

    aput v1, p2, v2

    const/4 v1, 0x3

    add-int/2addr p1, v1

    .line 367
    aget p1, v0, p1

    aput p1, p2, v1

    return-object p2
.end method

.method public getUVStream()[F
    .registers 2

    .line 372
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    return-object v0
.end method

.method public getUVStreamPos(I)I
    .registers 2

    .line 0
    mul-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public getWidth()F
    .registers 2

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    return v0
.end method

.method public getWidth(I)F
    .registers 3

    .line 324
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public getX(I)F
    .registers 3

    .line 316
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    aget p1, v0, p1

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentWidth:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1
.end method

.method public getY(I)F
    .registers 3

    .line 320
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1
.end method

.method public resetOffset()V
    .registers 2

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0, v0}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    return-void
.end method

.method public resetScale()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {p0, v0, v0}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    return-void
.end method

.method public resize(IFF)V
    .registers 9

    mul-int/lit8 p1, p1, 0x8

    .line 451
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    add-int/lit8 v1, p1, 0x6

    aget v2, v0, v1

    add-int/lit8 v3, p1, 0x4

    aget v4, v0, v3

    div-float v4, p2, v4

    mul-float/2addr v2, v4

    aput v2, v0, v1

    add-int/lit8 v1, p1, 0x7

    .line 452
    aget v2, v0, v1

    add-int/lit8 p1, p1, 0x5

    aget v4, v0, p1

    div-float v4, p3, v4

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 453
    aput p2, v0, v3

    .line 454
    aput p3, v0, p1

    return-void
.end method

.method public scale(IFF)V
    .registers 7

    mul-int/lit8 p1, p1, 0x8

    .line 463
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    add-int/lit8 v1, p1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    add-int/lit8 v1, p1, 0x5

    .line 464
    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    add-int/lit8 v1, p1, 0x6

    .line 465
    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x7

    .line 466
    aget p2, v0, p1

    mul-float/2addr p2, p3

    aput p2, v0, p1

    return-void
.end method

.method public selectTexture(I)V
    .registers 3

    .line 77
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentTextureId:I

    .line 78
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->textures:[Lio/blueflower/stapel2d/drawing/Texture;

    aget-object p1, v0, p1

    iget v0, p1, Lio/blueflower/stapel2d/drawing/Texture;->width:I

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Image;->currentWidth:I

    .line 79
    iget p1, p1, Lio/blueflower/stapel2d/drawing/Texture;->height:I

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentHeight:I

    return-void
.end method

.method public setFontPadding(F)V
    .registers 2

    .line 532
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->fontPadding:F

    return-void
.end method

.method public setHandle(IFF)V
    .registers 6

    .line 311
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 v1, p1, 0x6

    aput p2, v0, v1

    add-int/lit8 p1, p1, 0x7

    .line 312
    aput p3, v0, p1

    return-void
.end method

.method public setMissingCharListener(Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Image;->missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    return-void
.end method

.method public setOffset(FF)V
    .registers 3

    .line 185
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->offsetX:F

    .line 186
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Image;->offsetY:F

    return-void
.end method

.method public setScale(FF)V
    .registers 3

    .line 194
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->scaleX:F

    .line 195
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Image;->scaleY:F

    return-void
.end method

.method public setType(I)V
    .registers 3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 160
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Image;->currentFrameType:I

    return-void
.end method

.method public setType(II)V
    .registers 4

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr p2, v0

    shl-int/lit8 v0, p2, 0x10

    or-int/2addr p2, v0

    .line 175
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    aput p2, v0, p1

    return-void
.end method

.method public setType(III)V
    .registers 6

    move v0, p1

    :goto_1
    add-int v1, p1, p3

    if-ge v0, v1, :cond_b

    .line 180
    invoke-virtual {p0, v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->setType(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public swap(III)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    :goto_8
    if-lez v3, :cond_8c

    mul-int/lit8 v4, v1, 0x8

    mul-int/lit8 v5, v2, 0x8

    .line 94
    iget-object v6, v0, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    aget v7, v6, v4

    add-int/lit8 v8, v4, 0x1

    .line 95
    aget v9, v6, v8

    add-int/lit8 v10, v4, 0x2

    .line 96
    aget v11, v6, v10

    add-int/lit8 v12, v4, 0x3

    .line 97
    aget v13, v6, v12

    add-int/lit8 v14, v4, 0x4

    .line 98
    aget v15, v6, v14

    add-int/lit8 v16, v4, 0x5

    .line 99
    aget v17, v6, v16

    add-int/lit8 v18, v4, 0x6

    .line 100
    aget v19, v6, v18

    add-int/lit8 v20, v4, 0x7

    .line 101
    aget v21, v6, v20

    move/from16 p1, v1

    .line 102
    iget-object v1, v0, Lio/blueflower/stapel2d/drawing/Image;->textureIds:[I

    aget v22, v1, p1

    move-object/from16 p2, v1

    .line 103
    iget-object v1, v0, Lio/blueflower/stapel2d/drawing/Image;->typeMasks:[I

    aget v23, v1, p1

    .line 105
    aget v24, v6, v5

    aput v24, v6, v4

    add-int/lit8 v4, v5, 0x1

    .line 106
    aget v24, v6, v4

    aput v24, v6, v8

    add-int/lit8 v8, v5, 0x2

    .line 107
    aget v24, v6, v8

    aput v24, v6, v10

    add-int/lit8 v10, v5, 0x3

    .line 108
    aget v24, v6, v10

    aput v24, v6, v12

    add-int/lit8 v12, v5, 0x4

    .line 109
    aget v24, v6, v12

    aput v24, v6, v14

    add-int/lit8 v14, v5, 0x5

    .line 110
    aget v24, v6, v14

    aput v24, v6, v16

    add-int/lit8 v16, v5, 0x6

    .line 111
    aget v24, v6, v16

    aput v24, v6, v18

    add-int/lit8 v18, v5, 0x7

    .line 112
    aget v24, v6, v18

    aput v24, v6, v20

    .line 113
    aget v20, p2, v2

    aput v20, p2, p1

    .line 114
    aget v20, v1, v2

    aput v20, v1, p1

    .line 116
    aput v7, v6, v5

    .line 117
    aput v9, v6, v4

    .line 118
    aput v11, v6, v8

    .line 119
    aput v13, v6, v10

    .line 120
    aput v15, v6, v12

    .line 121
    aput v17, v6, v14

    .line 122
    aput v19, v6, v16

    .line 123
    aput v21, v6, v18

    .line 124
    aput v22, p2, v2

    .line 125
    aput v23, v1, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_8c
    return-void
.end method

###### Class io.blueflower.stapel2d.drawing.Image.MissingCharListener (io.blueflower.stapel2d.drawing.Image$MissingCharListener)
.class public interface abstract Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/drawing/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MissingCharListener"
.end annotation


# virtual methods
.method public abstract handle(I)Z
.end method
