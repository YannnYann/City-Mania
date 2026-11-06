###### Class info.flowersoft.theotown.util.PixmapUtil (info.flowersoft.theotown.util.PixmapUtil)
.class public final Linfo/flowersoft/theotown/util/PixmapUtil;
.super Ljava/lang/Object;
.source "PixmapUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blendPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IILcom/badlogic/gdx/graphics/Pixmap;IIII)V
    .registers 25

    move/from16 v0, p1

    move/from16 v1, p2

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 72
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    .line 75
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 76
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v8, v0, p6

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v9, v1, p7

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_39
    if-ge v6, v9, :cond_a5

    move v10, v7

    :goto_3c
    if-ge v10, v8, :cond_9e

    sub-int v11, v10, v0

    add-int v11, v11, p4

    sub-int v12, v6, v1

    add-int v12, v12, p5

    mul-int/2addr v12, v5

    add-int/2addr v11, v12

    mul-int v12, v6, v4

    add-int/2addr v12, v10

    .line 85
    invoke-virtual {v3, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    ushr-int/lit8 v13, v11, 0x18

    and-int/lit16 v13, v13, 0xff

    ushr-int/lit8 v14, v11, 0x10

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    and-int/lit16 v11, v11, 0xff

    .line 91
    invoke-virtual {v2, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    move/from16 p0, v1

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    move/from16 p3, v1

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v0, v0, 0xff

    mul-int/2addr v13, v11

    move/from16 p6, v0

    rsub-int v0, v11, 0xff

    mul-int v16, p0, v0

    add-int v13, v13, v16

    .line 97
    div-int/lit16 v13, v13, 0xff

    mul-int/2addr v14, v11

    mul-int v16, p3, v0

    add-int v14, v14, v16

    .line 98
    div-int/lit16 v14, v14, 0xff

    mul-int/2addr v15, v11

    mul-int/2addr v1, v0

    add-int/2addr v15, v1

    .line 99
    div-int/lit16 v15, v15, 0xff

    shl-int/lit8 v0, v13, 0x18

    shl-int/lit8 v1, v14, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v15, 0x8

    or-int/2addr v0, v1

    or-int v0, v0, p6

    .line 102
    invoke-virtual {v2, v12, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_3c

    :cond_9e
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_39

    :cond_a5
    return-void
.end method

.method public static blendPixmapOverlay(Lcom/badlogic/gdx/graphics/Pixmap;IILcom/badlogic/gdx/graphics/Pixmap;IIII)V
    .registers 25

    move/from16 v0, p1

    move/from16 v1, p2

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    .line 28
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 29
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v9, v0, p6

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v10, v1, p7

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_39
    if-ge v8, v10, :cond_af

    move v11, v7

    :goto_3c
    if-ge v11, v9, :cond_a7

    sub-int v12, v11, v0

    add-int v12, v12, p4

    sub-int v13, v8, v1

    add-int v13, v13, p5

    mul-int/2addr v13, v5

    add-int/2addr v12, v13

    mul-int v13, v8, v4

    add-int/2addr v13, v11

    .line 38
    invoke-virtual {v3, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    ushr-int/lit8 v14, v12, 0x18

    const/16 v15, 0xff

    and-int/2addr v14, v15

    ushr-int/lit8 v6, v12, 0x10

    and-int/2addr v6, v15

    ushr-int/lit8 v0, v12, 0x8

    and-int/2addr v0, v15

    and-int/2addr v12, v15

    .line 44
    invoke-virtual {v2, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v15

    move/from16 p6, v0

    ushr-int/lit8 v0, v15, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    move/from16 p0, v0

    ushr-int/lit8 v0, v15, 0x10

    and-int/2addr v0, v1

    move/from16 p7, v0

    ushr-int/lit8 v0, v15, 0x8

    and-int/2addr v0, v1

    and-int/2addr v15, v1

    mul-int v14, v14, p0

    mul-int/2addr v14, v12

    .line 50
    div-int/lit8 v14, v14, 0x7f

    div-int/2addr v14, v1

    move/from16 p0, v0

    const/4 v0, 0x0

    invoke-static {v14, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v14

    mul-int v6, v6, p7

    mul-int/2addr v6, v12

    .line 51
    div-int/lit8 v6, v6, 0x7f

    div-int/2addr v6, v1

    invoke-static {v6, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v6

    mul-int v16, p0, p6

    mul-int v16, v16, v12

    .line 52
    div-int/lit8 v12, v16, 0x7f

    div-int/2addr v12, v1

    invoke-static {v12, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    shl-int/lit8 v12, v14, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v12

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v6

    or-int/2addr v1, v15

    .line 55
    invoke-virtual {v2, v13, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    move v6, v0

    move/from16 v0, p1

    goto :goto_3c

    :cond_a7
    move v0, v6

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move/from16 v0, p1

    goto :goto_39

    :cond_af
    return-void
.end method

.method public static loadPAPixmap(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 2

    .line 181
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPixmap(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 182
    invoke-static {p0}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadPAPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 2

    .line 186
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 187
    invoke-static {p0}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadPixmap(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    const/16 v0, 0x2000

    .line 177
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->read(I)Ljava/io/BufferedInputStream;

    move-result-object p0

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 162
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(Ljava/io/InputStream;I)V

    .line 163
    new-instance p1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_15
    .catchall {:try_start_0 .. :try_end_a} :catchall_13

    .line 169
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1

    :catchall_13
    move-exception p1

    goto :goto_23

    :catch_15
    move-exception p1

    .line 165
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    .line 169
    :try_start_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_21
    const/4 p0, 0x0

    return-object p0

    .line 169
    :goto_23
    :try_start_23
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    :goto_2b
    throw p1
.end method

.method public static premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 8

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne v0, v1, :cond_46

    .line 142
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_46

    .line 145
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    ushr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v4, v3

    .line 150
    div-int/lit16 v4, v4, 0xff

    mul-int/2addr v5, v3

    .line 151
    div-int/lit16 v5, v5, 0xff

    mul-int/2addr v6, v3

    .line 152
    div-int/lit16 v6, v6, 0xff

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 154
    invoke-virtual {v0, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_46
    return-object p0
.end method

.method public static reversePremultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 10

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne v0, v1, :cond_53

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_53

    .line 118
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0xff

    and-int/2addr v5, v6

    ushr-int/lit8 v7, v4, 0x10

    and-int/2addr v7, v6

    ushr-int/lit8 v8, v4, 0x8

    and-int/2addr v8, v6

    and-int/2addr v4, v6

    if-lez v4, :cond_44

    mul-int/lit16 v5, v5, 0xff

    .line 124
    div-int/2addr v5, v4

    invoke-static {v5, v2, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v5

    mul-int/lit16 v7, v7, 0xff

    .line 125
    div-int/2addr v7, v4

    invoke-static {v7, v2, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v7

    mul-int/lit16 v8, v8, 0xff

    .line 126
    div-int/2addr v8, v4

    invoke-static {v8, v2, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v8

    :cond_44
    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v7, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v8, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 129
    invoke-virtual {v0, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_53
    return-object p0
.end method
