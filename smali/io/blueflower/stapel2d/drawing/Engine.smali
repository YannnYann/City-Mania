###### Class io.blueflower.stapel2d.drawing.Engine (io.blueflower.stapel2d.drawing.Engine)
.class public final Lio/blueflower/stapel2d/drawing/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;
    }
.end annotation


# instance fields
.field public final MAX_ELEMENT_ARRAY_QUAD_COUNT:I

.field public final MAX_QUAD_COUNT:I

.field public final _quadCoordBuffer:Ljava/nio/ByteBuffer;

.field public final _vertexBuffer:Ljava/nio/ByteBuffer;

.field public additive:I

.field public alpha:I

.field public b:I

.field public batchCounter:I

.field public blending:I

.field public calculatedColor:F

.field public calculatedHeight:I

.field public calculatedWidth:I

.field public clipRectX0:F

.field public clipRectX1:F

.field public clipRectY0:F

.field public clipRectY1:F

.field public clipping:Z

.field public codepoints:Lcom/badlogic/gdx/utils/IntArray;

.field public currentContext:I

.field public currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

.field public currentOffset:I

.field public currentQuad:I

.field public currentShader:Lio/blueflower/stapel2d/drawing/Shader;

.field public currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

.field public currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

.field public final customUniforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultShader:Lio/blueflower/stapel2d/drawing/Shader;

.field public drawCounter:I

.field public frameCounter:I

.field public g:I

.field public height:I

.field public indexBufferObject:I

