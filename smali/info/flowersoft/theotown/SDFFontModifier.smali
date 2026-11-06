###### Class info.flowersoft.theotown.SDFFontModifier (info.flowersoft.theotown.SDFFontModifier)
.class public Linfo/flowersoft/theotown/SDFFontModifier;
.super Ljava/lang/Object;
.source "SDFFontModifier.java"

# interfaces
.implements Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;


# static fields
.field public static final sqrt2:F


# instance fields
.field public distancesSqr:[F

.field public nearestX:[F

.field public nearestY:[F

.field public final radius:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Linfo/flowersoft/theotown/SDFFontModifier;->sqrt2:F

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    .line 25
    iput-object v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    .line 26
    iput-object v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    .line 30
    iput p1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->radius:I

    return-void
.end method

.method public static distanceSqr(FFFF)F
    .registers 4

    .line 0
    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    return p2
.end method

.method public static edgeDF(FFF)F
    .registers 14

    mul-float v0, p0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_b

    sub-float/2addr v1, p2

    return v1

    .line 273
    :cond_b
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 274
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_18

    goto :goto_1b

    :cond_18
    move v10, p1

    move p1, p0

    move p0, v10

    :goto_1b
    mul-float v0, p0, v1

    div-float/2addr v0, p1

    cmpg-float v2, p2, v0

    const/high16 v3, 0x40000000    # 2.0f

    if-gez v2, :cond_32

    add-float v0, p1, p0

    mul-float/2addr v0, v1

    mul-float/2addr p1, v3

    mul-float/2addr p1, p0

    mul-float/2addr p1, p2

    float-to-double p0, p1

    .line 285
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    sub-float/2addr v0, p0

    return v0

    :cond_32
    float-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v0

    sub-double/2addr v6, v8

    cmpg-double v0, v4, v6

    if-gez v0, :cond_3e

    sub-float/2addr v1, p2

    mul-float/2addr v1, p1

    return v1

    :cond_3e
    const/high16 v0, -0x41000000    # -0.5f

    add-float v1, p1, p0

    mul-float/2addr v1, v0

    mul-float/2addr p1, v3

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    add-float/2addr v1, p0

    return v1
.end method


# virtual methods
.method public final applyBuffers(IILjava/nio/IntBuffer;)V
    .registers 13

    .line 251
    iget v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->radius:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, p2, :cond_43

    move v4, v2

    :goto_c
    if-ge v4, p1, :cond_40

    mul-int v5, v3, p1

    add-int/2addr v5, v4

    .line 255
    iget-object v6, p0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v6, v6, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v0

    .line 256
    invoke-virtual {p3, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x7f

    if-le v7, v8, :cond_27

    neg-float v6, v6

    :cond_27
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float/2addr v7, v6

    const/4 v6, 0x0

    .line 258
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    or-int/lit16 v6, v6, -0x100

    .line 259
    invoke-virtual {p3, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_43
    return-void
.end method

.method public final fillBuffers(IILjava/nio/IntBuffer;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x1

    move v3, v2

    :goto_6
    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_c2

    move v4, v2

    :goto_b
    add-int/lit8 v5, p1, -0x1

    if-ge v4, v5, :cond_be

    mul-int v5, v3, p1

    add-int/2addr v5, v4

    .line 76
    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1d

    goto/16 :goto_ba

    :cond_1d
    sub-int v8, v5, p1

    add-int/lit8 v9, v8, -0x1

    .line 81
    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    and-int/2addr v9, v7

    .line 82
    invoke-virtual {v1, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    and-int/2addr v10, v7

    add-int/2addr v8, v2

    .line 83
    invoke-virtual {v1, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    and-int/2addr v8, v7

    add-int/lit8 v11, v5, -0x1

    .line 84
    invoke-virtual {v1, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    and-int/2addr v11, v7

    add-int/lit8 v12, v5, 0x1

    .line 85
    invoke-virtual {v1, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    and-int/2addr v12, v7

    add-int v13, v5, p1

    add-int/lit8 v14, v13, -0x1

    .line 86
    invoke-virtual {v1, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v14

    and-int/2addr v14, v7

    .line 87
    invoke-virtual {v1, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v15

    and-int/2addr v15, v7

    add-int/2addr v13, v2

    .line 88
    invoke-virtual {v1, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    and-int/2addr v13, v7

    if-nez v6, :cond_5e

    if-eq v10, v7, :cond_5e

    if-eq v11, v7, :cond_5e

    if-eq v12, v7, :cond_5e

    if-eq v15, v7, :cond_5e

    goto :goto_ba

    :cond_5e
    int-to-float v7, v8

    .line 93
    sget v8, Linfo/flowersoft/theotown/SDFFontModifier;->sqrt2:F

    int-to-float v12, v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    int-to-float v13, v13

    add-float/2addr v12, v13

    int-to-float v9, v9

    sub-float/2addr v12, v9

    int-to-float v11, v11

    mul-float/2addr v11, v8

    sub-float/2addr v12, v11

    int-to-float v11, v14

    sub-float/2addr v12, v11

    int-to-float v14, v15

    mul-float/2addr v14, v8

    add-float/2addr v11, v14

    add-float/2addr v11, v13

    sub-float/2addr v11, v9

    int-to-float v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v11, v8

    sub-float/2addr v11, v7

    .line 96
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3a83126f    # 0.001f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8a

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8a

    goto :goto_ba

    :cond_8a
    mul-float v7, v12, v12

    mul-float v8, v11, v11

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v7

    mul-float/2addr v12, v8

    mul-float/2addr v11, v8

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    .line 103
    invoke-static {v12, v11, v6}, Linfo/flowersoft/theotown/SDFFontModifier;->edgeDF(FFF)F

    move-result v6

    .line 104
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    int-to-float v8, v4

    mul-float/2addr v12, v6

    add-float/2addr v12, v8

    aput v12, v7, v5

    .line 105
    iget-object v9, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    int-to-float v10, v3

    mul-float/2addr v11, v6

    add-float/2addr v11, v10

    aput v11, v9, v5

    .line 106
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v7, v7, v5

    invoke-static {v8, v10, v7, v11}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v7

    aput v7, v6, v5

    :goto_ba
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_c2
    return-void
.end method

.method public getPadding()I
    .registers 2

    .line 35
    iget v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->radius:I

    return v0
.end method

.method public modify(ILcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 6

    .line 40
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    .line 41
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    .line 43
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 44
    iget v1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->radius:I

    invoke-virtual {p3, p2, v1, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 45
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p2

    .line 47
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/SDFFontModifier;->prepareBuffers(II)V

    .line 48
    invoke-virtual {p0, p1, v0, p2}, Linfo/flowersoft/theotown/SDFFontModifier;->fillBuffers(IILjava/nio/IntBuffer;)V

    .line 49
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/SDFFontModifier;->sweepAndUpdate(II)V

    .line 50
    invoke-virtual {p0, p1, v0, p2}, Linfo/flowersoft/theotown/SDFFontModifier;->applyBuffers(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final prepareBuffers(II)V
    .registers 6

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    if-eqz v0, :cond_9

    array-length v0, v0

    mul-int v1, p1, p2

    if-ge v0, v1, :cond_1a

    :cond_9
    mul-int/lit8 v0, p1, 0x3

    mul-int/2addr v0, p2

    .line 55
    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    .line 56
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    .line 57
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    mul-int v1, p1, p2

    if-ge v0, v1, :cond_32

    .line 61
    iget-object v1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    aput v2, v1, v0

    .line 62
    iget-object v1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 63
    iget-object v1, p0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_32
    return-void
.end method

.method public final sweepAndUpdate(II)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1b8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v6, p2, -0x1

    const v8, 0x3a83126f    # 0.001f

    if-ge v4, v6, :cond_e2

    const/4 v6, 0x1

    :goto_10
    add-int/lit8 v9, p1, -0x1

    if-ge v6, v9, :cond_de

    mul-int v9, v4, p1

    add-int/2addr v9, v6

    .line 123
    iget-object v10, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v11, v10, v9

    add-int/lit8 v12, v9, -0x1

    sub-int v13, v12, p1

    .line 127
    aget v10, v10, v13

    cmpg-float v10, v10, v11

    if-gez v10, :cond_46

    int-to-float v10, v6

    int-to-float v14, v4

    .line 128
    iget-object v15, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v15, v15, v13

    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v1, v1, v13

    invoke-static {v10, v14, v15, v1}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v1

    add-float v10, v1, v8

    cmpg-float v10, v10, v11

    if-gez v10, :cond_46

    .line 130
    iget-object v10, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v10, v10, v13

    .line 131
    iget-object v11, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v11, v11, v13

    move v13, v11

    move v11, v1

    move v1, v13

    const/4 v13, 0x1

    goto :goto_49

    :cond_46
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_49
    sub-int v14, v9, p1

    .line 138
    iget-object v15, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v15, v15, v14

    cmpg-float v15, v15, v11

    if-gez v15, :cond_74

    int-to-float v15, v6

    int-to-float v3, v4

    .line 139
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v7, v7, v14

    move/from16 v16, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v8, v8, v14

    invoke-static {v15, v3, v7, v8}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v3

    add-float v8, v3, v16

    cmpg-float v7, v8, v11

    if-gez v7, :cond_76

    .line 141
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v10, v1, v14

    .line 142
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v1, v1, v14

    move v11, v3

    const/4 v13, 0x1

    goto :goto_76

    :cond_74
    move/from16 v16, v8

    :cond_76
    :goto_76
    add-int/lit8 v3, v9, 0x1

    sub-int v3, v3, p1

    .line 149
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v7, v7, v3

    cmpg-float v7, v7, v11

    if-gez v7, :cond_a0

    int-to-float v7, v6

    int-to-float v8, v4

    .line 150
    iget-object v14, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v14, v14, v3

    iget-object v15, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v15, v15, v3

    invoke-static {v7, v8, v14, v15}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v7

    add-float v8, v7, v16

    cmpg-float v8, v8, v11

    if-gez v8, :cond_a0

    .line 152
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v10, v1, v3

    .line 153
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v1, v1, v3

    move v11, v7

    const/4 v13, 0x1

    .line 160
    :cond_a0
    iget-object v3, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v7, v3, v12

    aget v3, v3, v9

    cmpg-float v3, v7, v3

    if-gez v3, :cond_c8

    int-to-float v3, v6

    int-to-float v7, v4

    .line 161
    iget-object v8, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v8, v8, v12

    iget-object v14, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v14, v14, v12

    invoke-static {v3, v7, v8, v14}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v3

    add-float v8, v3, v16

    cmpg-float v7, v8, v11

    if-gez v7, :cond_c8

    .line 163
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v10, v1, v12

    .line 164
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v1, v1, v12

    move v11, v3

    const/4 v13, 0x1

    :cond_c8
    if-eqz v13, :cond_d8

    .line 171
    iget-object v3, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aput v10, v3, v9

    .line 172
    iget-object v3, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aput v1, v3, v9

    .line 173
    iget-object v1, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aput v11, v1, v9

    add-int/lit8 v5, v5, 0x1

    :cond_d8
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v16

    goto/16 :goto_10

    :cond_de
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_e2
    move/from16 v16, v8

    add-int/lit8 v1, p2, -0x2

    :goto_e6
    if-lez v1, :cond_1b1

    add-int/lit8 v3, p1, -0x2

    :goto_ea
    if-lez v3, :cond_1ad

    mul-int v4, v1, p1

    add-int/2addr v4, v3

    .line 186
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v7, v6, v4

    add-int/lit8 v8, v4, 0x1

    .line 190
    aget v6, v6, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11c

    int-to-float v6, v3

    int-to-float v9, v1

    .line 191
    iget-object v10, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v10, v10, v8

    iget-object v11, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v11, v11, v8

    invoke-static {v6, v9, v10, v11}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v6

    add-float v9, v6, v16

    cmpg-float v9, v9, v7

    if-gez v9, :cond_11c

    .line 193
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v7, v7, v8

    .line 194
    iget-object v9, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v9, v9, v8

    move v10, v7

    move v7, v6

    move v6, v10

    const/4 v10, 0x1

    goto :goto_11f

    :cond_11c
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_11f
    add-int/lit8 v11, v4, -0x1

    add-int v11, v11, p1

    .line 202
    iget-object v12, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v12, v12, v11

    cmpg-float v12, v12, v7

    if-gez v12, :cond_149

    int-to-float v12, v3

    int-to-float v13, v1

    .line 203
    iget-object v14, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v14, v14, v11

    iget-object v15, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v15, v15, v11

    invoke-static {v12, v13, v14, v15}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v12

    add-float v13, v12, v16

    cmpg-float v13, v13, v7

    if-gez v13, :cond_149

    .line 205
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v6, v6, v11

    .line 206
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v9, v7, v11

    move v7, v12

    const/4 v10, 0x1

    :cond_149
    add-int v11, v4, p1

    .line 214
    iget-object v12, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v12, v12, v11

    cmpg-float v12, v12, v7

    if-gez v12, :cond_171

    int-to-float v12, v3

    int-to-float v13, v1

    .line 215
    iget-object v14, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v14, v14, v11

    iget-object v15, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v15, v15, v11

    invoke-static {v12, v13, v14, v15}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v12

    add-float v13, v12, v16

    cmpg-float v13, v13, v7

    if-gez v13, :cond_171

    .line 217
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v6, v6, v11

    .line 218
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v9, v7, v11

    move v7, v12

    const/4 v10, 0x1

    :cond_171
    add-int v8, v8, p1

    .line 226
    iget-object v11, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aget v11, v11, v8

    cmpg-float v11, v11, v7

    if-gez v11, :cond_199

    int-to-float v11, v3

    int-to-float v12, v1

    .line 227
    iget-object v13, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v13, v13, v8

    iget-object v14, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v14, v14, v8

    invoke-static {v11, v12, v13, v14}, Linfo/flowersoft/theotown/SDFFontModifier;->distanceSqr(FFFF)F

    move-result v11

    add-float v12, v11, v16

    cmpg-float v12, v12, v7

    if-gez v12, :cond_199

    .line 229
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aget v6, v6, v8

    .line 230
    iget-object v7, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aget v9, v7, v8

    move v7, v11

    const/4 v10, 0x1

    :cond_199
    if-eqz v10, :cond_1a9

    .line 237
    iget-object v8, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestX:[F

    aput v6, v8, v4

    .line 238
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->nearestY:[F

    aput v9, v6, v4

    .line 239
    iget-object v6, v0, Linfo/flowersoft/theotown/SDFFontModifier;->distancesSqr:[F

    aput v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    :cond_1a9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_ea

    :cond_1ad
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_e6

    :cond_1b1
    if-nez v5, :cond_1b4

    goto :goto_1b8

    :cond_1b4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_1b8
    :goto_1b8
    return-void
.end method
