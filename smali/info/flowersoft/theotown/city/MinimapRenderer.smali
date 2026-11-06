###### Class info.flowersoft.theotown.city.MinimapRenderer (info.flowersoft.theotown.city.MinimapRenderer)
.class public Linfo/flowersoft/theotown/city/MinimapRenderer;
.super Ljava/lang/Object;
.source "MinimapRenderer.java"


# instance fields
.field public bufferData:Ljava/nio/IntBuffer;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public cornerRadius:I

.field public final data:[I

.field public final maxSize:I

.field public final origHeight:I

.field public final origWidth:I

.field public final parcelSize:I

.field public useDefaultTool:Z

.field public useViewFrame:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/city/MinimapRenderer;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;II)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    .line 44
    iput p2, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->origWidth:I

    .line 45
    iput p3, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->origHeight:I

    .line 46
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->maxSize:I

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/2addr p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    mul-int/2addr p2, p3

    .line 48
    new-array p1, p2, [I

    iput-object p1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    return-void
.end method


# virtual methods
.method public getBufferData()Ljava/nio/IntBuffer;
    .registers 3

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->bufferData:Ljava/nio/IntBuffer;

    if-nez v0, :cond_1a

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->bufferData:Ljava/nio/IntBuffer;

    .line 228
    :cond_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->bufferData:Ljava/nio/IntBuffer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->bufferData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->bufferData:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2

    .line 52
    iget v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    return v0
.end method

.method public getData()[I
    .registers 2

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    .line 69
    iget v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->origHeight:I

    return v0

    .line 71
    :cond_d
    iget v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->origWidth:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    .line 61
    iget v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->origWidth:I

    return v0

    .line 63
    :cond_d
    iget v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->origHeight:I

    return v0
.end method

.method public render(Z)V
    .registers 23

    move-object/from16 v1, p0

    .line 85
    iget-boolean v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->useDefaultTool:Z

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    goto :goto_17

    .line 88
    :cond_d
    iget-object v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 90
    :goto_17
    new-instance v2, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;

    iget-object v3, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v0}, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;)V

    .line 92
    iget-object v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v3

    .line 93
    iget-object v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v4

    .line 96
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getWidth()I

    move-result v5

    .line 97
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getHeight()I

    move-result v6

    .line 98
    iget v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    mul-int v7, v0, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v6, :cond_148

    move v10, v0

    const/4 v11, 0x0

    :goto_3c
    if-ge v11, v5, :cond_13d

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 107
    :goto_42
    iget v15, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    if-ge v12, v15, :cond_98

    mul-int/2addr v15, v9

    add-int/2addr v15, v12

    move/from16 v16, v14

    const/4 v8, 0x0

    move v14, v13

    move v13, v0

    .line 110
    :goto_4d
    iget v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    if-ge v8, v0, :cond_8d

    mul-int/2addr v0, v11

    add-int/2addr v0, v8

    move/from16 v18, v7

    .line 114
    :try_start_55
    iget-object v7, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    .line 115
    invoke-virtual {v7, v0, v15}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v7
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_80

    move/from16 v19, v8

    :try_start_5d
    iget-object v8, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->city:Linfo/flowersoft/theotown/city/City;

    .line 116
    invoke-virtual {v8, v0, v15}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_7c

    move/from16 v8, p1

    .line 114
    :try_start_65
    invoke-virtual {v2, v7, v0, v8}, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->getColor(IIZ)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v7

    add-int/2addr v13, v7

    .line 120
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    add-int/2addr v14, v7

    .line 121
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_77} :catch_7a

    add-int v16, v16, v0

    goto :goto_87

    :catch_7a
    move-exception v0

    goto :goto_84

    :catch_7c
    move-exception v0

    :goto_7d
    move/from16 v8, p1

    goto :goto_84

    :catch_80
    move-exception v0

    move/from16 v19, v8

    goto :goto_7d

    .line 123
    :goto_84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_87
    add-int/lit8 v0, v19, 0x1

    move v8, v0

    move/from16 v7, v18

    goto :goto_4d

    :cond_8d
    move/from16 v8, p1

    move/from16 v18, v7

    add-int/lit8 v12, v12, 0x1

    move v0, v13

    move v13, v14

    move/from16 v14, v16

    goto :goto_42

    :cond_98
    move/from16 v8, p1

    move/from16 v18, v7

    .line 128
    div-int v0, v0, v18

    .line 129
    div-int v13, v13, v18

    .line 130
    div-int v14, v14, v18

    shl-int/lit8 v7, v14, 0x10

    const/high16 v12, -0x1000000

    or-int/2addr v7, v12

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v7, v13

    or-int/2addr v0, v7

    .line 134
    iget-boolean v7, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->useViewFrame:Z

    if-eqz v7, :cond_12d

    mul-int v7, v15, v11

    mul-int/2addr v15, v9

    .line 137
    invoke-virtual {v4, v7, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v4, v7, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v3, v13, v14}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v13

    .line 138
    iget v14, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    sub-int v14, v7, v14

    invoke-virtual {v4, v14, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v14

    int-to-float v14, v14

    move/from16 v16, v12

    iget v12, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    sub-int v12, v7, v12

    invoke-virtual {v4, v12, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v3, v14, v12}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v12

    .line 139
    iget v14, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    add-int/2addr v14, v7

    invoke-virtual {v4, v14, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v19, v2

    iget v2, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    add-int/2addr v2, v7

    invoke-virtual {v4, v2, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v14, v2}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v2

    if-eqz v13, :cond_12f

    if-eqz v12, :cond_f4

    if-nez v2, :cond_12f

    :cond_f4
    shr-int/lit8 v2, v0, 0x10

    const/16 v12, 0xff

    and-int/2addr v2, v12

    shr-int/lit8 v13, v0, 0x8

    and-int/2addr v13, v12

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v12

    .line 145
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v13, v12

    .line 146
    div-int/lit8 v13, v13, 0x2

    add-int/2addr v0, v12

    .line 147
    div-int/lit8 v0, v0, 0x2

    .line 149
    invoke-virtual {v4, v7, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v14

    int-to-float v14, v14

    iget v12, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->parcelSize:I

    sub-int/2addr v15, v12

    invoke-virtual {v4, v7, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v14, v7}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v7

    if-nez v7, :cond_121

    const/16 v2, 0xff

    const/16 v12, 0xff

    const/16 v20, 0xff

    goto :goto_124

    :cond_121
    move v12, v0

    move/from16 v20, v13

    :goto_124
    shl-int/lit8 v0, v12, 0x10

    or-int v0, v0, v16

    shl-int/lit8 v7, v20, 0x8

    or-int/2addr v0, v7

    or-int/2addr v0, v2

    goto :goto_12f

    :cond_12d
    move-object/from16 v19, v2

    .line 158
    :cond_12f
    :goto_12f
    iget-object v2, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    aput v0, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v18

    move-object/from16 v2, v19

    goto/16 :goto_3c

    :cond_13d
    move/from16 v8, p1

    move-object/from16 v19, v2

    move/from16 v18, v7

    add-int/lit8 v9, v9, 0x1

    move v0, v10

    goto/16 :goto_38

    .line 163
    :cond_148
    iget v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    if-gtz v0, :cond_14d

    goto :goto_1a3

    .line 166
    :cond_14d
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    mul-int/2addr v0, v0

    const/4 v3, 0x0

    .line 171
    :goto_15c
    iget v2, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    if-ge v3, v2, :cond_1a3

    mul-int v2, v3, v3

    const/4 v4, 0x0

    .line 174
    :goto_163
    iget v7, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    if-ge v4, v7, :cond_19e

    mul-int v8, v4, v4

    add-int/2addr v8, v2

    if-ge v8, v0, :cond_16f

    const/16 v17, 0x0

    goto :goto_19b

    .line 180
    :cond_16f
    iget-object v8, v1, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    add-int/lit8 v9, v7, -0x1

    sub-int/2addr v9, v4

    add-int/lit8 v10, v7, -0x1

    sub-int/2addr v10, v3

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    const/16 v17, 0x0

    aput v17, v8, v9

    sub-int v9, v5, v7

    add-int/2addr v9, v4

    add-int/lit8 v10, v7, -0x1

    sub-int/2addr v10, v3

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    .line 183
    aput v17, v8, v9

    add-int/lit8 v9, v7, -0x1

    sub-int/2addr v9, v4

    sub-int v10, v6, v7

    add-int/2addr v10, v3

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    .line 186
    aput v17, v8, v9

    sub-int v9, v5, v7

    add-int/2addr v9, v4

    sub-int v7, v6, v7

    add-int/2addr v7, v3

    mul-int/2addr v7, v5

    add-int/2addr v9, v7

    .line 189
    aput v17, v8, v9

    :goto_19b
    add-int/lit8 v4, v4, 0x1

    goto :goto_163

    :cond_19e
    const/16 v17, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_15c

    :cond_1a3
    :goto_1a3
    return-void
.end method

.method public renderGrid(I)V
    .registers 9

    .line 196
    iget v0, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->maxSize:I

    div-int v1, v0, p1

    .line 197
    div-int/2addr v0, p1

    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    .line 198
    :goto_8
    iget v4, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->maxSize:I

    if-ge v2, v4, :cond_42

    move v4, p1

    .line 199
    :goto_d
    iget v5, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->maxSize:I

    if-ge v4, v5, :cond_3f

    .line 200
    rem-int v6, v4, v1

    if-eqz v6, :cond_23

    rem-int v6, v2, v0

    if-eqz v6, :cond_23

    add-int/lit8 v6, v4, 0x1

    rem-int/2addr v6, v1

    if-eqz v6, :cond_23

    add-int/lit8 v6, v2, 0x1

    rem-int/2addr v6, v0

    if-nez v6, :cond_3a

    :cond_23
    add-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3a

    if-lez v4, :cond_3a

    if-lez v2, :cond_3a

    add-int/lit8 v6, v5, -0x1

    if-ge v4, v6, :cond_3a

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3a

    const/4 v5, -0x1

    .line 210
    iget-object v6, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->data:[I

    aput v5, v6, v3

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_42
    return-void
.end method

.method public setCornerRadius(I)V
    .registers 2

    .line 56
    iput p1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->cornerRadius:I

    return-void
.end method

.method public setUseDefaultTool(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->useDefaultTool:Z

    return-void
.end method

.method public setUseViewFrame(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/MinimapRenderer;->useViewFrame:Z

    return-void
.end method