.field public otherVertexArray:[F

.field public r:I

.field public scaleX:F

.field public scaleY:F

.field public typeMask:I

.field public final useBuffering:Z

.field public vertexArray:[F

.field public final vertexBuffer:Ljava/nio/FloatBuffer;

.field public vertexPtr:I

.field public virtualHeight:I

.field public virtualWidth:I

.field public width:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 8

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->virtualWidth:I

    .line 87
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->virtualHeight:I

    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    .line 115
    iput v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    const/16 v2, 0xff

    .line 117
    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    .line 118
    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    .line 119
    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    .line 120
    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 152
    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    .line 153
    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    .line 157
    iput v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->blending:I

    .line 164
    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    const/16 v2, 0x3fff

    if-gt p2, v2, :cond_9f

    .line 187
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    .line 188
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_ELEMENT_ARRAY_QUAD_COUNT:I

    mul-int/lit8 v2, p2, 0x60

    .line 192
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    .line 194
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 197
    iput-boolean p3, p0, Lio/blueflower/stapel2d/drawing/Engine;->useBuffering:Z

    mul-int/lit8 v2, p1, 0x18

    .line 198
    new-array v2, v2, [F

    iput-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    if-eqz p3, :cond_5a

    mul-int/lit8 p1, p1, 0x18

    .line 200
    new-array p1, p1, [F

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->otherVertexArray:[F

    :cond_5a
    mul-int/lit8 p2, p2, 0x8

    .line 203
    new-array p1, p2, [B

    move p3, v1

    :goto_5f
    if-ge p3, p2, :cond_82

    .line 205
    aput-byte v1, p1, p3

    add-int/lit8 v2, p3, 0x1

    .line 206
    aput-byte v1, p1, v2

    add-int/lit8 v2, p3, 0x2

    .line 207
    aput-byte v1, p1, v2

    add-int/lit8 v2, p3, 0x3

    .line 208
    aput-byte v0, p1, v2

    add-int/lit8 v2, p3, 0x4

    .line 209
    aput-byte v0, p1, v2

    add-int/lit8 v2, p3, 0x5

    .line 210
    aput-byte v0, p1, v2

    add-int/lit8 v2, p3, 0x6

    .line 211
    aput-byte v0, p1, v2

    add-int/lit8 v2, p3, 0x7

    .line 212
    aput-byte v1, p1, v2

    add-int/lit8 p3, p3, 0x8

    goto :goto_5f

    .line 215
    :cond_82
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->_quadCoordBuffer:Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 219
    new-instance p1, Lio/blueflower/stapel2d/drawing/Shader;

    const-string p2, "attribute vec2 vVertex;\nattribute vec4 vColor;\nattribute vec2 vTexCoord;\nuniform vec2 viewport;\nuniform vec2 offset;\nvarying vec4 color;\nvarying vec2 texCoord;\nvoid main() {\n    color = vec4(vColor.rgb * vColor.a, vColor.a);\n    texCoord = vTexCoord;\n    gl_Position = vec4((vVertex + offset) * viewport + vec2(-1.0, 1.0), 0.0, 1.0);\n}"

    const-string p3, "uniform sampler2D texture;\nvarying lowp vec4 color;\nvarying highp vec2 texCoord;\nvoid main() {\n    gl_FragColor = color * texture2D(texture, texCoord);\n}"

    invoke-direct {p1, p2, p3}, Lio/blueflower/stapel2d/drawing/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->defaultShader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 220
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 221
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->calculateColor()V

    return-void

    .line 181
    :cond_9f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 182
    const-string v0, "Element array is %d but has to be <= %d!"

    invoke-static {p3, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getMemoryConsumption(IIZ)J
    .registers 7

    .line 0
    int-to-long v0, p0

    const-wide/16 v2, 0x60

    mul-long/2addr v0, v2

    int-to-long p0, p1

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    if-eqz p2, :cond_a

    add-long/2addr p0, v0

    :cond_a
    return-wide p0
.end method


# virtual methods
.method public addClipRect(FFFF)V
    .registers 6

    .line 492
    iget-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    if-nez v0, :cond_8

    .line 493
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    return-void

    .line 497
    :cond_8
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    .line 498
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    add-float/2addr p1, p3

    .line 499
    iget p3, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    add-float/2addr p2, p4

    .line 500
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    return-void
.end method

.method public final applyBidiRtlAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 1295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 1296
    new-instance v2, Ljava/text/Bidi;

    const/4 v3, -0x2

    invoke-direct {v2, p1, v3}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1297
    invoke-virtual {v2}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v3

    if-eqz v3, :cond_13

    return-object p1

    :cond_13
    const/4 v3, 0x0

    .line 1298
    :goto_14
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 1299
    invoke-virtual {v2, v3}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v4

    .line 1300
    invoke-virtual {v2, v3}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v5

    .line 1301
    invoke-virtual {v2, v3}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v6

    .line 1303
    invoke-virtual {v2}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_32

    sub-int v7, v0, v6

    goto :goto_33

    :cond_32
    move v7, v5

    :goto_33
    move v9, v5

    :goto_34
    if-ge v9, v6, :cond_70

    .line 1307
    rem-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_44

    add-int/lit8 v10, v7, 0x1

    .line 1309
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aput-char v11, v1, v7

    move v7, v10

    goto :goto_6d

    :cond_44
    add-int v10, v5, v6

    sub-int/2addr v10, v8

    sub-int/2addr v10, v9

    .line 1312
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x29

    const/16 v12, 0x28

    if-eq v10, v12, :cond_67

    if-eq v10, v11, :cond_65

    const/16 v11, 0x5d

    const/16 v12, 0x5b

    if-eq v10, v12, :cond_67

    if-eq v10, v11, :cond_65

    const/16 v11, 0x7d

    const/16 v12, 0x7b

    if-eq v10, v12, :cond_67

    if-eq v10, v11, :cond_65

    goto :goto_68

    :cond_65
    move v10, v12

    goto :goto_68

    :cond_67
    move v10, v11

    :goto_68
    add-int/lit8 v11, v7, 0x1

    .line 1321
    aput-char v10, v1, v7

    move v7, v11

    :goto_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1325
    :cond_73
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public final applyBlending()V
    .registers 4

    .line 439
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->blending:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    return-void

    .line 447
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x304

    const/16 v2, 0x302

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    return-void

    .line 444
    :cond_15
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    return-void

    .line 441
    :cond_1c
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    return-void
.end method

.method public final calculateColor()V
    .registers 6

    .line 1522
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 1523
    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    mul-int/2addr v2, v1

    div-int/lit16 v2, v2, 0xff

    .line 1524
    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    mul-int/2addr v3, v1

    div-int/lit16 v3, v3, 0xff

    .line 1525
    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->additive:I

    rsub-int v4, v4, 0xff

    mul-int/2addr v4, v1

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v1, v4, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1526
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    return-void
.end method

.method public clear(III)V
    .registers 5

    const/16 v0, 0xff

    .line 367
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->clear(IIII)V

    return-void
.end method

.method public clear(IIII)V
    .registers 7

    .line 371
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 372
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->prepareFramebuffer()V

    .line 373
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, v1

    int-to-float p3, p3

    div-float/2addr p3, v1

    int-to-float p4, p4

    div-float/2addr p4, v1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 374
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 p2, 0x4000

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    return-void
.end method

.method public clear(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 378
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    iget p1, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->clear(III)V

    return-void
.end method

.method public final clipNatively()V
    .registers 8

    .line 779
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 780
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 781
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    int-to-float v4, v3

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 782
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    sub-float/2addr v4, v5

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 783
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    sub-float/2addr v5, v6

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 784
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 780
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 785
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 786
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    return-void
.end method

.method public final combineTypeMasks(I)I
    .registers 2

    if-nez p1, :cond_4

    .line 865
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->typeMask:I

    :cond_4
    return p1
.end method

.method public copyPixelsIntoTexture(Lio/blueflower/stapel2d/drawing/Texture;IIII)V
    .registers 18

    .line 1475
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 1476
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    .line 1477
    const-string v1, " in "

    const-string v2, "OpenGL error: "

    if-nez v0, :cond_99

    .line 1481
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v0, v3, :cond_18

    .line 1482
    invoke-virtual/range {p0 .. p1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 1485
    :cond_18
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    if-nez v0, :cond_7e

    .line 1489
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Texture;->bind()V

    .line 1491
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result p1

    if-nez p1, :cond_63

    .line 1496
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    sub-int/2addr p1, p3

    sub-int v9, p1, p5

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p2

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 1498
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result p1

    if-nez p1, :cond_48

    return-void

    .line 1500
    :cond_48
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1493
    :cond_63
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1487
    :cond_7e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1478
    :cond_99
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawDrawArray(Lio/blueflower/stapel2d/drawing/Texture;IIIFF)V
    .registers 7

    .line 298
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 299
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->reappend(Lio/blueflower/stapel2d/drawing/Texture;III)V

    .line 300
    invoke-virtual {p0, p5, p6}, Lio/blueflower/stapel2d/drawing/Engine;->flush(FF)V

    return-void
.end method

.method public drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V
    .registers 22

    move/from16 v2, p8

    .line 537
    iget-object v3, p1, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 v4, v2, 0x8

    .line 539
    aget v6, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 540
    aget v7, v3, v5

    add-int/lit8 v5, v4, 0x2

    .line 541
    aget v8, v3, v5

    add-int/lit8 v5, v4, 0x3

    .line 542
    aget v9, v3, v5

    add-int/lit8 v5, v4, 0x4

    .line 543
    aget v5, v3, v5

    add-int/lit8 v4, v4, 0x5

    .line 544
    aget v3, v3, v4

    .line 546
    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v4, v5

    sub-float v4, p4, v4

    mul-float v4, v4, p6

    add-float/2addr v4, p2

    .line 547
    iget v10, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v10, v3

    sub-float v10, p5, v10

    mul-float v10, v10, p7

    add-float v10, p3, v10

    .line 549
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v11

    iget v12, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v5, v12

    add-float/2addr v5, v4

    iget v12, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v3, v12

    add-float/2addr v3, v10

    .line 552
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v1

    move-object v0, p0

    move v2, v4

    move v4, v5

    move v5, v3

    move v3, v10

    move v10, v1

    move-object v1, v11

    .line 549
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    return-void
.end method

.method public drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V
    .registers 19

    move/from16 v2, p6

    .line 556
    iget-object v3, p1, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 v4, v2, 0x8

    .line 558
    aget v6, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 559
    aget v7, v3, v5

    add-int/lit8 v5, v4, 0x2

    .line 560
    aget v8, v3, v5

    add-int/lit8 v5, v4, 0x3

    .line 561
    aget v9, v3, v5

    add-int/lit8 v5, v4, 0x4

    .line 562
    aget v5, v3, v5

    add-int/lit8 v10, v4, 0x5

    .line 563
    aget v10, v3, v10

    add-int/lit8 v11, v4, 0x6

    .line 564
    aget v11, v3, v11

    add-int/lit8 v4, v4, 0x7

    .line 565
    aget v3, v3, v4

    mul-float v11, v11, p4

    div-float/2addr v11, v5

    sub-float v4, p2, v11

    mul-float v3, v3, p5

    div-float/2addr v3, v10

    sub-float v3, p3, v3

    .line 569
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v5

    iget v10, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float v10, v10, p4

    add-float/2addr v10, v4

    iget v11, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float v11, v11, p5

    add-float/2addr v11, v3

    .line 570
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v1

    move-object v0, p0

    move v2, v4

    move v4, v10

    move v10, v1

    move-object v1, v5

    move v5, v11

    .line 569
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    return-void
.end method

.method public drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V
    .registers 18

    move/from16 v2, p4

    .line 516
    iget-object v3, p1, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 v4, v2, 0x8

    .line 518
    aget v6, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 519
    aget v7, v3, v5

    add-int/lit8 v5, v4, 0x2

    .line 520
    aget v8, v3, v5

    add-int/lit8 v5, v4, 0x3

    .line 521
    aget v9, v3, v5

    add-int/lit8 v5, v4, 0x4

    .line 522
    aget v5, v3, v5

    add-int/lit8 v10, v4, 0x5

    .line 523
    aget v10, v3, v10

    add-int/lit8 v11, v4, 0x6

    .line 524
    aget v11, v3, v11

    add-int/lit8 v4, v4, 0x7

    .line 525
    aget v3, v3, v4

    .line 527
    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v11, v4

    sub-float v4, p2, v11

    .line 528
    iget v11, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v3, v11

    sub-float v3, p3, v3

    .line 530
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v11

    iget v12, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v5, v12

    add-float/2addr v5, v4

    iget v12, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v10, v12

    add-float/2addr v10, v3

    .line 533
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v1

    move-object v0, p0

    move v2, v4

    move v4, v5

    move v5, v10

    move v10, v1

    move-object v1, v11

    .line 530
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    return-void
.end method

.method public drawImageRotated(Lio/blueflower/stapel2d/drawing/Image;FFIF)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    float-to-double v3, v3

    .line 574
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 575
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 576
    iget-object v4, v1, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 v6, v2, 0x8

    .line 578
    aget v10, v4, v6

    add-int/lit8 v7, v6, 0x1

    .line 579
    aget v11, v4, v7

    add-int/lit8 v7, v6, 0x2

    .line 580
    aget v12, v4, v7

    add-int/lit8 v7, v6, 0x3

    .line 581
    aget v13, v4, v7

    add-int/lit8 v7, v6, 0x4

    .line 582
    aget v7, v4, v7

    add-int/lit8 v8, v6, 0x5

    .line 583
    aget v8, v4, v8

    add-int/lit8 v9, v6, 0x6

    .line 584
    aget v9, v4, v9

    add-int/lit8 v6, v6, 0x7

    .line 585
    aget v4, v4, v6

    .line 587
    iget v6, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v9, v6

    .line 588
    iget v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v4, v14

    mul-float/2addr v7, v6

    mul-float/2addr v8, v14

    mul-float v6, v5, v9

    sub-float v6, p2, v6

    mul-float v14, v3, v4

    add-float/2addr v6, v14

    mul-float/2addr v9, v3

    sub-float v9, p3, v9

    mul-float/2addr v4, v5

    sub-float/2addr v9, v4

    mul-float v4, v3, v8

    sub-float v4, v6, v4

    mul-float/2addr v8, v5

    add-float/2addr v8, v9

    mul-float/2addr v5, v7

    move v14, v6

    add-float v6, v4, v5

    mul-float/2addr v3, v7

    add-float v7, v8, v3

    add-float/2addr v5, v14

    add-float/2addr v3, v9

    .line 601
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v15

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v1

    move v2, v9

    move v9, v3

    move v3, v2

    move v2, v8

    move v8, v5

    move v5, v2

    move v2, v14

    move v14, v1

    move-object v1, v15

    invoke-virtual/range {v0 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    return-void
.end method

.method public drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p6

    const/4 v2, 0x0

    cmpg-float v3, p4, v2

    if-lez v3, :cond_156

    cmpg-float v3, p5, v2

    if-gtz v3, :cond_11

    goto/16 :goto_156

    .line 1383
    :cond_11
    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v3

    add-int/lit8 v7, v6, 0x3

    invoke-virtual {v1, v7}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v4

    add-int/lit8 v8, v6, 0x6

    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v9, v6, 0x2

    .line 1384
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v4

    add-int/lit8 v10, v6, 0x5

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v5

    add-int/lit8 v11, v6, 0x8

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1385
    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v5

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v13

    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1386
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v13

    add-int/lit8 v14, v6, 0x7

    invoke-virtual {v1, v14}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v15

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float v13, v3, v4

    cmpl-float v15, v13, p4

    move/from16 v17, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v15, :cond_7f

    div-float v13, p4, v13

    .line 1391
    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_7f
    add-float v13, v5, v17

    cmpl-float v15, v13, p5

    if-lez v15, :cond_8b

    div-float v13, p5, v13

    .line 1392
    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_8b
    move v13, v2

    mul-float v15, v3, v13

    mul-float v18, v4, v13

    mul-float v19, v5, v13

    mul-float v17, v17, v13

    sub-float v2, p4, v15

    sub-float v2, v2, v18

    const/4 v3, 0x0

    .line 1397
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v16

    sub-float v2, p5, v19

    sub-float v2, v2, v17

    .line 1398
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 1401
    iget v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float v3, v15, v2

    add-float v21, p2, v3

    sub-float v3, p4, v18

    mul-float/2addr v3, v2

    add-float v22, p2, v3

    .line 1403
    iget v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float v3, v19, v2

    add-float v23, p3, v3

    sub-float v3, p5, v17

    mul-float/2addr v3, v2

    add-float v24, p3, v3

    .line 1409
    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    mul-float v4, v2, v13

    .line 1410
    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    mul-float v5, v2, v13

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1411
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 1412
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    mul-float v4, v2, v13

    .line 1413
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    mul-float v5, v2, v13

    sub-float v2, p4, v4

    .line 1414
    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v2, v3

    add-float v2, p2, v2

    move/from16 v3, p3

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 1415
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    mul-float v4, v2, v13

    .line 1416
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    mul-float v5, v2, v13

    sub-float v2, p5, v5

    .line 1417
    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v2, v3

    add-float v3, p3, v2

    move/from16 v2, p2

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 1418
    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    mul-float v4, v2, v13

    .line 1419
    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    mul-float v5, v2, v13

    sub-float v2, p4, v4

    .line 1420
    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v2, v3

    add-float v2, p2, v2

    sub-float v3, p5, v5

    iget v6, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v3, v6

    add-float v3, p3, v3

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move/from16 v3, p3

    move v6, v12

    move/from16 v4, v16

    move/from16 v5, v19

    move/from16 v2, v21

    .line 1423
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v8, v2

    move v6, v7

    move/from16 v5, v20

    move/from16 v3, v23

    move/from16 v2, p2

    move v7, v4

    move v4, v15

    .line 1424
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v6, v10

    move/from16 v4, v18

    move/from16 v2, v22

    .line 1425
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v4, v7

    move v2, v8

    move v6, v14

    move v8, v3

    move v7, v5

    move/from16 v5, v17

    move/from16 v3, v24

    .line 1426
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-int/lit8 v6, p6, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v7

    move v3, v8

    .line 1428
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_156
    :goto_156
    return-void
.end method

.method public drawOval(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v1, p8

    .line 606
    iget-object v2, v15, Lio/blueflower/stapel2d/drawing/Image;->uvs:[F

    mul-int/lit8 v3, v1, 0x8

    .line 608
    aget v8, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 609
    aget v9, v2, v4

    add-int/lit8 v4, v3, 0x2

    .line 610
    aget v10, v2, v4

    add-int/lit8 v4, v3, 0x3

    .line 611
    aget v11, v2, v4

    add-int/lit8 v4, v3, 0x6

    .line 612
    aget v4, v2, v4

    add-int/lit8 v3, v3, 0x7

    .line 613
    aget v2, v2, v3

    .line 615
    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v4, v3

    sub-float v3, p2, v4

    .line 616
    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v2, v4

    sub-float v2, p3, v2

    sub-float v4, p7, p6

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_b4

    const/high16 v5, 0x41200000    # 10.0f

    div-float v5, v4, v5

    .line 620
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v6, v5

    div-float v16, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v4, p4, v17

    add-float v6, v3, v4

    mul-float v3, p5, v17

    add-float v7, v2, v3

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v5, :cond_b4

    int-to-float v3, v2

    mul-float v3, v3, v16

    add-float v3, v3, p6

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v3, v4

    const/high16 v12, 0x43340000    # 180.0f

    div-float/2addr v3, v12

    add-int/lit8 v2, v2, 0x1

    int-to-float v13, v2

    mul-float v13, v13, v16

    add-float v13, v13, p6

    mul-float/2addr v13, v4

    div-float/2addr v13, v12

    float-to-double v3, v3

    move/from16 p2, v2

    move-wide/from16 v18, v3

    .line 627
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v17

    .line 628
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v17

    float-to-double v12, v13

    move/from16 p3, v2

    move/from16 p7, v3

    .line 629
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v17

    .line 630
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v17

    .line 631
    invoke-virtual {v15, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v4

    mul-float v12, p3, p4

    add-float/2addr v12, v6

    mul-float v13, p7, p5

    add-float/2addr v13, v7

    mul-float v2, v2, p4

    add-float/2addr v2, v6

    mul-float v3, v3, p5

    add-float/2addr v3, v7

    .line 637
    invoke-virtual {v15, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v14

    move-object v1, v4

    move v4, v2

    move v2, v12

    move v12, v10

    move/from16 v18, v5

    move v5, v3

    move v3, v13

    move v13, v11

    move/from16 v19, p2

    .line 631
    invoke-virtual/range {v0 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v5, v18

    move/from16 v2, v19

    goto :goto_4c

    :cond_b4
    return-void
.end method

.method public drawSparseNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V
    .registers 22

    move-object/from16 v1, p1

    move/from16 v6, p6

    .line 1432
    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v4

    .line 1433
    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v5

    .line 1434
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float v7, v0, v4

    .line 1435
    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float v8, v2, v5

    mul-float v9, v0, p4

    mul-float v10, v2, p5

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1439
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-float v0, p2, v9

    sub-float v2, v0, v7

    add-int/lit8 v6, p6, 0x2

    move-object v0, p0

    .line 1440
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v9, v2

    add-float v0, p3, v10

    sub-float v3, v0, v8

    add-int/lit8 v6, p6, 0x6

    move-object v0, p0

    move/from16 v2, p2

    .line 1441
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-int/lit8 v6, p6, 0x8

    move v2, v9

    .line 1442
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v10, v2

    move v11, v3

    move v9, v4

    add-float v2, p2, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v4, v9, v7

    sub-float v4, p4, v4

    add-int/lit8 v6, p6, 0x1

    move/from16 v3, p3

    .line 1444
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v13, v2

    move v14, v4

    move v12, v5

    add-float v3, p3, v8

    mul-float v5, v12, v7

    sub-float v5, p5, v5

    add-int/lit8 v6, p6, 0x3

    move/from16 v2, p2

    move v4, v9

    .line 1445
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-int/lit8 v6, p6, 0x5

    move v2, v10

    .line 1446
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-int/lit8 v6, p6, 0x7

    move v3, v11

    move v5, v12

    move v2, v13

    move v4, v14

    .line 1447
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V
    .registers 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1264
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    return-void
.end method

.method public drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V
    .registers 21

    .line 1268
    iget-object v9, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 1269
    iget v10, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    .line 1270
    iget v11, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    .line 1272
    iget-object v2, p1, Lio/blueflower/stapel2d/drawing/Font;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 1273
    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    iget v3, p1, Lio/blueflower/stapel2d/drawing/Font;->scale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    .line 1274
    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v2, v3

    iput v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    .line 1276
    iget-object v1, p1, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Image;Ljava/lang/String;FFFFFF)V

    .line 1278
    iput v10, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    .line 1279
    iput v11, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    .line 1280
    invoke-virtual {p0, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    return-void
.end method

.method public final drawText(Lio/blueflower/stapel2d/drawing/Image;Ljava/lang/String;FFFFFF)V
    .registers 15

    .line 1341
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8a

    .line 1342
    :cond_8
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->extractCodepoints(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->requiresBidi()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1346
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->applyBidiRtlAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1347
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->extractCodepoints(Ljava/lang/String;)V

    .line 1351
    :cond_18
    sget-object p2, Linfo/flowersoft/theotown/util/ArabicShaping;->INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/ArabicShaping;->transformInplace(Lcom/badlogic/gdx/utils/IntArray;)V

    const/4 p2, 0x0

    .line 1353
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    .line 1354
    iget v1, p1, Lio/blueflower/stapel2d/drawing/Image;->spacingX:F

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, p7, v2

    if-eqz v3, :cond_42

    move v3, p2

    .line 1357
    :goto_2d
    iget-object v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v3, v5, :cond_42

    .line 1358
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Image;->getCodepointWidth(I)F

    move-result v4

    iget v5, p1, Lio/blueflower/stapel2d/drawing/Image;->spacingX:F

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1362
    :cond_42
    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v3, v1

    sub-float/2addr p5, v3

    mul-float/2addr p7, p5

    add-float/2addr p3, p7

    .line 1363
    iget p5, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr p5, v0

    sub-float/2addr p6, p5

    mul-float/2addr p8, p6

    add-float/2addr p4, p8

    move p5, p2

    move p6, v2

    move p7, p6

    .line 1367
    :goto_51
    iget-object p8, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, p8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p5, v1, :cond_8a

    .line 1368
    invoke-virtual {p8, p5}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result p8

    .line 1369
    invoke-static {p8}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_65

    const/4 v1, 0x1

    goto :goto_66

    :cond_65
    move v1, p2

    :goto_66
    if-nez v1, :cond_69

    move p7, v2

    .line 1371
    :cond_69
    invoke-virtual {p1, p8}, Lio/blueflower/stapel2d/drawing/Image;->charToFrame(I)I

    move-result v3

    .line 1372
    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    mul-float/2addr v4, p6

    add-float/2addr v4, p3

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    mul-float/2addr v5, p7

    add-float/2addr v5, p4

    invoke-virtual {p0, p1, v4, v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1373
    invoke-virtual {p1, p8}, Lio/blueflower/stapel2d/drawing/Image;->getCodepointWidth(I)F

    move-result p8

    iget v3, p1, Lio/blueflower/stapel2d/drawing/Image;->spacingX:F

    add-float/2addr p8, v3

    add-float/2addr p6, p8

    if-eqz v1, :cond_87

    const/high16 p8, 0x40c00000    # 6.0f

    div-float p8, v0, p8

    sub-float/2addr p7, p8

    :cond_87
    add-int/lit8 p5, p5, 0x1

    goto :goto_51

    :cond_8a
    :goto_8a
    return-void
.end method

.method public drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFFFFFI)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 738
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 739
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 740
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 741
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 744
    iget v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v14, v14

    cmpl-float v14, v3, v14

    if-gez v14, :cond_f3

    iget v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v14, v14

    cmpl-float v14, v5, v14

    if-gez v14, :cond_f3

    const/4 v14, 0x0

    cmpg-float v15, v4, v14

    if-ltz v15, :cond_f3

    cmpg-float v14, v6, v14

    if-gez v14, :cond_5d

    goto/16 :goto_f3

    .line 749
    :cond_5d
    iget-boolean v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    if-eqz v14, :cond_7b

    iget v15, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    cmpl-float v15, v3, v15

    if-gez v15, :cond_f3

    iget v15, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    cmpl-float v15, v5, v15

    if-gez v15, :cond_f3

    iget v15, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    cmpg-float v15, v4, v15

    if-ltz v15, :cond_f3

    iget v15, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    cmpg-float v15, v6, v15

    if-gez v15, :cond_7b

    goto/16 :goto_f3

    :cond_7b
    const/4 v15, 0x1

    if-eqz v14, :cond_98

    .line 753
    iget v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    cmpg-float v3, v3, v14

    if-ltz v3, :cond_96

    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_96

    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    cmpl-float v3, v4, v3

    if-gtz v3, :cond_96

    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_98

    :cond_96
    move v14, v15

    goto :goto_9a

    :cond_98
    const/4 v3, 0x0

    move v14, v3

    .line 756
    :goto_9a
    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    if-lt v3, v4, :cond_a6

    .line 757
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flip()V

    :cond_a3
    :goto_a3
    move/from16 v3, p22

    goto :goto_b0

    .line 758
    :cond_a6
    iget-object v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-ne v3, v7, :cond_ac

    if-eqz v14, :cond_a3

    .line 759
    :cond_ac
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    goto :goto_a3

    .line 762
    :goto_b0
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->combineTypeMasks(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p18

    .line 763
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p19

    move v1, v8

    move v2, v9

    .line 764
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p20

    move v1, v10

    move v2, v11

    .line 765
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move/from16 v3, p16

    move/from16 v4, p17

    move/from16 v5, p21

    move v1, v12

    move v2, v13

    .line 766
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    .line 768
    iput-object v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 770
    iget v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    add-int/2addr v1, v15

    iput v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    .line 771
    iget v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    add-int/2addr v1, v15

    iput v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    if-eqz v14, :cond_f3

    .line 774
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->clipNatively()V

    :cond_f3
    :goto_f3
    return-void
.end method

.method public drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFI)V
    .registers 42

    move-object/from16 v0, p0

    .line 724
    iget v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v21, v1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v22, p18

    move/from16 v18, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v22}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFFFFFI)V

    return-void
.end method

.method public drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V
    .registers 34

    move/from16 v12, p10

    move/from16 v15, p13

    move/from16 v16, p12

    move/from16 v17, p11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v14, p12

    move/from16 v13, p13

    move/from16 v18, p14

    .line 794
    invoke-virtual/range {v0 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFI)V

    return-void
.end method

.method public drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V
    .registers 21

    .line 811
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_101

    .line 812
    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_101

    .line 813
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_101

    .line 814
    invoke-static {p3, p5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_29

    goto/16 :goto_101

    .line 818
    :cond_29
    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    if-lt v2, v3, :cond_33

    .line 819
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flip()V

    goto :goto_3a

    .line 820
    :cond_33
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eq v2, p1, :cond_3a

    .line 821
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 825
    :cond_3a
    :goto_3a
    iget-boolean v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    if-eqz v2, :cond_a2

    .line 826
    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    .line 827
    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    .line 828
    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    .line 829
    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    cmpg-float v6, p2, v2

    if-gez v6, :cond_58

    sub-float v6, v2, p2

    sub-float p2, p4, p2

    div-float/2addr v6, p2

    sub-float p2, p8, p6

    mul-float/2addr v6, p2

    add-float p2, p6, v6

    move v9, v2

    move v2, p2

    move p2, v9

    goto :goto_5a

    :cond_58
    move/from16 v2, p6

    :goto_5a
    cmpg-float v6, p3, v3

    if-gez v6, :cond_6c

    sub-float v6, v3, p3

    sub-float p3, p5, p3

    div-float/2addr v6, p3

    sub-float p3, p9, p7

    mul-float/2addr v6, p3

    add-float p3, p7, v6

    move v9, v3

    move v3, p3

    move p3, v9

    goto :goto_6e

    :cond_6c
    move/from16 v3, p7

    :goto_6e
    cmpl-float v6, p4, v4

    if-lez v6, :cond_80

    sub-float v6, p4, v4

    sub-float v0, p4, p2

    div-float/2addr v6, v0

    sub-float v0, p8, v2

    mul-float/2addr v6, v0

    sub-float v0, p8, v6

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_83

    :cond_80
    move v0, p4

    move/from16 v4, p8

    :goto_83
    cmpl-float v6, p5, v5

    if-lez v6, :cond_92

    sub-float v6, p5, v5

    sub-float v1, p5, p3

    div-float/2addr v6, v1

    sub-float v1, p9, v3

    mul-float/2addr v6, v1

    sub-float v1, p9, v6

    goto :goto_95

    :cond_92
    move v5, p5

    move/from16 v1, p9

    :goto_95
    cmpl-float v6, p2, v0

    if-gez v6, :cond_101

    cmpl-float v6, p3, v5

    if-ltz v6, :cond_9f

    goto/16 :goto_101

    :cond_9f
    :goto_9f
    move/from16 v6, p10

    goto :goto_ad

    :cond_a2
    move v0, p4

    move v5, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v1, p9

    goto :goto_9f

    .line 851
    :goto_ad
    invoke-virtual {p0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->combineTypeMasks(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 852
    iget v7, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    move-object p4, p0

    move p5, p2

    move/from16 p6, p3

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p10, v6

    move/from16 p9, v7

    invoke-virtual/range {p4 .. p10}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v6, p8

    move/from16 v7, p10

    .line 853
    iget v8, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    move/from16 p8, v1

    move/from16 p6, v5

    move/from16 p9, v8

    invoke-virtual/range {p4 .. p10}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    .line 854
    iget p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    move/from16 p9, p2

    move p5, v0

    move/from16 p7, v4

    invoke-virtual/range {p4 .. p10}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    .line 855
    iget p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    move-object p3, p0

    move/from16 p8, p2

    move p4, v0

    move p5, v2

    move/from16 p6, v4

    move/from16 p7, v6

    move/from16 p9, v7

    invoke-virtual/range {p3 .. p9}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    .line 857
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 859
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    .line 860
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    :cond_101
    :goto_101
    return-void
.end method

.method public drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFI)V
    .registers 31

    move/from16 v2, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 676
    invoke-static {p2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 677
    invoke-static {p2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 678
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 679
    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 682
    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gez v5, :cond_dc

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-gez v5, :cond_dc

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_dc

    cmpg-float v5, v4, v5

    if-gez v5, :cond_43

    goto/16 :goto_dc

    .line 687
    :cond_43
    iget-boolean v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    if-eqz v5, :cond_61

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    cmpl-float v6, v0, v6

    if-gez v6, :cond_dc

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    cmpl-float v6, v3, v6

    if-gez v6, :cond_dc

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_dc

    iget v6, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_61

    goto/16 :goto_dc

    :cond_61
    const/4 v11, 0x1

    if-eqz v5, :cond_7e

    .line 691
    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_7c

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_7c

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_7c

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7e

    :cond_7c
    move v12, v11

    goto :goto_80

    :cond_7e
    const/4 v0, 0x0

    move v12, v0

    .line 694
    :goto_80
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    if-lt v0, v1, :cond_8c

    .line 695
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flip()V

    :cond_89
    :goto_89
    move/from16 v0, p17

    goto :goto_96

    .line 696
    :cond_8c
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-ne p1, v0, :cond_92

    if-eqz v12, :cond_89

    .line 697
    :cond_92
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    goto :goto_89

    .line 700
    :goto_96
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->combineTypeMasks(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move-object v0, p0

    move v1, p2

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p14

    .line 701
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p15

    move v1, v7

    move v2, v8

    .line 702
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p16

    move v1, v9

    move v2, v10

    .line 703
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p14

    .line 707
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->pushVertex(FFFFFF)V

    .line 709
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 711
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    add-int/2addr p1, v11

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    .line 712
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    add-int/2addr p1, v11

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    if-eqz v12, :cond_dc

    .line 715
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->clipNatively()V

    :cond_dc
    :goto_dc
    return-void
.end method

.method public drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V
    .registers 33

    move-object/from16 v0, p0

    .line 663
    iget v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedColor:F

    move v15, v14

    move/from16 v16, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v17, p14

    invoke-virtual/range {v0 .. v17}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFI)V

    return-void
.end method

.method public endOfFrame()V
    .registers 2

    .line 309
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-eqz v0, :cond_a

    .line 310
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->unbind()V

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    :cond_a
    return-void
.end method

.method public final extractCodepoints(Ljava/lang/String;)V
    .registers 5

    .line 1329
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 1330
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_22

    :cond_c
    const/4 v0, 0x0

    .line 1332
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 1333
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1334
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 1335
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_d

    :cond_22
    :goto_22
    return-void
.end method

.method public flip()V
    .registers 3

    .line 316
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 318
    iget-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->useBuffering:Z

    if-eqz v0, :cond_f

    .line 321
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    .line 322
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->otherVertexArray:[F

    iput-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    .line 323
    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->otherVertexArray:[F

    .line 326
    :cond_f
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->frameCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->frameCounter:I

    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    .line 329
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    .line 330
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    return-void
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    .line 969
    invoke-virtual {p0, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush(FF)V

    return-void
.end method

.method public final flush(FF)V
    .registers 26

    move-object/from16 v0, p0

    .line 973
    const-string v1, "flush:before"

    invoke-static {v1, v0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 975
    iget v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    if-eqz v1, :cond_2bb

    iget v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    if-eqz v2, :cond_2bb

    .line 976
    iget v3, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_2bb

    .line 978
    iget-object v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    if-eqz v4, :cond_2bb

    .line 979
    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->batchCounter:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->batchCounter:I

    .line 981
    iget-object v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    const/4 v6, 0x0

    if-eqz v4, :cond_34

    .line 982
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->prepareFramebuffer()V

    .line 983
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    iget v4, v2, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenWidth:I

    iget v2, v2, Lio/blueflower/stapel2d/drawing/FrameBuffer;->screenHeight:I

    invoke-interface {v1, v6, v6, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    goto :goto_39

    .line 985
    :cond_34
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, v6, v6, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 988
    :goto_39
    iget-object v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v2, v1, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-ne v2, v4, :cond_45

    iget-boolean v2, v1, Lio/blueflower/stapel2d/drawing/Texture;->dirty:Z

    if-eqz v2, :cond_56

    .line 989
    :cond_45
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 990
    iget-object v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v2, v1, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-ne v2, v4, :cond_2b6

    iget-boolean v1, v1, Lio/blueflower/stapel2d/drawing/Texture;->dirty:Z

    if-eqz v1, :cond_56

    goto/16 :goto_2b6

    .line 996
    :cond_56
    iget-object v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    iget v2, v1, Lio/blueflower/stapel2d/drawing/Shader;->currentContext:I

    iget v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v2, v4, :cond_61

    .line 997
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 1000
    :cond_61
    iget-object v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    iget v1, v1, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    .line 1002
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Texture;->bind()V

    .line 1004
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 1006
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v4, "viewport"

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v2

    .line 1007
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v8, v7

    iget v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v7, v7

    const/high16 v9, -0x40000000    # -2.0f

    div-float/2addr v9, v7

    invoke-interface {v4, v2, v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 1009
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v4, "offset"

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v2

    .line 1010
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-interface {v4, v2, v7, v8}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 1012
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v4, "texture"

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v2

    .line 1013
    iget-object v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v4, v4, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    if-ne v4, v5, :cond_ad

    .line 1014
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, v2, v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    goto :goto_c0

    .line 1016
    :cond_ad
    new-array v7, v4, [I

    move v8, v6

    .line 1017
    :goto_b0
    iget-object v9, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v9, v9, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    if-ge v8, v9, :cond_bb

    .line 1018
    aput v8, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b0

    .line 1020
    :cond_bb
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v2, v4, v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(II[II)V

    .line 1023
    :goto_c0
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v2

    .line 1024
    iget-object v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v4

    .line 1026
    iget-object v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v8, "units"

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v7

    .line 1027
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v9, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v9, v9, Lio/blueflower/stapel2d/drawing/Texture;->units:I

    invoke-interface {v8, v7, v9}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 1029
    iget-object v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v8, "unit"

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v7

    .line 1030
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    int-to-float v2, v2

    invoke-interface {v8, v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 1032
    iget-object v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v8, "dUnit"

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v7

    .line 1033
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v2

    invoke-interface {v8, v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 1035
    iget-object v7, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v8, "unit2"

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v7

    .line 1036
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    int-to-float v4, v4

    invoke-interface {v8, v7, v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 1038
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v7, "dUnit2"

    invoke-virtual {v2, v7}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v2

    .line 1039
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-float/2addr v9, v4

    invoke-interface {v7, v2, v10, v9}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 1041
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v4, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    const-string v7, "time"

    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    rem-long/2addr v7, v9

    long-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-interface {v2, v4, v7}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 1043
    iget-object v2, v0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x4

    const/4 v7, -0x1

    if-nez v2, :cond_193

    move v2, v6

    .line 1044
    :goto_13c
    iget-object v8, v0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_193

    .line 1045
    iget-object v8, v0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;

    .line 1046
    iget-object v9, v8, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->name:Ljava/lang/String;

    .line 1047
    iget-object v8, v8, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->values:[F

    .line 1048
    iget-object v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v10, v9}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v7, :cond_190

    .line 1050
    array-length v9, v8

    if-eq v9, v5, :cond_189

    const/4 v10, 0x2

    if-eq v9, v10, :cond_17f

    const/4 v11, 0x3

    if-eq v9, v11, :cond_173

    if-eq v9, v4, :cond_164

    goto :goto_190

    :cond_164
    move v9, v11

    .line 1061
    sget-object v11, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    aget v13, v8, v6

    aget v14, v8, v5

    aget v15, v8, v10

    aget v16, v8, v9

    invoke-interface/range {v11 .. v16}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    goto :goto_190

    .line 1058
    :cond_173
    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    aget v11, v8, v6

    aget v13, v8, v5

    aget v8, v8, v10

    invoke-interface {v9, v12, v11, v13, v8}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    goto :goto_190

    .line 1055
    :cond_17f
    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    aget v10, v8, v6

    aget v8, v8, v5

    invoke-interface {v9, v12, v10, v8}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    goto :goto_190

    .line 1052
    :cond_189
    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    aget v8, v8, v6

    invoke-interface {v9, v12, v8}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    :cond_190
    :goto_190
    add-int/lit8 v2, v2, 0x1

    goto :goto_13c

    .line 1068
    :cond_193
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const-string v5, "vVertex"

    invoke-interface {v2, v1, v5}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v9

    .line 1069
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const-string v5, "vColor"

    invoke-interface {v2, v1, v5}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 1070
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const-string v8, "vTexCoord"

    invoke-interface {v5, v1, v8}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    .line 1071
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const-string v10, "vType"

    invoke-interface {v8, v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v15

    .line 1072
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const-string v10, "vQuadCoord"

    invoke-interface {v8, v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 1074
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 1075
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    if-eq v5, v7, :cond_1cc

    .line 1077
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v5}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    :cond_1cc
    if-eq v15, v7, :cond_1d3

    .line 1080
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v15}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    :cond_1d3
    if-eq v1, v7, :cond_1da

    .line 1083
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 1086
    :cond_1da
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->indexBufferObject:I

    const v11, 0x8893

    invoke-interface {v8, v11, v10}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 1091
    iget-object v8, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1092
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v12, 0x0

    iget-object v14, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x2

    move v13, v11

    const/16 v11, 0x1406

    const/16 v16, 0x18

    move/from16 v13, v16

    invoke-interface/range {v8 .. v14}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    if-eq v5, v7, :cond_218

    .line 1094
    iget-object v8, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1095
    sget-object v10, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v14, 0x0

    iget-object v8, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v12, 0x2

    move/from16 v16, v13

    const/16 v13, 0x1406

    move v11, v5

    move v5, v15

    move/from16 v15, v16

    move-object/from16 v16, v8

    invoke-interface/range {v10 .. v16}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move v8, v11

    move v13, v15

    goto :goto_21a

    :cond_218
    move v8, v5

    move v5, v15

    .line 1097
    :goto_21a
    iget-object v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1098
    sget-object v10, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v14, 0x1

    iget-object v11, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v12, 0x4

    move v15, v13

    const/16 v13, 0x1401

    move-object/from16 v16, v11

    move v11, v2

    invoke-interface/range {v10 .. v16}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move v13, v15

    if-eq v5, v7, :cond_24a

    .line 1100
    iget-object v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1101
    sget-object v11, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v15, 0x0

    iget-object v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    move/from16 v16, v13

    const/4 v13, 0x1

    const/16 v14, 0x1401

    move v12, v5

    move-object/from16 v17, v10

    invoke-interface/range {v11 .. v17}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_24a
    if-eq v1, v7, :cond_25f

    .line 1104
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v21, 0x0

    iget-object v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->_quadCoordBuffer:Ljava/nio/ByteBuffer;

    const/16 v18, 0x2

    const/16 v19, 0x1401

    const/16 v20, 0x1

    move/from16 v17, v1

    move-object/from16 v22, v10

    invoke-interface/range {v16 .. v22}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1106
    :cond_25f
    iget-object v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->_vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :goto_264
    if-lez v3, :cond_28e

    .line 1109
    iget v10, v0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_ELEMENT_ARRAY_QUAD_COUNT:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1111
    iget-object v11, v0, Lio/blueflower/stapel2d/drawing/Engine;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v12, v0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    iget v13, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    mul-int/lit8 v13, v13, 0x18

    mul-int/lit8 v14, v10, 0x18

    invoke-virtual {v11, v12, v13, v14}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 1115
    iget-object v11, v0, Lio/blueflower/stapel2d/drawing/Engine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1117
    sget-object v11, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    mul-int/lit8 v12, v10, 0x6

    const/16 v13, 0x1403

    invoke-interface {v11, v4, v12, v13, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 1119
    iget v11, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    add-int/2addr v11, v10

    iput v11, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    sub-int/2addr v3, v10

    goto :goto_264

    .line 1123
    :cond_28e
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v13, 0x8893

    invoke-interface {v3, v13, v6}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 1125
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v9}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 1126
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    if-eq v8, v7, :cond_2a7

    .line 1128
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    :cond_2a7
    if-eq v5, v7, :cond_2ae

    .line 1131
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    :cond_2ae
    if-eq v1, v7, :cond_2bb

    .line 1134
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    goto :goto_2bb

    .line 991
    :cond_2b6
    :goto_2b6
    iget v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    iput v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    return-void

    .line 1139
    :cond_2bb
    :goto_2bb
    iget v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    iput v1, v0, Lio/blueflower/stapel2d/drawing/Engine;->currentOffset:I

    .line 1140
    const-string v1, "flush:after"

    invoke-static {v1, v0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdditive()I
    .registers 2

    .line 1239
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->additive:I

    return v0
.end method

.method public getBatchCounter()I
    .registers 2

    .line 363
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->batchCounter:I

    return v0
.end method

.method public getBlue()I
    .registers 2

    .line 1217
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    return v0
.end method

.method public getClipRectH()F
    .registers 3

    .line 483
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getClipRectW()F
    .registers 3

    .line 479
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getClipRectX()F
    .registers 2

    .line 471
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    return v0
.end method

.method public getClipRectY()F
    .registers 2

    .line 475
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 1197
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    invoke-direct {v0, v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    return-object v0
.end method

.method public getColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 1201
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    iput v0, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    .line 1202
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    iput v0, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    .line 1203
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    iput v0, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    .line 1204
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    iput v0, p1, Lio/blueflower/stapel2d/drawing/Color;->a:I

    return-object p1
.end method

.method public getDefaultShader()Lio/blueflower/stapel2d/drawing/Shader;
    .registers 2

    .line 334
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->defaultShader:Lio/blueflower/stapel2d/drawing/Shader;

    return-object v0
.end method

.method public getDrawCounter()I
    .registers 2

    .line 359
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    return v0
.end method

.method public getDrawIndex()I
    .registers 2

    .line 294
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    return v0
.end method

.method public getFrame()I
    .registers 2

    .line 290
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->frameCounter:I

    return v0
.end method

.method public getFramebuffer()Lio/blueflower/stapel2d/drawing/FrameBuffer;
    .registers 2

    .line 1561
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    return-object v0
.end method

.method public getGreen()I
    .registers 2

    .line 1213
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1510
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    return v0
.end method

.method public getHeightRatio()F
    .registers 3

    .line 647
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    int-to-float v0, v0

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMemoryConsumption()J
    .registers 4

    .line 1543
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_ELEMENT_ARRAY_QUAD_COUNT:I

    iget-boolean v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->useBuffering:Z

    invoke-static {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->getMemoryConsumption(IIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPixels([I)[I
    .registers 8

    .line 1451
    iget v4, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    iget v5, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/drawing/Engine;->getPixels([IIIII)[I

    move-result-object p1

    return-object p1
.end method

.method public getPixels([IIIII)[I
    .registers 15

    .line 1455
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    if-nez p1, :cond_9

    mul-int p1, p4, p5

    .line 1458
    new-array p1, p1, [I

    :cond_9
    mul-int/lit8 v0, p4, 0x4

    mul-int/2addr v0, p5

    .line 1462
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1463
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1464
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    sub-int/2addr v0, p3

    sub-int v3, v0, p5

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1465
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p2

    const/4 p3, 0x0

    mul-int p4, v4, v5

    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    return-object p1
.end method

.method public getRed()I
    .registers 2

    .line 1209
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 338
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 342
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    return v0
.end method

.method public getShader()Lio/blueflower/stapel2d/drawing/Shader;
    .registers 2

    .line 1158
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    return-object v0
.end method

.method public getTransparency()I
    .registers 2

    .line 1221
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 1249
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->typeMask:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getUniformContainer(Ljava/lang/String;I)[F
    .registers 5

    const/4 v0, 0x0

    .line 226
    :goto_1
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 227
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;

    iget-object v1, v1, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 228
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;

    goto :goto_26

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_36

    .line 233
    iget-object p1, v0, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->values:[F

    if-eqz p1, :cond_31

    .line 234
    array-length v1, p1

    if-eq v1, p2, :cond_30

    goto :goto_31

    :cond_30
    return-object p1

    .line 235
    :cond_31
    :goto_31
    new-array p1, p2, [F

    .line 236
    iput-object p1, v0, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->values:[F

    return-object p1

    .line 240
    :cond_36
    new-instance v0, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;

    invoke-direct {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;-><init>(Ljava/lang/String;)V

    .line 241
    new-array p1, p2, [F

    .line 242
    iput-object p1, v0, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->values:[F

    .line 243
    iget-object p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getVirtualHeight()I
    .registers 2

    .line 463
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    return v0
.end method

.method public getVirtualWidth()I
    .registers 2

    .line 459
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1506
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    return v0
.end method

.method public getWidthRatio()F
    .registers 3

    .line 643
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isClippingActive()Z
    .registers 2

    .line 467
    iget-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    return v0
.end method

.method public isDrawArrayValid(III)Z
    .registers 6

    .line 285
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->frameCounter:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_c

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1b

    iget-boolean p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->useBuffering:Z

    if-eqz p1, :cond_1b

    :cond_c
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    if-lt p3, p2, :cond_1b

    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    add-int/2addr p1, p3

    sub-int/2addr p1, p2

    iget p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    if-gt p1, p2, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public isFrameBufferValid(Lio/blueflower/stapel2d/drawing/FrameBuffer;)Z
    .registers 3

    .line 943
    iget p1, p1, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public loadFrameBuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V
    .registers 5

    .line 926
    iget v0, p1, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v0, v1, :cond_14

    .line 927
    iget-object v0, p1, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v2, v0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    if-eq v2, v1, :cond_f

    .line 928
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 930
    :cond_f
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->load(I)V

    :cond_14
    return-void
.end method

.method public loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 4

    .line 920
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Shader;->currentContext:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v0, v1, :cond_9

    .line 921
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Shader;->load(I)V

    :cond_9
    return-void
.end method

.method public loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 4

    .line 912
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v0, v1, :cond_d

    .line 913
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Texture;->setUp(I)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 916
    :cond_d
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Texture;->upload()V

    return-void
.end method

.method public loadTextureIfDirty(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 4

    .line 906
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p1, Lio/blueflower/stapel2d/drawing/Texture;->dirty:Z

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 907
    :cond_c
    :goto_c
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

.method public final prepareFramebuffer()V
    .registers 4

    .line 382
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-ne v0, v1, :cond_e

    iget v0, v0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v0, v1, :cond_3e

    .line 386
    :cond_e
    const-string v0, "a"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    iget v1, v0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->currentContext:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v1, v2, :cond_1e

    .line 388
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->loadFrameBuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 390
    :cond_1e
    const-string v0, "b"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    iget-object v0, v0, Lio/blueflower/stapel2d/drawing/FrameBuffer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    iget v1, v0, Lio/blueflower/stapel2d/drawing/Texture;->currentContext:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    if-eq v1, v2, :cond_30

    .line 392
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 394
    :cond_30
    const-string v0, "c"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->bind()V

    .line 396
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    :cond_3e
    return-void
.end method

.method public final pushVertex(FFFFFF)V
    .registers 9

    .line 651
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    aput p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 652
    aput p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 653
    aput p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 654
    aput p4, v0, p1

    add-int/lit8 p1, v1, 0x4

    .line 655
    aput p5, v0, p1

    add-int/lit8 p1, v1, 0x5

    .line 656
    aput p6, v0, p1

    add-int/lit8 v1, v1, 0x6

    .line 657
    iput v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    return-void
.end method

.method public final reappend(Lio/blueflower/stapel2d/drawing/Texture;III)V
    .registers 8

    sub-int/2addr p4, p3

    .line 874
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    add-int/2addr v0, p4

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    if-le v0, v1, :cond_12

    .line 875
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flip()V

    .line 876
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_QUAD_COUNT:I

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_19

    .line 877
    :cond_12
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eq v0, p1, :cond_19

    .line 878
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 881
    :cond_19
    :goto_19
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->frameCounter:I

    if-ne p2, v0, :cond_29

    .line 882
    iget-object p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    mul-int/lit8 p3, p3, 0x18

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    mul-int/lit8 v1, p4, 0x18

    invoke-static {p2, p3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_36

    .line 889
    :cond_29
    iget-object p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->otherVertexArray:[F

    mul-int/lit8 p3, p3, 0x18

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexArray:[F

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    mul-int/lit8 v2, p4, 0x18

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    :goto_36
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentTexture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 899
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    mul-int/lit8 p2, p4, 0x18

    add-int/2addr p1, p2

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->vertexPtr:I

    .line 901
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    add-int/2addr p1, p4

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentQuad:I

    .line 902
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    add-int/2addr p1, p4

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    return-void
.end method

.method public releaseFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V
    .registers 4

    .line 958
    const-string v0, "release"

    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 959
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-ne v1, p1, :cond_c

    .line 960
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->removeFramebuffer()V

    .line 962
    :cond_c
    invoke-static {v0, p0}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 963
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getTexture()Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 964
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->release()V

    .line 965
    const-string v0, "releaseFramebuffer"

    invoke-static {v0, p1}, Lio/blueflower/stapel2d/drawing/GLUtil;->checkError(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    .line 951
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Shader;->release()V

    .line 952
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    if-ne v0, p1, :cond_b

    const/4 p1, 0x0

    .line 953
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    :cond_b
    return-void
.end method

.method public releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 947
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Texture;->release()V

    return-void
.end method

.method public removeFramebuffer()V
    .registers 2

    const/4 v0, 0x0

    .line 1557
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    return-void
.end method

.method public removeUniform(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 275
    :goto_2
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 276
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;

    iget-object v2, v2, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 277
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->customUniforms:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return v0
.end method

.method public final requiresBidi()Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1284
    :goto_2
    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/Engine;->codepoints:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v3, :cond_1d

    .line 1285
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    .line 1286
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    const v4, 0x30006

    and-int/2addr v2, v4

    if-eqz v2, :cond_1a

    return v3

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 1162
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->additive:I

    const/16 v0, 0xff

    .line 1163
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    .line 1164
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->calculateColor()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1165
    invoke-virtual {p0, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public resetBatchCounter()V
    .registers 2

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->batchCounter:I

    return-void
.end method

.method public resetClipping()V
    .registers 2

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    return-void
.end method

.method public resetDrawCounter()V
    .registers 2

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->drawCounter:I

    return-void
.end method

.method public resize(II)V
    .registers 4

    .line 1253
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    .line 1254
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    .line 1255
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->virtualWidth:I

    if-lez v0, :cond_9

    move p1, v0

    :cond_9
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedWidth:I

    .line 1256
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->virtualHeight:I

    if-lez p1, :cond_10

    move p2, p1

    :cond_10
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->calculatedHeight:I

    return-void
.end method

.method public setAdditive(I)V
    .registers 3

    .line 1232
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->additive:I

    if-eq p1, v0, :cond_9

    .line 1233
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->additive:I

    .line 1234
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->calculateColor()V

    :cond_9
    return-void
.end method

.method public setBlending(I)V
    .registers 3

    .line 1514
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->blending:I

    if-eq p1, v0, :cond_c

    .line 1515
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 1516
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->blending:I

    .line 1517
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->applyBlending()V

    :cond_c
    return-void
.end method

.method public setClipRect(FFFF)V
    .registers 6

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipping:Z

    .line 505
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX0:F

    .line 506
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY0:F

    add-float/2addr p1, p3

    .line 507
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectX1:F

    add-float/2addr p2, p4

    .line 508
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->clipRectY1:F

    return-void
.end method

.method public setColor(III)V
    .registers 6

    .line 1169
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    if-ne p1, v0, :cond_e

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    if-ne p2, v0, :cond_e

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    if-eq p3, v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    :cond_e
    :goto_e
    const/4 v0, 0x0

    .line 1170
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    .line 1171
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    .line 1172
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    .line 1173
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->calculateColor()V

    return-void
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1193
    :cond_3
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    iget p1, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    return-void
.end method

.method public setColorAndTransparency(IIII)V
    .registers 7

    .line 1178
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    if-ne p1, v0, :cond_12

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    if-ne p2, v0, :cond_12

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    if-ne p3, v0, :cond_12

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    if-eq p4, v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    const/4 v0, 0x0

    .line 1179
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->r:I

    .line 1180
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->g:I

    .line 1181
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->b:I

    .line 1182
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    .line 1183
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->calculateColor()V

    return-void
.end method

.method public setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 5

    .line 1188
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    iget v2, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    iget p1, p1, Lio/blueflower/stapel2d/drawing/Color;->a:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(IIII)V

    return-void
.end method

.method public setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V
    .registers 3

    .line 1547
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-ne p1, v0, :cond_5

    return-void

    .line 1548
    :cond_5
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 1549
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    .line 1550
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->unbind()V

    const/4 v0, 0x0

    .line 1551
    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentlyBoundFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    .line 1553
    :cond_14
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentFramebuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    return-void
.end method

.method public setScale(FF)V
    .registers 3

    .line 346
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleX:F

    .line 347
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->scaleY:F

    return-void
.end method

.method public setShader(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    if-nez p1, :cond_4

    .line 1145
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->defaultShader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 1148
    :cond_4
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    if-eq v0, p1, :cond_19

    .line 1149
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 1151
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 1152
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 1153
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentShader:Lio/blueflower/stapel2d/drawing/Shader;

    iget v0, v0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    :cond_19
    return-void
.end method

.method public setTransparency(I)V
    .registers 3

    .line 1225
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    if-eq p1, v0, :cond_14

    const/4 v0, 0x0

    .line 1226
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->alpha:I

    .line 1227
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->calculateColor()V

    :cond_14
    return-void
.end method

.method public setType(I)V
    .registers 3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 1245
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->typeMask:I

    return-void
.end method

.method public setUniform(Ljava/lang/String;F)V
    .registers 4

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->getUniformContainer(Ljava/lang/String;I)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 250
    aput p2, p1, v0

    return-void
.end method

.method public setUniform(Ljava/lang/String;FF)V
    .registers 5

    const/4 v0, 0x2

    .line 254
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->getUniformContainer(Ljava/lang/String;I)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 255
    aput p2, p1, v0

    const/4 p2, 0x1

    .line 256
    aput p3, p1, p2

    return-void
.end method

.method public setUniform(Ljava/lang/String;FFF)V
    .registers 6

    const/4 v0, 0x3

    .line 260
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->getUniformContainer(Ljava/lang/String;I)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 261
    aput p2, p1, v0

    const/4 p2, 0x1

    .line 262
    aput p3, p1, p2

    const/4 p2, 0x2

    .line 263
    aput p4, p1, p2

    return-void
.end method

.method public setUniform(Ljava/lang/String;FFFF)V
    .registers 7

    const/4 v0, 0x4

    .line 267
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->getUniformContainer(Ljava/lang/String;I)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 268
    aput p2, p1, v0

    const/4 p2, 0x1

    .line 269
    aput p3, p1, p2

    const/4 p2, 0x2

    .line 270
    aput p4, p1, p2

    const/4 p2, 0x3

    .line 271
    aput p5, p1, p2

    return-void
.end method

.method public setUp()V
    .registers 13

    .line 401
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->currentContext:I

    .line 402
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xb44

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 404
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 406
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xbe2

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 407
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->applyBlending()V

    .line 409
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_ELEMENT_ARRAY_QUAD_COUNT:I

    mul-int/lit8 v3, v0, 0x6

    new-array v4, v3, [S

    mul-int/lit8 v0, v0, 0xc

    .line 410
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 411
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    move v5, v2

    move v6, v5

    move v7, v6

    .line 416
    :goto_37
    iget v8, p0, Lio/blueflower/stapel2d/drawing/Engine;->MAX_ELEMENT_ARRAY_QUAD_COUNT:I

    const/4 v9, 0x4

    if-ge v5, v8, :cond_62

    int-to-short v8, v7

    .line 417
    aput-short v8, v4, v6

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v11, v7, 0x1

    int-to-short v11, v11

    .line 418
    aput-short v11, v4, v10

    add-int/lit8 v10, v6, 0x2

    add-int/lit8 v11, v7, 0x2

    int-to-short v11, v11

    .line 419
    aput-short v11, v4, v10

    add-int/lit8 v10, v6, 0x3

    .line 420
    aput-short v11, v4, v10

    add-int/lit8 v10, v6, 0x4

    add-int/lit8 v11, v7, 0x3

    int-to-short v11, v11

    .line 421
    aput-short v11, v4, v10

    add-int/lit8 v10, v6, 0x5

    .line 422
    aput-short v8, v4, v10

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 426
    :cond_62
    invoke-virtual {v0, v4, v2, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 427
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 430
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 431
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 432
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lio/blueflower/stapel2d/drawing/Engine;->indexBufferObject:I

    .line 433
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v4, 0x8893

    invoke-interface {v3, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 434
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const v5, 0x88e4

    invoke-interface {v1, v4, v3, v0, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 435
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    return-void
.end method

.method public setVirtualSize(II)V
    .registers 3

    .line 453
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->virtualWidth:I

    .line 454
    iput p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->virtualHeight:I

    .line 455
    iget p1, p0, Lio/blueflower/stapel2d/drawing/Engine;->width:I

    iget p2, p0, Lio/blueflower/stapel2d/drawing/Engine;->height:I

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->resize(II)V

    return-void
.end method

###### Class io.blueflower.stapel2d.drawing.Engine.CustomUniform (io.blueflower.stapel2d.drawing.Engine$CustomUniform)
.class public Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/drawing/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomUniform"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public values:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Engine$CustomUniform;->name:Ljava/lang/String;

    return-void
.end method
