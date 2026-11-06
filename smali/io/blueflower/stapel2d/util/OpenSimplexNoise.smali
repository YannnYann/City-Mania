###### Class io.blueflower.stapel2d.util.OpenSimplexNoise (io.blueflower.stapel2d.util.OpenSimplexNoise)
.class public Lio/blueflower/stapel2d/util/OpenSimplexNoise;
.super Ljava/lang/Object;
.source "OpenSimplexNoise.java"


# static fields
.field public static gradients2D:[B

.field public static gradients3D:[B

.field public static gradients4D:[B


# instance fields
.field public perm:[S

.field public permGradIndex3D:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 2095
    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients2D:[B

    const/16 v0, 0x48

    .line 2106
    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients3D:[B

    const/16 v0, 0x100

    .line 2121
    new-array v0, v0, [B

    fill-array-data v0, :array_50

    sput-object v0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients4D:[B

    return-void

    :array_1c
    .array-data 1
        0x5t
        0x2t
        0x2t
        0x5t
        -0x5t
        0x2t
        -0x2t
        0x5t
        0x5t
        -0x2t
        0x2t
        -0x5t
        -0x5t
        -0x2t
        -0x2t
        -0x5t
    .end array-data

    :array_28
    .array-data 1
        -0xbt
        0x4t
        0x4t
        -0x4t
        0xbt
        0x4t
        -0x4t
        0x4t
        0xbt
        0xbt
        0x4t
        0x4t
        0x4t
        0xbt
        0x4t
        0x4t
        0x4t
        0xbt
        -0xbt
        -0x4t
        0x4t
        -0x4t
        -0xbt
        0x4t
        -0x4t
        -0x4t
        0xbt
        0xbt
        -0x4t
        0x4t
        0x4t
        -0xbt
        0x4t
        0x4t
        -0x4t
        0xbt
        -0xbt
        0x4t
        -0x4t
        -0x4t
        0xbt
        -0x4t
        -0x4t
        0x4t
        -0xbt
        0xbt
        0x4t
        -0x4t
        0x4t
        0xbt
        -0x4t
        0x4t
        0x4t
        -0xbt
        -0xbt
        -0x4t
        -0x4t
        -0x4t
        -0xbt
        -0x4t
        -0x4t
        -0x4t
        -0xbt
        0xbt
        -0x4t
        -0x4t
        0x4t
        -0xbt
        -0x4t
        0x4t
        -0x4t
        -0xbt
    .end array-data

    :array_50
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        -0x3t
        0x1t
        0x1t
        0x1t
        -0x1t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x1t
        0x3t
        0x1t
        -0x1t
        0x1t
        0x1t
        0x3t
        0x3t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x3t
        0x1t
        0x1t
        0x1t
        -0x1t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x1t
        0x3t
        -0x3t
        -0x1t
        0x1t
        0x1t
        -0x1t
        -0x3t
        0x1t
        0x1t
        -0x1t
        -0x1t
        0x3t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x3t
        0x3t
        0x1t
        -0x1t
        0x1t
        0x1t
        0x3t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x3t
        0x1t
        0x1t
        0x1t
        -0x1t
        0x3t
        -0x3t
        0x1t
        -0x1t
        0x1t
        -0x1t
        0x3t
        -0x1t
        0x1t
        -0x1t
        0x1t
        -0x3t
        0x1t
        -0x1t
        0x1t
        -0x1t
        0x3t
        0x3t
        -0x1t
        -0x1t
        0x1t
        0x1t
        -0x3t
        -0x1t
        0x1t
        0x1t
        -0x1t
        -0x3t
        0x1t
        0x1t
        -0x1t
        -0x1t
        0x3t
        -0x3t
        -0x1t
        -0x1t
        0x1t
        -0x1t
        -0x3t
        -0x1t
        0x1t
        -0x1t
        -0x1t
        -0x3t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x1t
        0x3t
        0x1t
        -0x1t
        0x1t
        0x1t
        0x3t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x3t
        -0x3t
        0x1t
        0x1t
        -0x1t
        -0x1t
        0x3t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x3t
        -0x1t
        -0x1t
        0x1t
        0x1t
        -0x3t
        0x3t
        -0x1t
        0x1t
        -0x1t
        0x1t
        -0x3t
        0x1t
        -0x1t
        0x1t
        -0x1t
        0x3t
        -0x1t
        0x1t
        -0x1t
        0x1t
        -0x3t
        -0x3t
        -0x1t
        0x1t
        -0x1t
        -0x1t
        -0x3t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        -0x3t
        0x3t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x3t
        -0x1t
        -0x1t
        0x1t
        0x1t
        -0x3t
        -0x1t
        0x1t
        0x1t
        -0x1t
        -0x3t
        -0x3t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        -0x3t
        -0x1t
        -0x1t
        0x1t
        -0x1t
        -0x3t
        0x3t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        -0x3t
        -0x1t
        -0x1t
        0x1t
        -0x1t
        -0x3t
        -0x1t
        0x1t
        -0x1t
        -0x1t
        -0x3t
        -0x3t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x3t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x3t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x3t
    .end array-data
.end method

.method public constructor <init>(J)V
    .registers 14

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 55
    new-array v1, v0, [S

    iput-object v1, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->perm:[S

    .line 56
    new-array v1, v0, [S

    iput-object v1, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->permGradIndex3D:[S

    .line 57
    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_18

    .line 59
    aput-short v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_10

    :cond_18
    const-wide v2, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr p1, v2

    const-wide v4, 0x14057b7ef767814fL    # 3.190626645921225E-212

    add-long/2addr p1, v4

    mul-long/2addr p1, v2

    add-long/2addr p1, v4

    mul-long/2addr p1, v2

    add-long/2addr p1, v4

    const/16 v0, 0xff

    :goto_2a
    if-ltz v0, :cond_58

    mul-long/2addr p1, v2

    add-long v6, p1, v4

    const-wide v8, 0x14057b7ef767816eL

    add-long/2addr p1, v8

    add-int/lit8 v8, v0, 0x1

    int-to-long v9, v8

    .line 65
    rem-long/2addr p1, v9

    long-to-int p1, p1

    if-gez p1, :cond_3d

    add-int/2addr p1, v8

    .line 68
    :cond_3d
    iget-object p2, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->perm:[S

    aget-short v8, v1, p1

    aput-short v8, p2, v0

    .line 69
    iget-object p2, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->permGradIndex3D:[S

    sget-object v9, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients3D:[B

    array-length v9, v9

    div-int/lit8 v9, v9, 0x3

    rem-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, p2, v0

    .line 70
    aget-short p2, v1, v0

    aput-short p2, v1, p1

    add-int/lit8 v0, v0, -0x1

    move-wide p1, v6

    goto :goto_2a

    :cond_58
    return-void
.end method

.method public static fastFloor(F)I
    .registers 3

    .line 0
    float-to-int v0, p0

    int-to-float v1, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_8

    add-int/lit8 v0, v0, -0x1

    :cond_8
    return v0
.end method


# virtual methods
.method public eval(FF)F
    .registers 21

    move-object/from16 v0, p0

    add-float v1, p1, p2

    const v2, -0x41a79a74

    mul-float/2addr v1, v2

    add-float v2, p1, v1

    add-float v1, p2, v1

    .line 83
    invoke-static {v2}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v3

    .line 84
    invoke-static {v1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v4

    add-int v5, v3, v4

    int-to-float v5, v5

    const v6, 0x3ebb67af

    mul-float/2addr v5, v6

    int-to-float v7, v3

    add-float v8, v7, v5

    int-to-float v9, v4

    add-float/2addr v5, v9

    sub-float/2addr v2, v7

    sub-float/2addr v1, v9

    add-float v7, v2, v1

    sub-float v8, p1, v8

    sub-float v5, p2, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v8, v9

    sub-float v11, v10, v6

    const/4 v12, 0x0

    sub-float v13, v5, v12

    sub-float/2addr v13, v6

    mul-float v14, v11, v11

    const/high16 v15, 0x40000000    # 2.0f

    sub-float v14, v15, v14

    mul-float v16, v13, v13

    sub-float v14, v14, v16

    cmpl-float v16, v14, v12

    if-lez v16, :cond_4d

    mul-float/2addr v14, v14

    mul-float/2addr v14, v14

    move/from16 v16, v6

    add-int/lit8 v6, v3, 0x1

    .line 114
    invoke-virtual {v0, v6, v4, v11, v13}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIFF)F

    move-result v6

    mul-float/2addr v14, v6

    add-float/2addr v14, v12

    goto :goto_50

    :cond_4d
    move/from16 v16, v6

    move v14, v12

    :goto_50
    sub-float v6, v8, v12

    sub-float v6, v6, v16

    sub-float v11, v5, v9

    sub-float v13, v11, v16

    mul-float v16, v6, v6

    sub-float v16, v15, v16

    mul-float v17, v13, v13

    sub-float v16, v16, v17

    cmpl-float v17, v16, v12

    if-lez v17, :cond_75

    mul-float v16, v16, v16

    mul-float v16, v16, v16

    move/from16 p1, v9

    add-int/lit8 v9, v4, 0x1

    .line 123
    invoke-virtual {v0, v3, v9, v6, v13}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIFF)F

    move-result v6

    mul-float v16, v16, v6

    add-float v14, v14, v16

    goto :goto_77

    :cond_75
    move/from16 p1, v9

    :goto_77
    cmpg-float v6, v7, p1

    const v9, 0x3f3b67af

    if-gtz v6, :cond_a2

    sub-float v6, p1, v7

    cmpl-float v7, v6, v2

    if-gtz v7, :cond_90

    cmpl-float v6, v6, v1

    if-lez v6, :cond_89

    goto :goto_90

    :cond_89
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v2, v4, 0x1

    sub-float/2addr v10, v9

    sub-float/2addr v11, v9

    goto :goto_cf

    :cond_90
    :goto_90
    cmpl-float v1, v2, v1

    if-lez v1, :cond_9b

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v2, v4, -0x1

    add-float v11, v5, p1

    goto :goto_cf

    :cond_9b
    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v2, v4, 0x1

    add-float v10, v8, p1

    goto :goto_cf

    :cond_a2
    sub-float v6, v15, v7

    cmpg-float v7, v6, v2

    if-ltz v7, :cond_b0

    cmpg-float v6, v6, v1

    if-gez v6, :cond_ad

    goto :goto_b0

    :cond_ad
    move v1, v3

    :goto_ae
    move v2, v4

    goto :goto_c3

    :cond_b0
    :goto_b0
    cmpl-float v1, v2, v1

    if-lez v1, :cond_bb

    add-int/lit8 v1, v3, 0x2

    sub-float/2addr v8, v15

    sub-float/2addr v8, v9

    add-float/2addr v5, v12

    sub-float/2addr v5, v9

    goto :goto_ae

    :cond_bb
    add-int/lit8 v1, v4, 0x2

    add-float/2addr v8, v12

    sub-float/2addr v8, v9

    sub-float/2addr v5, v15

    sub-float/2addr v5, v9

    move v2, v1

    move v1, v3

    :goto_c3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    sub-float v6, v10, v9

    sub-float v7, v11, v9

    move v11, v5

    move v5, v7

    move v10, v8

    move v8, v6

    :goto_cf
    mul-float v6, v8, v8

    sub-float v6, v15, v6

    mul-float v7, v5, v5

    sub-float/2addr v6, v7

    cmpl-float v7, v6, v12

    if-lez v7, :cond_e2

    mul-float/2addr v6, v6

    mul-float/2addr v6, v6

    .line 176
    invoke-virtual {v0, v3, v4, v8, v5}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIFF)F

    move-result v3

    mul-float/2addr v6, v3

    add-float/2addr v14, v6

    :cond_e2
    mul-float v3, v10, v10

    sub-float/2addr v15, v3

    mul-float v3, v11, v11

    sub-float/2addr v15, v3

    cmpl-float v3, v15, v12

    if-lez v3, :cond_f4

    mul-float/2addr v15, v15

    mul-float/2addr v15, v15

    .line 183
    invoke-virtual {v0, v1, v2, v10, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIFF)F

    move-result v1

    mul-float/2addr v15, v1

    add-float/2addr v14, v15

    :cond_f4
    const/high16 v1, 0x423c0000    # 47.0f

    div-float/2addr v14, v1

    return v14
.end method

.method public eval(FFF)F
    .registers 43

    add-float v0, p1, p2

    add-float v0, v0, p3

    const v1, -0x41d55555

    mul-float/2addr v0, v1

    add-float v1, p1, v0

    add-float v2, p2, v0

    add-float v0, p3, v0

    .line 199
    invoke-static {v1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v4

    .line 200
    invoke-static {v2}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v7

    .line 201
    invoke-static {v0}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v6

    add-int v3, v4, v7

    add-int/2addr v3, v6

    int-to-float v3, v3

    const v12, 0x3eaaaaab

    mul-float/2addr v3, v12

    int-to-float v5, v4

    add-float v8, v5, v3

    int-to-float v9, v7

    add-float v10, v9, v3

    int-to-float v11, v6

    add-float/2addr v3, v11

    sub-float/2addr v1, v5

    sub-float/2addr v2, v9

    sub-float/2addr v0, v11

    add-float v5, v1, v2

    add-float v9, v5, v0

    sub-float v8, p1, v8

    sub-float v10, p2, v10

    sub-float v3, p3, v3

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v11, v9, v15

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/high16 v16, 0x40000000    # 2.0f

    const v17, 0x3f2aaaab

    const/16 v18, 0x1

    const/16 v19, 0x0

    if-gtz v11, :cond_1fb

    cmpl-float v5, v1, v2

    if-ltz v5, :cond_55

    cmpl-float v5, v0, v2

    if-lez v5, :cond_55

    move v2, v0

    move v14, v13

    :cond_52
    move/from16 v0, v18

    goto :goto_5f

    :cond_55
    cmpg-float v5, v1, v2

    if-gez v5, :cond_52

    cmpl-float v5, v0, v1

    if-lez v5, :cond_52

    move v1, v0

    move v0, v13

    :goto_5f
    sub-float v5, v15, v9

    cmpl-float v9, v5, v1

    if-gtz v9, :cond_d8

    cmpl-float v5, v5, v2

    if-lez v5, :cond_6b

    goto/16 :goto_d8

    :cond_6b
    or-int/2addr v0, v14

    int-to-byte v0, v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_7d

    add-int/lit8 v1, v4, -0x1

    sub-float v2, v8, v17

    add-float v5, v8, v15

    sub-float/2addr v5, v12

    move v9, v5

    move v5, v2

    move v2, v1

    move v1, v4

    goto :goto_86

    :cond_7d
    add-int/lit8 v1, v4, 0x1

    sub-float v2, v8, v15

    sub-float v5, v2, v17

    sub-float/2addr v2, v12

    move v9, v2

    move v2, v1

    :goto_86
    and-int/lit8 v11, v0, 0x2

    if-nez v11, :cond_98

    add-int/lit8 v11, v7, -0x1

    sub-float v14, v10, v17

    add-float v20, v10, v15

    sub-float v20, v20, v12

    move/from16 v21, v20

    move/from16 v20, v14

    move v14, v7

    goto :goto_a2

    :cond_98
    add-int/lit8 v11, v7, 0x1

    sub-float v14, v10, v15

    sub-float v20, v14, v17

    sub-float/2addr v14, v12

    move/from16 v21, v14

    move v14, v11

    :goto_a2
    and-int/2addr v0, v13

    if-nez v0, :cond_bf

    add-int/lit8 v0, v6, -0x1

    sub-float v13, v3, v17

    add-float v17, v3, v15

    sub-float v17, v17, v12

    move/from16 v22, v14

    move/from16 v23, v17

    move/from16 v24, v20

    move/from16 v25, v21

    move v14, v6

    move/from16 v17, v9

    move/from16 v20, v11

    move/from16 v21, v13

    move v13, v5

    goto/16 :goto_13a

    :cond_bf
    add-int/lit8 v0, v6, 0x1

    sub-float v13, v3, v15

    sub-float v17, v13, v17

    sub-float/2addr v13, v12

    move/from16 v23, v13

    move/from16 v22, v14

    move/from16 v24, v20

    move/from16 v25, v21

    move v14, v0

    move v13, v5

    move/from16 v20, v11

    move/from16 v21, v17

    :goto_d4
    move/from16 v17, v9

    goto/16 :goto_13a

    :cond_d8
    :goto_d8
    cmpl-float v1, v2, v1

    if-lez v1, :cond_dd

    goto :goto_de

    :cond_dd
    move v14, v0

    :goto_de
    and-int/lit8 v0, v14, 0x1

    if-nez v0, :cond_ea

    add-int/lit8 v1, v4, -0x1

    add-float v2, v8, v15

    move v5, v2

    move v2, v4

    move v9, v8

    goto :goto_f1

    :cond_ea
    add-int/lit8 v1, v4, 0x1

    sub-float v2, v8, v15

    move v5, v2

    move v9, v5

    move v2, v1

    :goto_f1
    and-int/lit8 v11, v14, 0x2

    if-nez v11, :cond_10c

    if-nez v0, :cond_102

    add-int/lit8 v0, v7, -0x1

    add-float v11, v10, v15

    move/from16 v20, v10

    move/from16 v21, v11

    move v11, v0

    move v0, v7

    goto :goto_115

    :cond_102
    add-int/lit8 v0, v7, -0x1

    add-float v11, v10, v15

    move/from16 v21, v10

    move/from16 v20, v11

    move v11, v7

    goto :goto_115

    :cond_10c
    add-int/lit8 v0, v7, 0x1

    sub-float v11, v10, v15

    move/from16 v20, v11

    move/from16 v21, v20

    move v11, v0

    :goto_115
    and-int/2addr v13, v14

    if-nez v13, :cond_122

    add-int/lit8 v13, v6, -0x1

    add-float v14, v3, v15

    move/from16 v17, v3

    move/from16 v22, v14

    move v14, v6

    goto :goto_12b

    :cond_122
    add-int/lit8 v13, v6, 0x1

    sub-float v14, v3, v15

    move/from16 v17, v14

    move/from16 v22, v17

    move v14, v13

    :goto_12b
    move/from16 v24, v20

    move/from16 v25, v21

    move/from16 v23, v22

    move/from16 v22, v0

    move/from16 v20, v11

    move v0, v13

    move/from16 v21, v17

    move v13, v5

    goto :goto_d4

    :goto_13a
    mul-float v5, v8, v8

    sub-float v5, v16, v5

    mul-float v9, v10, v10

    sub-float/2addr v5, v9

    mul-float v9, v3, v3

    sub-float/2addr v5, v9

    cmpl-float v9, v5, v19

    if-lez v9, :cond_162

    mul-float/2addr v5, v5

    mul-float v11, v5, v5

    move v9, v3

    move v5, v7

    move v7, v8

    move v8, v10

    move-object/from16 v3, p0

    .line 325
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v10

    move/from16 v27, v4

    move v3, v7

    move v4, v8

    move/from16 v26, v9

    move v7, v5

    mul-float/2addr v11, v10

    add-float v11, v11, v19

    move/from16 v28, v11

    goto :goto_16a

    :cond_162
    move/from16 v26, v3

    move/from16 v27, v4

    move v3, v8

    move v4, v10

    move/from16 v28, v19

    :goto_16a
    sub-float v8, v3, v15

    sub-float v9, v8, v12

    sub-float v10, v4, v19

    sub-float v8, v10, v12

    sub-float v5, v26, v19

    sub-float v11, v5, v12

    mul-float v5, v9, v9

    sub-float v5, v16, v5

    mul-float v29, v8, v8

    sub-float v5, v5, v29

    mul-float v30, v11, v11

    sub-float v5, v5, v30

    cmpl-float v10, v5, v19

    if-lez v10, :cond_19b

    mul-float/2addr v5, v5

    mul-float v31, v5, v5

    move v10, v8

    move v8, v6

    add-int/lit8 v6, v27, 0x1

    move-object/from16 v5, p0

    .line 335
    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move v9, v11

    move v11, v10

    move v10, v7

    mul-float v31, v31, v6

    add-float v28, v28, v31

    goto :goto_19f

    :cond_19b
    move v10, v7

    move v9, v11

    move v11, v8

    move v8, v6

    :goto_19f
    sub-float v3, v3, v19

    sub-float v7, v3, v12

    sub-float v3, v4, v15

    sub-float/2addr v3, v12

    mul-float v4, v7, v7

    sub-float v31, v16, v4

    mul-float v4, v3, v3

    sub-float v4, v31, v4

    sub-float v4, v4, v30

    cmpl-float v5, v4, v19

    if-lez v5, :cond_1c8

    mul-float/2addr v4, v4

    mul-float v30, v4, v4

    add-int/lit8 v5, v10, 0x1

    move v6, v8

    move/from16 v4, v27

    move v8, v3

    move-object/from16 v3, p0

    .line 345
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v5

    mul-float v30, v30, v5

    add-float v28, v28, v30

    goto :goto_1cb

    :cond_1c8
    move v6, v8

    move/from16 v4, v27

    :goto_1cb
    sub-float v3, v26, v15

    sub-float v9, v3, v12

    sub-float v31, v31, v29

    mul-float v3, v9, v9

    sub-float v31, v31, v3

    cmpl-float v3, v31, v19

    if-lez v3, :cond_1eb

    mul-float v31, v31, v31

    mul-float v31, v31, v31

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p0

    move v5, v10

    move v8, v11

    .line 355
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v4

    mul-float v31, v31, v4

    add-float v28, v28, v31

    :cond_1eb
    move/from16 v31, v13

    move/from16 v30, v14

    move/from16 v33, v21

    move/from16 v29, v22

    move/from16 v32, v24

    move/from16 v3, v28

    :goto_1f7
    move/from16 v28, v1

    goto/16 :goto_691

    :cond_1fb
    move/from16 v26, v3

    move/from16 v27, v4

    move v3, v8

    move v4, v10

    cmpl-float v8, v9, v16

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/16 v20, 0x6

    if-ltz v8, :cond_3c4

    cmpg-float v5, v1, v2

    if-gtz v5, :cond_216

    cmpg-float v5, v0, v2

    if-gez v5, :cond_216

    move v2, v0

    move v10, v11

    :cond_213
    move/from16 v11, v20

    goto :goto_21f

    :cond_216
    cmpl-float v5, v1, v2

    if-lez v5, :cond_213

    cmpg-float v5, v0, v1

    if-gez v5, :cond_213

    move v1, v0

    :goto_21f
    const/high16 v0, 0x40400000    # 3.0f

    sub-float/2addr v0, v9

    cmpg-float v5, v0, v1

    if-ltz v5, :cond_299

    cmpg-float v0, v0, v2

    if-gez v0, :cond_22c

    goto/16 :goto_299

    :cond_22c
    and-int v0, v11, v10

    int-to-byte v0, v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_23f

    add-int/lit8 v1, v27, 0x1

    add-int/lit8 v2, v27, 0x2

    sub-float v8, v3, v15

    sub-float/2addr v8, v12

    sub-float v5, v3, v16

    sub-float v5, v5, v17

    goto :goto_246

    :cond_23f
    sub-float v8, v3, v12

    sub-float v5, v3, v17

    move/from16 v1, v27

    move v2, v1

    :goto_246
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_256

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v7, 0x2

    sub-float v11, v4, v15

    sub-float/2addr v11, v12

    sub-float v14, v4, v16

    sub-float v14, v14, v17

    goto :goto_25c

    :cond_256
    sub-float v11, v4, v12

    sub-float v14, v4, v17

    move v9, v7

    move v10, v9

    :goto_25c
    and-int/2addr v0, v13

    if-eqz v0, :cond_280

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v13, v6, 0x2

    sub-float v20, v26, v15

    sub-float v20, v20, v12

    sub-float v12, v26, v16

    sub-float v12, v12, v17

    move/from16 v22, v5

    move/from16 v21, v8

    move/from16 v25, v9

    move/from16 v23, v10

    move/from16 v35, v11

    move/from16 v34, v12

    move/from16 v36, v14

    move/from16 v24, v20

    move/from16 v20, v0

    move v0, v13

    goto/16 :goto_300

    :cond_280
    sub-float v0, v26, v12

    sub-float v12, v26, v17

    move/from16 v24, v0

    move/from16 v22, v5

    move v0, v6

    move/from16 v20, v0

    move/from16 v21, v8

    move/from16 v25, v9

    move/from16 v23, v10

    move/from16 v35, v11

    move/from16 v34, v12

    move/from16 v36, v14

    goto/16 :goto_300

    :cond_299
    :goto_299
    cmpg-float v0, v2, v1

    if-gez v0, :cond_29e

    goto :goto_29f

    :cond_29e
    move v10, v11

    :goto_29f
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_2ae

    add-int/lit8 v1, v27, 0x2

    add-int/lit8 v2, v27, 0x1

    sub-float v8, v3, v16

    sub-float/2addr v8, v15

    sub-float v5, v3, v15

    sub-float/2addr v5, v15

    goto :goto_2b4

    :cond_2ae
    sub-float v8, v3, v15

    move v5, v8

    move/from16 v1, v27

    move v2, v1

    :goto_2b4
    and-int/lit8 v9, v10, 0x2

    if-eqz v9, :cond_2d3

    add-int/lit8 v9, v7, 0x1

    sub-float v11, v4, v15

    sub-float/2addr v11, v15

    if-eqz v0, :cond_2c4

    add-int/lit8 v0, v7, 0x2

    sub-float v12, v11, v15

    goto :goto_2d8

    :cond_2c4
    add-int/lit8 v0, v7, 0x2

    sub-float v12, v11, v15

    move/from16 v38, v9

    move v9, v0

    move/from16 v0, v38

    move/from16 v38, v12

    move v12, v11

    move/from16 v11, v38

    goto :goto_2d8

    :cond_2d3
    sub-float v11, v4, v15

    move v0, v7

    move v9, v0

    move v12, v11

    :goto_2d8
    and-int/2addr v10, v13

    if-eqz v10, :cond_2e7

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v13, v6, 0x2

    sub-float v14, v26, v15

    sub-float/2addr v14, v15

    sub-float v20, v26, v16

    sub-float v20, v20, v15

    goto :goto_2ed

    :cond_2e7
    sub-float v14, v26, v15

    move v10, v6

    move v13, v10

    move/from16 v20, v14

    :goto_2ed
    move/from16 v23, v0

    move/from16 v22, v5

    move/from16 v21, v8

    move/from16 v25, v9

    move/from16 v35, v11

    move/from16 v36, v12

    move v0, v13

    move/from16 v24, v14

    move/from16 v34, v20

    move/from16 v20, v10

    :goto_300
    sub-float v28, v3, v15

    sub-float v12, v28, v17

    sub-float v29, v4, v15

    sub-float v13, v29, v17

    sub-float v5, v26, v19

    sub-float v14, v5, v17

    mul-float v5, v12, v12

    sub-float v5, v16, v5

    mul-float v30, v13, v13

    sub-float v8, v5, v30

    mul-float v9, v14, v14

    sub-float/2addr v8, v9

    cmpl-float v9, v8, v19

    if-lez v9, :cond_330

    mul-float/2addr v8, v8

    mul-float v31, v8, v8

    add-int/lit8 v9, v27, 0x1

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v8, p0

    move v11, v6

    .line 456
    invoke-virtual/range {v8 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move/from16 v32, v11

    mul-float v31, v31, v6

    add-float v31, v31, v19

    goto :goto_334

    :cond_330
    move/from16 v32, v6

    move/from16 v31, v19

    :goto_334
    sub-float v10, v4, v19

    sub-float v10, v10, v17

    sub-float v14, v26, v15

    sub-float v9, v14, v17

    mul-float v4, v10, v10

    sub-float/2addr v5, v4

    mul-float v4, v9, v9

    sub-float/2addr v5, v4

    cmpl-float v6, v5, v19

    if-lez v6, :cond_35d

    mul-float/2addr v5, v5

    mul-float v26, v5, v5

    add-int/lit8 v6, v27, 0x1

    add-int/lit8 v8, v32, 0x1

    move-object/from16 v5, p0

    move v11, v9

    move v9, v12

    .line 466
    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move/from16 v33, v7

    move v9, v11

    mul-float v26, v26, v6

    add-float v31, v31, v26

    goto :goto_35f

    :cond_35d
    move/from16 v33, v7

    :goto_35f
    sub-float v8, v3, v19

    sub-float v7, v8, v17

    mul-float v3, v7, v7

    sub-float v3, v16, v3

    sub-float v3, v3, v30

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v19

    if-lez v4, :cond_381

    mul-float/2addr v3, v3

    mul-float v10, v3, v3

    add-int/lit8 v5, v33, 0x1

    add-int/lit8 v6, v32, 0x1

    move-object/from16 v3, p0

    move v8, v13

    move/from16 v4, v27

    .line 476
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v5

    mul-float/2addr v10, v5

    add-float v31, v31, v10

    :cond_381
    move/from16 v3, v31

    sub-float v31, v28, v15

    sub-float v29, v29, v15

    sub-float/2addr v14, v15

    mul-float v4, v31, v31

    sub-float v4, v16, v4

    mul-float v5, v29, v29

    sub-float/2addr v4, v5

    mul-float v5, v14, v14

    sub-float/2addr v4, v5

    cmpl-float v5, v4, v19

    if-lez v5, :cond_3ac

    mul-float/2addr v4, v4

    mul-float/2addr v4, v4

    add-int/lit8 v28, v27, 0x1

    add-int/lit8 v7, v33, 0x1

    add-int/lit8 v30, v32, 0x1

    move-object/from16 v27, p0

    move/from16 v33, v14

    move/from16 v32, v29

    move/from16 v29, v7

    .line 486
    invoke-virtual/range {v27 .. v33}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    :cond_3ac
    move/from16 v28, v3

    move/from16 v30, v20

    move/from16 v31, v21

    move/from16 v17, v22

    move/from16 v20, v23

    move/from16 v33, v24

    move/from16 v29, v25

    move/from16 v3, v28

    move/from16 v23, v34

    move/from16 v32, v35

    move/from16 v25, v36

    goto/16 :goto_1f7

    :cond_3c4
    move/from16 v32, v6

    move/from16 v33, v7

    cmpl-float v6, v5, v15

    const/4 v7, 0x0

    if-lez v6, :cond_3d2

    sub-float/2addr v5, v15

    move v13, v11

    move/from16 v6, v18

    goto :goto_3d5

    :cond_3d2
    sub-float v5, v15, v5

    move v6, v7

    :goto_3d5
    add-float/2addr v1, v0

    cmpl-float v8, v1, v15

    if-lez v8, :cond_3de

    sub-float/2addr v1, v15

    move/from16 v8, v18

    goto :goto_3e2

    :cond_3de
    sub-float v1, v15, v1

    move v8, v7

    move v10, v14

    :goto_3e2
    add-float/2addr v2, v0

    cmpl-float v0, v2, v15

    if-lez v0, :cond_408

    sub-float/2addr v2, v15

    cmpg-float v0, v5, v1

    if-gtz v0, :cond_3f7

    cmpg-float v0, v5, v2

    if-gez v0, :cond_3f7

    move/from16 v7, v18

    move/from16 v13, v20

    :goto_3f4
    move/from16 v20, v10

    goto :goto_405

    :cond_3f7
    cmpl-float v0, v5, v1

    if-lez v0, :cond_403

    cmpg-float v0, v1, v2

    if-gez v0, :cond_403

    move v7, v6

    move/from16 v8, v18

    goto :goto_405

    :cond_403
    move v7, v6

    goto :goto_3f4

    :goto_405
    move/from16 v10, v20

    goto :goto_421

    :cond_408
    sub-float v0, v15, v2

    cmpg-float v2, v5, v1

    if-gtz v2, :cond_415

    cmpg-float v2, v5, v0

    if-gez v2, :cond_415

    move/from16 v13, v18

    goto :goto_421

    :cond_415
    cmpl-float v2, v5, v1

    if-lez v2, :cond_420

    cmpg-float v0, v1, v0

    if-gez v0, :cond_420

    move v8, v7

    move/from16 v10, v18

    :cond_420
    move v7, v6

    :goto_421
    if-ne v7, v8, :cond_4d8

    if-eqz v7, :cond_488

    sub-float v8, v3, v15

    sub-float/2addr v8, v15

    sub-float v0, v4, v15

    sub-float/2addr v0, v15

    sub-float v1, v26, v15

    sub-float/2addr v1, v15

    add-int/lit8 v2, v27, 0x1

    add-int/lit8 v7, v33, 0x1

    add-int/lit8 v6, v32, 0x1

    and-int v5, v13, v10

    int-to-byte v5, v5

    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_44c

    sub-float v5, v3, v16

    sub-float v5, v5, v17

    sub-float v10, v4, v17

    sub-float v9, v26, v17

    add-int/lit8 v11, v27, 0x2

    move v13, v9

    move v14, v10

    move/from16 v9, v32

    :goto_449
    move/from16 v10, v33

    goto :goto_471

    :cond_44c
    and-int/2addr v5, v14

    if-eqz v5, :cond_461

    sub-float v5, v3, v17

    sub-float v10, v4, v16

    sub-float v10, v10, v17

    sub-float v9, v26, v17

    add-int/lit8 v11, v33, 0x2

    move v13, v9

    move v14, v10

    move v10, v11

    move/from16 v11, v27

    move/from16 v9, v32

    goto :goto_471

    :cond_461
    sub-float v5, v3, v17

    sub-float v10, v4, v17

    sub-float v9, v26, v16

    sub-float v9, v9, v17

    add-int/lit8 v11, v32, 0x2

    move v13, v9

    move v14, v10

    move v9, v11

    move/from16 v11, v27

    goto :goto_449

    :goto_471
    move/from16 v25, v0

    move v0, v1

    move v1, v2

    move/from16 v28, v5

    move/from16 v21, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v20, v9

    move/from16 v22, v10

    move v2, v11

    move/from16 v29, v13

    move/from16 v30, v14

    goto/16 :goto_56a

    :cond_488
    or-int v0, v13, v10

    int-to-byte v0, v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_49f

    add-float v8, v3, v15

    sub-float/2addr v8, v12

    sub-float v10, v4, v15

    sub-float/2addr v10, v12

    sub-float v0, v26, v15

    sub-float/2addr v0, v12

    add-int/lit8 v1, v27, -0x1

    add-int/lit8 v7, v33, 0x1

    :goto_49c
    add-int/lit8 v6, v32, 0x1

    goto :goto_4bf

    :cond_49f
    and-int/2addr v0, v14

    if-nez v0, :cond_4b0

    sub-float v8, v3, v15

    sub-float/2addr v8, v12

    add-float v10, v4, v15

    sub-float/2addr v10, v12

    sub-float v0, v26, v15

    sub-float/2addr v0, v12

    add-int/lit8 v1, v27, 0x1

    add-int/lit8 v7, v33, -0x1

    goto :goto_49c

    :cond_4b0
    sub-float v8, v3, v15

    sub-float/2addr v8, v12

    sub-float v10, v4, v15

    sub-float/2addr v10, v12

    add-float v0, v26, v15

    sub-float/2addr v0, v12

    add-int/lit8 v1, v27, 0x1

    add-int/lit8 v7, v33, 0x1

    add-int/lit8 v6, v32, -0x1

    :goto_4bf
    move/from16 v29, v0

    move v2, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v28, v8

    move/from16 v30, v10

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v21, v32

    move/from16 v23, v33

    goto/16 :goto_56a

    :cond_4d8
    if-eqz v7, :cond_4df

    move/from16 v38, v13

    move v13, v10

    move/from16 v10, v38

    :cond_4df
    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_4f3

    add-float v8, v3, v15

    sub-float/2addr v8, v12

    sub-float v10, v4, v15

    sub-float/2addr v10, v12

    sub-float v0, v26, v15

    sub-float/2addr v0, v12

    add-int/lit8 v1, v27, -0x1

    add-int/lit8 v7, v33, 0x1

    :goto_4f0
    add-int/lit8 v6, v32, 0x1

    goto :goto_514

    :cond_4f3
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_505

    sub-float v8, v3, v15

    sub-float/2addr v8, v12

    add-float v10, v4, v15

    sub-float/2addr v10, v12

    sub-float v0, v26, v15

    sub-float/2addr v0, v12

    add-int/lit8 v1, v27, 0x1

    add-int/lit8 v7, v33, -0x1

    goto :goto_4f0

    :cond_505
    sub-float v8, v3, v15

    sub-float/2addr v8, v12

    sub-float v10, v4, v15

    sub-float/2addr v10, v12

    add-float v0, v26, v15

    sub-float/2addr v0, v12

    add-int/lit8 v1, v27, 0x1

    add-int/lit8 v7, v33, 0x1

    add-int/lit8 v6, v32, -0x1

    :goto_514
    sub-float v2, v3, v17

    sub-float v5, v4, v17

    sub-float v9, v26, v17

    and-int/lit8 v11, v13, 0x1

    if-eqz v11, :cond_536

    sub-float v2, v2, v16

    add-int/lit8 v11, v27, 0x2

    move/from16 v28, v2

    move/from16 v30, v5

    move/from16 v21, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v29, v9

    move/from16 v25, v10

    move v2, v11

    move/from16 v20, v32

    :goto_533
    move/from16 v22, v33

    goto :goto_56a

    :cond_536
    and-int/lit8 v11, v13, 0x2

    if-eqz v11, :cond_553

    sub-float v5, v5, v16

    add-int/lit8 v11, v33, 0x2

    move/from16 v28, v2

    move/from16 v30, v5

    move/from16 v21, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v29, v9

    move/from16 v25, v10

    move/from16 v22, v11

    move/from16 v2, v27

    move/from16 v20, v32

    goto :goto_56a

    :cond_553
    sub-float v9, v9, v16

    add-int/lit8 v11, v32, 0x2

    move/from16 v28, v2

    move/from16 v30, v5

    move/from16 v21, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v29, v9

    move/from16 v25, v10

    move/from16 v20, v11

    move/from16 v2, v27

    goto :goto_533

    :goto_56a
    sub-float v13, v3, v15

    sub-float v9, v13, v12

    sub-float v31, v4, v19

    sub-float v8, v31, v12

    sub-float v14, v26, v19

    sub-float v11, v14, v12

    mul-float v5, v9, v9

    sub-float v5, v16, v5

    mul-float v34, v8, v8

    sub-float v5, v5, v34

    mul-float v35, v11, v11

    sub-float v5, v5, v35

    cmpl-float v6, v5, v19

    if-lez v6, :cond_59c

    mul-float/2addr v5, v5

    mul-float v36, v5, v5

    add-int/lit8 v6, v27, 0x1

    move-object/from16 v5, p0

    move v10, v8

    move/from16 v8, v32

    move/from16 v7, v33

    .line 677
    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move v9, v11

    mul-float v36, v36, v6

    add-float v36, v19, v36

    goto :goto_5a2

    :cond_59c
    move v10, v8

    move v9, v11

    move/from16 v8, v32

    move/from16 v36, v19

    :goto_5a2
    sub-float v32, v3, v19

    sub-float v7, v32, v12

    sub-float v11, v4, v15

    move v6, v8

    sub-float v8, v11, v12

    mul-float v3, v7, v7

    sub-float v37, v16, v3

    mul-float v3, v8, v8

    sub-float v3, v37, v3

    sub-float v3, v3, v35

    cmpl-float v4, v3, v19

    if-lez v4, :cond_5ce

    mul-float/2addr v3, v3

    mul-float v35, v3, v3

    add-int/lit8 v5, v33, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v27

    .line 687
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v5

    move/from16 v27, v11

    move v11, v6

    mul-float v35, v35, v5

    add-float v36, v36, v35

    goto :goto_5d3

    :cond_5ce
    move/from16 v4, v27

    move/from16 v27, v11

    move v11, v6

    :goto_5d3
    sub-float v15, v26, v15

    sub-float v9, v15, v12

    sub-float v37, v37, v34

    mul-float v3, v9, v9

    sub-float v37, v37, v3

    cmpl-float v3, v37, v19

    if-lez v3, :cond_5f6

    mul-float v37, v37, v37

    mul-float v37, v37, v37

    add-int/lit8 v6, v11, 0x1

    move-object/from16 v3, p0

    move v8, v10

    move/from16 v5, v33

    .line 697
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move v7, v5

    mul-float v37, v37, v6

    add-float v36, v36, v37

    goto :goto_5f8

    :cond_5f6
    move/from16 v7, v33

    :goto_5f8
    sub-float v12, v13, v17

    sub-float v13, v27, v17

    sub-float v14, v14, v17

    mul-float v3, v12, v12

    sub-float v3, v16, v3

    mul-float v26, v13, v13

    sub-float v5, v3, v26

    mul-float v6, v14, v14

    sub-float/2addr v5, v6

    cmpl-float v6, v5, v19

    if-lez v6, :cond_61f

    mul-float/2addr v5, v5

    mul-float/2addr v5, v5

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v8, p0

    .line 707
    invoke-virtual/range {v8 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move v9, v12

    move v12, v11

    mul-float/2addr v5, v6

    add-float v36, v36, v5

    goto :goto_621

    :cond_61f
    move v9, v12

    move v12, v11

    :goto_621
    sub-float v10, v31, v17

    sub-float v11, v15, v17

    mul-float v5, v10, v10

    sub-float/2addr v3, v5

    mul-float v14, v11, v11

    sub-float/2addr v3, v14

    cmpl-float v5, v3, v19

    if-lez v5, :cond_640

    mul-float/2addr v3, v3

    mul-float/2addr v3, v3

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v12, 0x1

    move-object/from16 v5, p0

    .line 717
    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v6

    move v9, v11

    mul-float/2addr v3, v6

    add-float v36, v36, v3

    goto :goto_641

    :cond_640
    move v9, v11

    :goto_641
    sub-float v32, v32, v17

    mul-float v3, v32, v32

    sub-float v3, v16, v3

    sub-float v3, v3, v26

    sub-float/2addr v3, v14

    cmpl-float v5, v3, v19

    if-lez v5, :cond_67a

    mul-float/2addr v3, v3

    mul-float v10, v3, v3

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v6, v12, 0x1

    move-object/from16 v3, p0

    move v8, v13

    move/from16 v7, v32

    .line 727
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v4

    mul-float/2addr v10, v4

    add-float v3, v36, v10

    move/from16 v17, v29

    move/from16 v29, v23

    move/from16 v23, v17

    move/from16 v33, v0

    move/from16 v0, v20

    move/from16 v20, v22

    move/from16 v31, v24

    move/from16 v32, v25

    move/from16 v17, v28

    move/from16 v25, v30

    :goto_675
    move/from16 v28, v1

    move/from16 v30, v21

    goto :goto_691

    :cond_67a
    move/from16 v3, v29

    move/from16 v29, v23

    move/from16 v23, v3

    move/from16 v33, v0

    move/from16 v0, v20

    move/from16 v20, v22

    move/from16 v31, v24

    move/from16 v32, v25

    move/from16 v17, v28

    move/from16 v25, v30

    move/from16 v3, v36

    goto :goto_675

    :goto_691
    mul-float v1, v31, v31

    sub-float v1, v16, v1

    mul-float v4, v32, v32

    sub-float/2addr v1, v4

    mul-float v4, v33, v33

    sub-float/2addr v1, v4

    cmpl-float v4, v1, v19

    if-lez v4, :cond_6a9

    mul-float/2addr v1, v1

    mul-float/2addr v1, v1

    move-object/from16 v27, p0

    .line 736
    invoke-virtual/range {v27 .. v33}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    :cond_6a9
    mul-float v1, v17, v17

    sub-float v16, v16, v1

    mul-float v1, v25, v25

    sub-float v16, v16, v1

    mul-float v1, v23, v23

    sub-float v16, v16, v1

    cmpl-float v1, v16, v19

    if-lez v1, :cond_6d3

    mul-float v16, v16, v16

    mul-float v16, v16, v16

    move-object/from16 v27, p0

    move/from16 v30, v0

    move/from16 v28, v2

    move/from16 v31, v17

    move/from16 v29, v20

    move/from16 v33, v23

    move/from16 v32, v25

    .line 744
    invoke-virtual/range {v27 .. v33}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIFFF)F

    move-result v0

    mul-float v16, v16, v0

    add-float v3, v3, v16

    :cond_6d3
    const/high16 v0, 0x42ce0000    # 103.0f

    div-float/2addr v3, v0

    return v3
.end method

.method public eval(FFFF)F
    .registers 63

    add-float v0, p1, p2

    add-float v0, v0, p3

    add-float v0, v0, p4

    const v1, -0x41f27c97

    mul-float/2addr v0, v1

    add-float v1, p1, v0

    add-float v2, p2, v0

    add-float v3, p3, v0

    add-float v0, p4, v0

    .line 761
    invoke-static {v1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v5

    .line 762
    invoke-static {v2}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v8

    .line 763
    invoke-static {v3}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v7

    .line 764
    invoke-static {v0}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->fastFloor(F)I

    move-result v13

    add-int v4, v5, v8

    add-int/2addr v4, v7

    add-int/2addr v4, v13

    int-to-float v4, v4

    const v15, 0x3e9e377a

    mul-float/2addr v4, v15

    int-to-float v6, v5

    add-float v9, v6, v4

    int-to-float v10, v8

    add-float v11, v10, v4

    int-to-float v12, v7

    add-float v14, v12, v4

    move/from16 v16, v15

    int-to-float v15, v13

    add-float/2addr v4, v15

    sub-float/2addr v1, v6

    sub-float/2addr v2, v10

    sub-float/2addr v3, v12

    sub-float/2addr v0, v15

    add-float v6, v1, v2

    add-float v10, v6, v3

    add-float/2addr v10, v0

    sub-float v9, p1, v9

    sub-float v11, p2, v11

    sub-float v12, p3, v14

    sub-float v4, p4, v4

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v14, v10, v18

    const/16 p1, 0x8

    const/16 v17, 0x4

    const/high16 v19, 0x40000000    # 2.0f

    const/16 v20, 0x2

    const v21, 0x3f1e377a

    const/4 v15, 0x1

    const/16 v22, 0x0

    if-gtz v14, :cond_378

    cmpl-float v6, v1, v2

    if-ltz v6, :cond_6b

    cmpl-float v6, v3, v2

    if-lez v6, :cond_6b

    move v2, v3

    move/from16 v20, v17

    :cond_68
    move/from16 v17, v15

    goto :goto_74

    :cond_6b
    cmpg-float v6, v1, v2

    if-gez v6, :cond_68

    cmpl-float v6, v3, v1

    if-lez v6, :cond_68

    move v1, v3

    :goto_74
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_81

    cmpl-float v3, v0, v2

    if-lez v3, :cond_81

    move/from16 v20, p1

    move v2, v0

    :cond_7f
    move v0, v1

    goto :goto_8b

    :cond_81
    cmpg-float v3, v1, v2

    if-gez v3, :cond_7f

    cmpl-float v3, v0, v1

    if-lez v3, :cond_7f

    move/from16 v17, p1

    :goto_8b
    sub-float v1, v18, v10

    cmpl-float v3, v1, v0

    if-gtz v3, :cond_19e

    cmpl-float v1, v1, v2

    if-lez v1, :cond_97

    goto/16 :goto_19e

    :cond_97
    or-int v0, v17, v20

    int-to-byte v0, v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_ae

    add-int/lit8 v2, v5, -0x1

    sub-float v3, v9, v21

    add-float v6, v9, v18

    sub-float v6, v6, v16

    sub-float v10, v9, v16

    move v14, v10

    move v10, v6

    move v6, v3

    move v3, v2

    move v2, v5

    goto :goto_b9

    :cond_ae
    add-int/lit8 v2, v5, 0x1

    sub-float v3, v9, v18

    sub-float v6, v3, v21

    sub-float v3, v3, v16

    move v10, v3

    move v14, v10

    move v3, v2

    :goto_b9
    and-int/lit8 v17, v0, 0x2

    if-nez v17, :cond_e4

    sub-float v17, v11, v21

    sub-float v20, v11, v16

    if-ne v1, v15, :cond_d4

    add-int/lit8 v1, v8, -0x1

    add-float v23, v20, v18

    move/from16 v25, v20

    move/from16 v24, v23

    move/from16 v20, v8

    move/from16 v23, v17

    move/from16 v17, v1

    move/from16 v1, v20

    goto :goto_f6

    :cond_d4
    add-int/lit8 v1, v8, -0x1

    add-float v23, v20, v18

    move/from16 v24, v20

    move/from16 v25, v23

    move/from16 v20, v1

    move v1, v8

    move/from16 v23, v17

    move/from16 v17, v1

    goto :goto_f6

    :cond_e4
    add-int/lit8 v1, v8, 0x1

    sub-float v17, v11, v18

    sub-float v20, v17, v21

    sub-float v17, v17, v16

    move/from16 v24, v17

    move/from16 v25, v24

    move/from16 v23, v20

    move/from16 v17, v1

    move/from16 v20, v17

    :goto_f6
    and-int/lit8 v26, v0, 0x4

    if-nez v26, :cond_123

    sub-float v26, v12, v21

    sub-float v27, v12, v16

    and-int/lit8 v15, v0, 0x3

    move/from16 p4, v0

    const/4 v0, 0x3

    if-ne v15, v0, :cond_114

    add-int/lit8 v0, v7, -0x1

    add-float v15, v27, v18

    move/from16 v28, v15

    move/from16 v29, v27

    move v15, v0

    move v0, v7

    move/from16 v27, v26

    move/from16 v26, v0

    goto :goto_136

    :cond_114
    add-int/lit8 v0, v7, -0x1

    add-float v15, v27, v18

    move/from16 v29, v15

    move/from16 v28, v27

    move v15, v7

    move/from16 v27, v26

    move/from16 v26, v0

    move v0, v15

    goto :goto_136

    :cond_123
    move/from16 p4, v0

    add-int/lit8 v0, v7, 0x1

    sub-float v15, v12, v18

    sub-float v26, v15, v21

    sub-float v27, v15, v16

    move v15, v0

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v27, v26

    move/from16 v26, v15

    :goto_136
    and-int/lit8 v30, p4, 0x8

    if-nez v30, :cond_16e

    add-int/lit8 v30, v13, -0x1

    sub-float v21, v4, v21

    sub-float v31, v4, v16

    add-float v32, v4, v18

    sub-float v32, v32, v16

    move/from16 v34, v13

    move/from16 v35, v34

    move/from16 v33, v29

    move/from16 v36, v30

    move/from16 v37, v31

    move/from16 v38, v32

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v31, v27

    move/from16 v32, v28

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v27, v23

    move/from16 v28, v24

    move/from16 v20, v10

    move/from16 v21, v14

    move/from16 v23, v15

    move/from16 v24, v17

    move v15, v3

    move/from16 v17, v6

    :goto_16b
    move v3, v2

    goto/16 :goto_272

    :cond_16e
    add-int/lit8 v30, v13, 0x1

    sub-float v31, v4, v18

    sub-float v21, v31, v21

    sub-float v31, v31, v16

    move/from16 v32, v28

    move/from16 v33, v29

    move/from16 v34, v30

    move/from16 v35, v34

    move/from16 v36, v35

    move/from16 v37, v31

    move/from16 v38, v37

    move/from16 v28, v24

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v31, v27

    move/from16 v24, v17

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v27, v23

    move/from16 v17, v6

    move/from16 v20, v10

    move/from16 v21, v14

    move/from16 v23, v15

    move v15, v3

    goto :goto_16b

    :cond_19e
    :goto_19e
    cmpl-float v0, v2, v0

    if-lez v0, :cond_1a4

    move/from16 v17, v20

    :cond_1a4
    and-int/lit8 v0, v17, 0x1

    if-nez v0, :cond_1b1

    add-int/lit8 v1, v5, -0x1

    add-float v2, v9, v18

    move v6, v2

    move v10, v9

    move v2, v1

    move v1, v5

    goto :goto_1b8

    :cond_1b1
    add-int/lit8 v1, v5, 0x1

    sub-float v2, v9, v18

    move v6, v2

    move v10, v6

    move v2, v1

    :goto_1b8
    and-int/lit8 v3, v17, 0x2

    if-nez v3, :cond_1dd

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1cd

    add-int/lit8 v0, v8, -0x1

    add-float v3, v11, v18

    move/from16 v23, v3

    move v3, v8

    move/from16 v20, v3

    move/from16 v24, v11

    move/from16 v25, v24

    goto :goto_1eb

    :cond_1cd
    add-int/lit8 v0, v8, -0x1

    add-float v3, v11, v18

    move/from16 v24, v3

    move/from16 v20, v8

    move/from16 v23, v11

    move/from16 v25, v23

    move v3, v0

    move/from16 v0, v20

    goto :goto_1eb

    :cond_1dd
    add-int/lit8 v0, v8, 0x1

    sub-float v3, v11, v18

    move/from16 v20, v0

    move/from16 v23, v3

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v3, v20

    :goto_1eb
    and-int/lit8 v14, v17, 0x4

    if-nez v14, :cond_224

    and-int/lit8 v14, v17, 0x3

    if-eqz v14, :cond_215

    const/4 v15, 0x3

    if-ne v14, v15, :cond_205

    add-int/lit8 v14, v7, -0x1

    add-float v15, v12, v18

    move/from16 v26, v7

    move/from16 v28, v12

    move/from16 v29, v28

    move/from16 v27, v15

    :goto_202
    move/from16 v15, v26

    goto :goto_231

    :cond_205
    add-int/lit8 v14, v7, -0x1

    add-float v15, v12, v18

    move/from16 v26, v7

    move/from16 v27, v12

    move/from16 v29, v27

    move/from16 v28, v15

    move v15, v14

    move/from16 v14, v26

    goto :goto_231

    :cond_215
    add-int/lit8 v14, v7, -0x1

    add-float v15, v12, v18

    move/from16 v27, v12

    move/from16 v28, v27

    move/from16 v26, v14

    move/from16 v29, v15

    move v14, v7

    move v15, v14

    goto :goto_231

    :cond_224
    add-int/lit8 v14, v7, 0x1

    sub-float v15, v12, v18

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v27

    move/from16 v29, v28

    goto :goto_202

    :goto_231
    and-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_240

    add-int/lit8 v17, v13, -0x1

    add-float v21, v4, v18

    move/from16 v30, v13

    move/from16 v32, v21

    move/from16 v21, v4

    goto :goto_248

    :cond_240
    add-int/lit8 v17, v13, 0x1

    sub-float v21, v4, v18

    move/from16 v30, v17

    move/from16 v32, v21

    :goto_248
    move/from16 v36, v17

    move/from16 v37, v21

    move/from16 v31, v27

    move/from16 v33, v29

    move/from16 v34, v30

    move/from16 v35, v34

    move/from16 v38, v32

    move/from16 v17, v6

    move/from16 v21, v10

    move/from16 v27, v23

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v32, v28

    move/from16 v23, v15

    move/from16 v25, v20

    move/from16 v26, v37

    move/from16 v28, v24

    move v15, v1

    move/from16 v24, v3

    move/from16 v20, v21

    move v1, v0

    move v3, v15

    move v0, v14

    :goto_272
    mul-float v6, v9, v9

    sub-float v6, v19, v6

    mul-float v10, v11, v11

    sub-float/2addr v6, v10

    mul-float v10, v12, v12

    sub-float/2addr v6, v10

    mul-float v10, v4, v4

    sub-float/2addr v6, v10

    cmpl-float v10, v6, v22

    if-lez v10, :cond_2a0

    mul-float/2addr v6, v6

    mul-float v14, v6, v6

    move v6, v8

    move v10, v11

    move v11, v12

    move v8, v13

    move v12, v4

    move-object/from16 v4, p0

    .line 944
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v13

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move/from16 v39, v12

    move v10, v8

    move v8, v6

    mul-float/2addr v14, v13

    add-float v14, v14, v22

    move v4, v14

    goto :goto_2ab

    :cond_2a0
    move/from16 v39, v4

    move/from16 v40, v9

    move/from16 v41, v11

    move/from16 v42, v12

    move v10, v13

    move/from16 v4, v22

    :goto_2ab
    sub-float v9, v40, v18

    sub-float v11, v9, v16

    sub-float v6, v41, v22

    sub-float v12, v6, v16

    sub-float v6, v42, v22

    sub-float v13, v6, v16

    sub-float v6, v39, v22

    sub-float v14, v6, v16

    mul-float v6, v11, v11

    sub-float v6, v19, v6

    mul-float v43, v12, v12

    sub-float v6, v6, v43

    mul-float v44, v13, v13

    sub-float v6, v6, v44

    mul-float v45, v14, v14

    sub-float v6, v6, v45

    cmpl-float v9, v6, v22

    if-lez v9, :cond_2e8

    mul-float/2addr v6, v6

    mul-float v46, v6, v6

    move v9, v7

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v6, p0

    .line 955
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move v11, v14

    move v14, v12

    move v12, v11

    move v11, v13

    move v13, v8

    move v8, v10

    mul-float v46, v46, v7

    add-float v4, v4, v46

    :goto_2e5
    move/from16 v46, v4

    goto :goto_2f0

    :cond_2e8
    move v9, v14

    move v14, v12

    move v12, v9

    move v9, v7

    move v11, v13

    move v13, v8

    move v8, v10

    goto :goto_2e5

    :goto_2f0
    sub-float v4, v40, v22

    sub-float v4, v4, v16

    sub-float v6, v41, v18

    sub-float v10, v6, v16

    mul-float v6, v4, v4

    sub-float v40, v19, v6

    mul-float v6, v10, v10

    sub-float v6, v40, v6

    sub-float v6, v6, v44

    sub-float v6, v6, v45

    cmpl-float v7, v6, v22

    if-lez v7, :cond_31e

    mul-float/2addr v6, v6

    mul-float v41, v6, v6

    add-int/lit8 v6, v13, 0x1

    move v7, v9

    move v9, v4

    move-object/from16 v4, p0

    .line 966
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    move/from16 v47, v7

    move/from16 v48, v11

    mul-float v41, v41, v6

    add-float v46, v46, v41

    goto :goto_323

    :cond_31e
    move/from16 v47, v9

    move/from16 v48, v11

    move v9, v4

    :goto_323
    sub-float v4, v42, v18

    sub-float v11, v4, v16

    sub-float v40, v40, v43

    mul-float v4, v11, v11

    sub-float v4, v40, v4

    sub-float v4, v4, v45

    cmpl-float v6, v4, v22

    if-lez v6, :cond_345

    mul-float/2addr v4, v4

    mul-float v41, v4, v4

    add-int/lit8 v7, v47, 0x1

    move-object/from16 v4, p0

    move v6, v13

    move v10, v14

    .line 977
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    mul-float v41, v41, v7

    add-float v46, v46, v41

    goto :goto_347

    :cond_345
    move v6, v13

    move v10, v14

    :goto_347
    sub-float v4, v39, v18

    sub-float v12, v4, v16

    sub-float v40, v40, v44

    mul-float v4, v12, v12

    sub-float v40, v40, v4

    cmpl-float v4, v40, v22

    if-lez v4, :cond_369

    mul-float v40, v40, v40

    mul-float v40, v40, v40

    const/4 v4, 0x1

    add-int/2addr v8, v4

    move-object/from16 v4, p0

    move/from16 v7, v47

    move/from16 v11, v48

    .line 988
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v5

    mul-float v40, v40, v5

    add-float v46, v46, v40

    :cond_369
    move v7, v0

    move v6, v1

    move v5, v2

    move/from16 v9, v17

    move/from16 v12, v26

    move/from16 v10, v27

    move/from16 v11, v31

    move/from16 v8, v34

    goto/16 :goto_12a3

    :cond_378
    move/from16 v39, v4

    move/from16 v40, v9

    move/from16 v41, v11

    move/from16 v42, v12

    move v4, v15

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v11, v10, v9

    const/16 v12, 0xd

    const/16 v14, 0xe

    const/4 v15, 0x7

    const/16 v23, 0xb

    const v24, 0x3f9e377a

    const v25, 0x3f6d5337

    if-ltz v11, :cond_6b5

    cmpg-float v6, v1, v2

    if-gtz v6, :cond_3a0

    cmpg-float v6, v3, v2

    if-gez v6, :cond_3a0

    move v2, v3

    move/from16 v12, v23

    goto :goto_3ab

    :cond_3a0
    cmpl-float v6, v1, v2

    if-lez v6, :cond_3ab

    cmpg-float v6, v3, v1

    if-gez v6, :cond_3ab

    move v1, v3

    move/from16 v14, v23

    :cond_3ab
    :goto_3ab
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_3b8

    cmpg-float v3, v0, v2

    if-gez v3, :cond_3b8

    move v2, v0

    move v0, v1

    move v12, v15

    :goto_3b6
    move v15, v14

    goto :goto_3c3

    :cond_3b8
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3c1

    cmpg-float v3, v0, v1

    if-gez v3, :cond_3c1

    goto :goto_3c3

    :cond_3c1
    move v0, v1

    goto :goto_3b6

    :goto_3c3
    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v1, v10

    cmpg-float v3, v1, v0

    if-ltz v3, :cond_4c4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3d0

    goto/16 :goto_4c4

    :cond_3d0
    and-int v0, v15, v12

    int-to-byte v0, v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3e6

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v3, v5, 0x2

    sub-float v9, v40, v18

    sub-float v6, v9, v21

    sub-float v10, v40, v19

    sub-float v10, v10, v25

    sub-float v9, v9, v25

    goto :goto_3ed

    :cond_3e6
    sub-float v6, v40, v21

    sub-float v10, v40, v25

    move v2, v5

    move v3, v2

    move v9, v10

    :goto_3ed
    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_40f

    add-int/lit8 v11, v8, 0x1

    sub-float v12, v41, v18

    sub-float v14, v12, v21

    sub-float v12, v12, v25

    if-eqz v1, :cond_406

    add-int/lit8 v1, v8, 0x2

    sub-float v15, v12, v18

    move/from16 v16, v14

    move v14, v15

    move v15, v12

    move v12, v1

    move v1, v11

    goto :goto_41a

    :cond_406
    add-int/lit8 v1, v8, 0x2

    sub-float v15, v12, v18

    move/from16 v16, v14

    move v14, v12

    move v12, v11

    goto :goto_41a

    :cond_40f
    sub-float v14, v41, v21

    sub-float v12, v41, v25

    move v1, v8

    move v11, v1

    move v15, v12

    move/from16 v16, v14

    move v12, v11

    move v14, v15

    :goto_41a
    and-int/lit8 v17, v0, 0x4

    if-eqz v17, :cond_444

    add-int/lit8 v17, v7, 0x1

    sub-float v20, v42, v18

    sub-float v23, v20, v21

    sub-float v20, v20, v25

    and-int/lit8 v26, v0, 0x3

    if-eqz v26, :cond_439

    add-int/lit8 v26, v7, 0x2

    sub-float v27, v20, v18

    move/from16 v28, v23

    move/from16 v23, v27

    move/from16 v27, v20

    move/from16 v20, v26

    move/from16 v26, v17

    goto :goto_454

    :cond_439
    add-int/lit8 v26, v7, 0x2

    sub-float v27, v20, v18

    move/from16 v28, v23

    move/from16 v23, v20

    move/from16 v20, v17

    goto :goto_454

    :cond_444
    sub-float v23, v42, v21

    sub-float v20, v42, v25

    move/from16 v17, v7

    move/from16 v26, v17

    move/from16 v27, v20

    move/from16 v28, v23

    move/from16 v20, v26

    move/from16 v23, v27

    :goto_454
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_492

    add-int/lit8 v0, v13, 0x1

    add-int/lit8 v29, v13, 0x2

    sub-float v30, v39, v18

    sub-float v21, v30, v21

    sub-float v30, v30, v25

    sub-float v31, v39, v19

    sub-float v31, v31, v25

    move/from16 v32, v12

    move/from16 v36, v14

    move/from16 v35, v15

    move/from16 v34, v16

    move/from16 v37, v20

    move/from16 v33, v21

    move/from16 v44, v23

    move/from16 v43, v27

    move/from16 v38, v28

    move/from16 v45, v30

    move/from16 v46, v31

    move/from16 v20, v0

    move/from16 v21, v20

    move/from16 v31, v1

    move/from16 v23, v3

    move/from16 v28, v9

    move/from16 v27, v10

    move v1, v11

    move/from16 v0, v17

    move/from16 v30, v26

    move v3, v2

    move/from16 v26, v6

    goto/16 :goto_591

    :cond_492
    sub-float v0, v39, v21

    sub-float v21, v39, v25

    move/from16 v33, v0

    move/from16 v31, v1

    move v1, v11

    move/from16 v32, v12

    move/from16 v29, v13

    move/from16 v36, v14

    move/from16 v35, v15

    move/from16 v34, v16

    move/from16 v0, v17

    move/from16 v37, v20

    move/from16 v45, v21

    move/from16 v46, v45

    move/from16 v44, v23

    move/from16 v30, v26

    move/from16 v43, v27

    move/from16 v38, v28

    move/from16 v23, v3

    move/from16 v26, v6

    move/from16 v28, v9

    move/from16 v27, v10

    move/from16 v20, v29

    move/from16 v21, v20

    move v3, v2

    goto/16 :goto_591

    :cond_4c4
    :goto_4c4
    cmpg-float v0, v2, v0

    if-gez v0, :cond_4c9

    move v15, v12

    :cond_4c9
    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_4da

    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v2, v5, 0x1

    sub-float v9, v40, v19

    sub-float v9, v9, v24

    sub-float v3, v40, v18

    sub-float v3, v3, v24

    goto :goto_4df

    :cond_4da
    sub-float v9, v40, v24

    move v1, v5

    move v2, v1

    move v3, v9

    :goto_4df
    and-int/lit8 v6, v15, 0x2

    if-eqz v6, :cond_4fe

    add-int/lit8 v6, v8, 0x1

    sub-float v11, v41, v18

    sub-float v11, v11, v24

    if-eqz v0, :cond_4f5

    add-int/lit8 v0, v8, 0x2

    sub-float v10, v11, v18

    move v12, v10

    move v14, v11

    move v10, v6

    move v6, v0

    move v0, v10

    goto :goto_505

    :cond_4f5
    add-int/lit8 v0, v8, 0x2

    sub-float v10, v11, v18

    move v12, v11

    move v14, v12

    move v11, v10

    move v10, v6

    goto :goto_505

    :cond_4fe
    sub-float v11, v41, v24

    move v0, v8

    move v6, v0

    move v10, v6

    move v12, v11

    move v14, v12

    :goto_505
    and-int/lit8 v16, v15, 0x4

    if-eqz v16, :cond_53f

    add-int/lit8 v16, v7, 0x1

    sub-float v17, v42, v18

    sub-float v17, v17, v24

    and-int/lit8 v4, v15, 0x3

    move/from16 p4, v0

    const/4 v0, 0x3

    if-eq v4, v0, :cond_533

    if-nez v4, :cond_528

    add-int/lit8 v0, v7, 0x2

    sub-float v4, v17, v18

    move/from16 v20, v17

    move/from16 v21, v20

    move/from16 v17, v4

    move/from16 v4, v16

    move/from16 v16, v0

    move v0, v4

    goto :goto_54b

    :cond_528
    add-int/lit8 v0, v7, 0x2

    sub-float v4, v17, v18

    move/from16 v20, v4

    move/from16 v4, v16

    move/from16 v21, v17

    goto :goto_54b

    :cond_533
    add-int/lit8 v0, v7, 0x2

    sub-float v4, v17, v18

    move/from16 v21, v4

    move/from16 v20, v17

    move v4, v0

    move/from16 v0, v16

    goto :goto_54b

    :cond_53f
    move/from16 p4, v0

    sub-float v17, v42, v24

    move v0, v7

    move v4, v0

    move/from16 v16, v4

    move/from16 v20, v17

    move/from16 v21, v20

    :goto_54b
    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_55c

    add-int/lit8 v15, v13, 0x1

    add-int/lit8 v23, v13, 0x2

    sub-float v26, v39, v18

    sub-float v26, v26, v24

    sub-float v27, v39, v19

    sub-float v27, v27, v24

    goto :goto_563

    :cond_55c
    sub-float v26, v39, v24

    move v15, v13

    move/from16 v23, v15

    move/from16 v27, v26

    :goto_563
    move/from16 v30, v0

    move/from16 v28, v3

    move/from16 v37, v4

    move/from16 v31, v6

    move/from16 v32, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v14

    move/from16 v0, v16

    move/from16 v38, v17

    move/from16 v43, v20

    move/from16 v44, v21

    move/from16 v29, v23

    move/from16 v33, v26

    move/from16 v45, v33

    move/from16 v46, v27

    move v3, v2

    move/from16 v23, v3

    move/from16 v27, v28

    move/from16 v26, v9

    move/from16 v20, v15

    move/from16 v21, v20

    move v2, v1

    move/from16 v1, p4

    :goto_591
    sub-float v47, v40, v18

    sub-float v14, v47, v25

    sub-float v48, v41, v18

    sub-float v15, v48, v25

    sub-float v49, v42, v18

    sub-float v11, v49, v25

    sub-float v17, v39, v25

    mul-float v4, v14, v14

    sub-float v4, v19, v4

    mul-float v50, v15, v15

    sub-float v6, v4, v50

    mul-float v51, v11, v11

    sub-float v9, v6, v51

    mul-float v10, v17, v17

    sub-float/2addr v9, v10

    cmpl-float v10, v9, v22

    if-lez v10, :cond_5cf

    mul-float/2addr v9, v9

    mul-float v52, v9, v9

    add-int/lit8 v10, v5, 0x1

    move/from16 v16, v11

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v12, v7, 0x1

    move-object/from16 v9, p0

    move/from16 p1, v0

    const/4 v0, 0x1

    .line 1141
    invoke-virtual/range {v9 .. v17}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v10

    move/from16 v53, v13

    move/from16 v54, v16

    mul-float v52, v52, v10

    add-float v52, v52, v22

    goto :goto_5d8

    :cond_5cf
    move/from16 p1, v0

    move/from16 v54, v11

    move/from16 v53, v13

    const/4 v0, 0x1

    move/from16 v52, v22

    :goto_5d8
    sub-float v16, v42, v25

    sub-float v18, v39, v18

    sub-float v12, v18, v25

    mul-float v9, v16, v16

    sub-float/2addr v6, v9

    mul-float v39, v12, v12

    sub-float v6, v6, v39

    cmpl-float v9, v6, v22

    if-lez v9, :cond_602

    mul-float/2addr v6, v6

    mul-float/2addr v6, v6

    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v13, v53, 0x1

    move-object/from16 v9, p0

    move/from16 v17, v12

    move v12, v7

    .line 1152
    invoke-virtual/range {v9 .. v17}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v55, v12

    move/from16 v12, v17

    mul-float/2addr v6, v7

    add-float v52, v52, v6

    goto :goto_604

    :cond_602
    move/from16 v55, v7

    :goto_604
    sub-float v11, v41, v25

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    sub-float v4, v4, v51

    sub-float v4, v4, v39

    cmpl-float v6, v4, v22

    if-lez v6, :cond_62d

    mul-float/2addr v4, v4

    mul-float/2addr v4, v4

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v55, 0x1

    add-int/lit8 v10, v53, 0x1

    move v6, v12

    move v12, v11

    move v11, v14

    move v14, v6

    move-object/from16 v6, p0

    move/from16 v13, v54

    .line 1163
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v16, v13

    move v12, v14

    move v13, v8

    mul-float/2addr v4, v7

    add-float v52, v52, v4

    goto :goto_630

    :cond_62d
    move v13, v8

    move/from16 v16, v54

    :goto_630
    sub-float v9, v40, v25

    mul-float v4, v9, v9

    sub-float v4, v19, v4

    sub-float v4, v4, v50

    sub-float v4, v4, v51

    sub-float v4, v4, v39

    cmpl-float v6, v4, v22

    if-lez v6, :cond_655

    mul-float/2addr v4, v4

    mul-float v14, v4, v4

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v7, v55, 0x1

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    move v10, v15

    move/from16 v11, v16

    .line 1174
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    mul-float/2addr v14, v6

    add-float v52, v52, v14

    :cond_655
    sub-float v9, v47, v24

    sub-float v10, v48, v24

    sub-float v11, v49, v24

    sub-float v12, v18, v24

    mul-float v4, v9, v9

    sub-float v4, v19, v4

    mul-float v6, v10, v10

    sub-float/2addr v4, v6

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    mul-float v6, v12, v12

    sub-float/2addr v4, v6

    cmpl-float v6, v4, v22

    if-lez v6, :cond_681

    mul-float/2addr v4, v4

    mul-float v14, v4, v4

    add-int/2addr v5, v0

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v7, v55, 0x1

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    .line 1185
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v0

    mul-float/2addr v14, v0

    add-float v52, v52, v14

    :cond_681
    move/from16 v5, v35

    move/from16 v35, v21

    move/from16 v21, v28

    move/from16 v28, v5

    move/from16 v5, v36

    move/from16 v36, v29

    move/from16 v29, v5

    move/from16 v7, p1

    move v6, v1

    move v5, v2

    move/from16 v8, v20

    move/from16 v15, v23

    move/from16 v9, v26

    move/from16 v20, v27

    move/from16 v23, v30

    move/from16 v24, v31

    move/from16 v25, v32

    move/from16 v12, v33

    move/from16 v10, v34

    move/from16 v30, v37

    move/from16 v11, v38

    move/from16 v32, v43

    move/from16 v33, v44

    move/from16 v37, v45

    move/from16 v38, v46

    :goto_6b1
    move/from16 v46, v52

    goto/16 :goto_12a3

    :cond_6b5
    move/from16 v53, v4

    move v4, v0

    move/from16 v0, v53

    move/from16 v55, v7

    move/from16 v53, v13

    move v13, v8

    cmpg-float v7, v10, v19

    const/16 v8, 0xc

    const/4 v11, 0x6

    const/16 v26, 0x9

    const/16 v27, 0x0

    if-gtz v7, :cond_c82

    add-float v7, v3, v4

    cmpl-float v9, v6, v7

    if-lez v9, :cond_6d2

    const/4 v8, 0x3

    goto :goto_6d3

    :cond_6d2
    move v6, v7

    :goto_6d3
    add-float v7, v1, v3

    add-float v9, v2, v4

    cmpl-float v12, v7, v9

    if-lez v12, :cond_6dd

    const/4 v9, 0x5

    goto :goto_6e4

    :cond_6dd
    const/16 v7, 0xa

    move/from16 v57, v9

    move v9, v7

    move/from16 v7, v57

    :goto_6e4
    add-float v12, v1, v4

    add-float v14, v2, v3

    cmpl-float v15, v12, v14

    if-lez v15, :cond_706

    cmpl-float v11, v6, v7

    if-ltz v11, :cond_6f6

    cmpl-float v11, v12, v7

    if-lez v11, :cond_6f6

    move v7, v12

    goto :goto_703

    :cond_6f6
    cmpg-float v11, v6, v7

    if-gez v11, :cond_701

    cmpl-float v11, v12, v6

    if-lez v11, :cond_701

    move v6, v12

    move/from16 v8, v26

    :cond_701
    move/from16 v26, v9

    :goto_703
    move/from16 v15, v26

    goto :goto_71e

    :cond_706
    cmpl-float v12, v6, v7

    if-ltz v12, :cond_711

    cmpl-float v12, v14, v7

    if-lez v12, :cond_711

    move v15, v11

    move v7, v14

    goto :goto_71e

    :cond_711
    cmpg-float v12, v6, v7

    if-gez v12, :cond_71d

    cmpl-float v12, v14, v6

    if-lez v12, :cond_71d

    move v15, v9

    move v8, v11

    move v6, v14

    goto :goto_71e

    :cond_71d
    move v15, v9

    :goto_71e
    sub-float v9, v19, v10

    add-float/2addr v1, v9

    cmpl-float v10, v6, v7

    if-ltz v10, :cond_730

    cmpl-float v10, v1, v7

    if-lez v10, :cond_730

    move v15, v0

    move v7, v1

    move v10, v8

    move/from16 v1, v27

    move v8, v15

    goto :goto_743

    :cond_730
    cmpg-float v10, v6, v7

    if-gez v10, :cond_73f

    cmpl-float v10, v1, v6

    if-lez v10, :cond_73f

    move v10, v0

    move v6, v1

    move v8, v15

    move/from16 v15, v27

    move v1, v10

    goto :goto_743

    :cond_73f
    move v1, v0

    move v10, v8

    move v8, v15

    move v15, v1

    :goto_743
    add-float/2addr v2, v9

    cmpl-float v11, v6, v7

    if-ltz v11, :cond_750

    cmpl-float v11, v2, v7

    if-lez v11, :cond_750

    move v7, v2

    move/from16 v1, v27

    goto :goto_75f

    :cond_750
    cmpg-float v11, v6, v7

    if-gez v11, :cond_75d

    cmpl-float v11, v2, v6

    if-lez v11, :cond_75d

    move v6, v2

    move/from16 v10, v20

    move/from16 v15, v27

    :cond_75d
    move/from16 v20, v8

    :goto_75f
    add-float/2addr v3, v9

    cmpl-float v2, v6, v7

    if-ltz v2, :cond_76e

    cmpl-float v2, v3, v7

    if-lez v2, :cond_76e

    move v7, v3

    move/from16 v20, v17

    move/from16 v1, v27

    goto :goto_77b

    :cond_76e
    cmpg-float v2, v6, v7

    if-gez v2, :cond_77b

    cmpl-float v2, v3, v6

    if-lez v2, :cond_77b

    move v6, v3

    move/from16 v10, v17

    move/from16 v15, v27

    :cond_77b
    :goto_77b
    add-float/2addr v9, v4

    cmpl-float v2, v6, v7

    if-ltz v2, :cond_789

    cmpl-float v2, v9, v7

    if-lez v2, :cond_789

    move/from16 v20, p1

    move/from16 v1, v27

    goto :goto_795

    :cond_789
    cmpg-float v2, v6, v7

    if-gez v2, :cond_795

    cmpl-float v2, v9, v6

    if-lez v2, :cond_795

    move/from16 v10, p1

    move/from16 v15, v27

    :cond_795
    :goto_795
    if-ne v15, v1, :cond_92b

    if-eqz v15, :cond_87f

    or-int v1, v10, v20

    int-to-byte v1, v1

    and-int v2, v10, v20

    int-to-byte v2, v2

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_7ad

    add-int/lit8 v3, v5, -0x1

    sub-float v9, v40, v25

    add-float v4, v40, v18

    sub-float v4, v4, v21

    move v6, v5

    goto :goto_7b8

    :cond_7ad
    add-int/lit8 v3, v5, 0x1

    sub-float v9, v40, v18

    sub-float v4, v9, v25

    sub-float v6, v9, v21

    move v9, v4

    move v4, v6

    move v6, v3

    :goto_7b8
    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_7c7

    add-int/lit8 v8, v13, -0x1

    sub-float v11, v41, v25

    add-float v7, v41, v18

    sub-float v7, v7, v21

    move v10, v8

    move v8, v13

    goto :goto_7d2

    :cond_7c7
    add-int/lit8 v8, v13, 0x1

    sub-float v11, v41, v18

    sub-float v7, v11, v25

    sub-float v10, v11, v21

    move v11, v7

    move v7, v10

    move v10, v8

    :goto_7d2
    and-int/lit8 v12, v1, 0x4

    if-nez v12, :cond_7e5

    add-int/lit8 v12, v55, -0x1

    sub-float v14, v42, v25

    add-float v15, v42, v18

    sub-float v15, v15, v21

    move/from16 v20, v15

    move v15, v14

    move v14, v12

    move/from16 v12, v55

    goto :goto_7f0

    :cond_7e5
    add-int/lit8 v12, v55, 0x1

    sub-float v14, v42, v18

    sub-float v15, v14, v25

    sub-float v14, v14, v21

    move/from16 v20, v14

    move v14, v12

    :goto_7f0
    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_803

    add-int/lit8 v1, v53, -0x1

    sub-float v23, v39, v25

    add-float v24, v39, v18

    sub-float v24, v24, v21

    move/from16 v25, v24

    move/from16 v24, v23

    move/from16 v23, v53

    goto :goto_80f

    :cond_803
    add-int/lit8 v1, v53, 0x1

    sub-float v23, v39, v18

    sub-float v24, v23, v25

    sub-float v23, v23, v21

    move/from16 v25, v23

    move/from16 v23, v1

    :goto_80f
    sub-float v26, v40, v21

    sub-float v27, v41, v21

    sub-float v28, v42, v21

    sub-float v29, v39, v21

    and-int/lit8 v30, v2, 0x1

    if-eqz v30, :cond_82c

    add-int/lit8 v2, v5, 0x2

    sub-float v26, v26, v19

    move/from16 v30, v28

    move/from16 v31, v53

    :goto_823
    move/from16 v17, v55

    :goto_825
    move/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v13

    goto :goto_85c

    :cond_82c
    and-int/lit8 v30, v2, 0x2

    if-eqz v30, :cond_842

    add-int/lit8 v2, v13, 0x2

    sub-float v27, v27, v19

    move/from16 v30, v28

    move/from16 v31, v53

    move/from16 v17, v55

    move/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v2

    move v2, v5

    goto :goto_85c

    :cond_842
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_852

    add-int/lit8 v2, v55, 0x2

    sub-float v28, v28, v19

    move/from16 v17, v2

    move v2, v5

    move/from16 v30, v28

    move/from16 v31, v53

    goto :goto_825

    :cond_852
    add-int/lit8 v2, v53, 0x2

    sub-float v29, v29, v19

    move/from16 v31, v2

    move v2, v5

    move/from16 v30, v28

    goto :goto_823

    :goto_85c
    move/from16 v45, v1

    move/from16 v32, v4

    move/from16 v37, v7

    move/from16 v34, v10

    move/from16 v36, v11

    move v1, v12

    move/from16 v33, v14

    move/from16 v38, v15

    move/from16 v43, v20

    move/from16 v44, v23

    move/from16 v35, v24

    move/from16 v46, v25

    move/from16 v20, v2

    move/from16 v24, v3

    move v3, v6

    move v2, v8

    move/from16 v25, v9

    move/from16 v23, v17

    goto/16 :goto_a81

    :cond_87f
    or-int v1, v10, v20

    int-to-byte v1, v1

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_890

    add-int/lit8 v3, v5, -0x1

    add-float v9, v40, v18

    sub-float v9, v9, v16

    sub-float v4, v40, v16

    move v6, v5

    goto :goto_898

    :cond_890
    add-int/lit8 v3, v5, 0x1

    sub-float v9, v40, v18

    sub-float v9, v9, v16

    move v6, v3

    move v4, v9

    :goto_898
    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_8b0

    sub-float v11, v41, v16

    if-ne v2, v0, :cond_8a8

    add-int/lit8 v8, v13, -0x1

    add-float v2, v11, v18

    move v7, v11

    move v11, v2

    move v2, v13

    goto :goto_8b8

    :cond_8a8
    add-int/lit8 v8, v13, -0x1

    add-float v2, v11, v18

    move v7, v2

    move v2, v8

    move v8, v13

    goto :goto_8b8

    :cond_8b0
    add-int/lit8 v8, v13, 0x1

    sub-float v11, v41, v18

    sub-float v11, v11, v16

    move v2, v8

    move v7, v11

    :goto_8b8
    and-int/lit8 v10, v1, 0x4

    if-nez v10, :cond_8d5

    sub-float v12, v42, v16

    and-int/lit8 v10, v1, 0x3

    const/4 v15, 0x3

    if-ne v10, v15, :cond_8cb

    add-int/lit8 v10, v55, -0x1

    add-float v14, v12, v18

    move v15, v12

    move/from16 v12, v55

    goto :goto_8de

    :cond_8cb
    add-int/lit8 v10, v55, -0x1

    add-float v14, v12, v18

    move v15, v14

    move v14, v12

    move v12, v10

    move/from16 v10, v55

    goto :goto_8de

    :cond_8d5
    add-int/lit8 v10, v55, 0x1

    sub-float v12, v42, v18

    sub-float v12, v12, v16

    move v14, v12

    move v15, v14

    move v12, v10

    :goto_8de
    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8f1

    add-int/lit8 v1, v53, -0x1

    sub-float v17, v39, v16

    add-float v20, v39, v18

    sub-float v20, v20, v16

    move/from16 v23, v20

    move/from16 v20, v17

    move/from16 v17, v53

    goto :goto_8fd

    :cond_8f1
    add-int/lit8 v1, v53, 0x1

    sub-float v17, v39, v18

    sub-float v17, v17, v16

    move/from16 v20, v17

    move/from16 v23, v20

    move/from16 v17, v1

    :goto_8fd
    move/from16 v45, v1

    move/from16 v34, v2

    move/from16 v32, v4

    move/from16 v24, v6

    move/from16 v37, v7

    move v2, v8

    move/from16 v25, v9

    move v1, v10

    move/from16 v36, v11

    move/from16 v33, v12

    move/from16 v26, v13

    move/from16 v38, v14

    move/from16 v43, v15

    move/from16 v44, v17

    move/from16 v35, v20

    move/from16 v46, v23

    move/from16 v29, v39

    move/from16 v27, v40

    move/from16 v28, v41

    move/from16 v30, v42

    move/from16 v31, v53

    move/from16 v23, v55

    :goto_927
    move/from16 v20, v5

    goto/16 :goto_a81

    :cond_92b
    if-eqz v15, :cond_92e

    goto :goto_934

    :cond_92e
    move/from16 v57, v20

    move/from16 v20, v10

    move/from16 v10, v57

    :goto_934
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_942

    add-int/lit8 v2, v5, -0x1

    add-float v9, v40, v18

    sub-float v9, v9, v16

    sub-float v3, v40, v16

    move v4, v5

    goto :goto_94a

    :cond_942
    add-int/lit8 v2, v5, 0x1

    sub-float v9, v40, v18

    sub-float v9, v9, v16

    move v4, v2

    move v3, v9

    :goto_94a
    and-int/lit8 v6, v10, 0x2

    if-nez v6, :cond_962

    sub-float v11, v41, v16

    if-ne v1, v0, :cond_95a

    add-int/lit8 v8, v13, -0x1

    add-float v1, v11, v18

    move v6, v11

    move v11, v1

    move v1, v13

    goto :goto_96a

    :cond_95a
    add-int/lit8 v8, v13, -0x1

    add-float v1, v11, v18

    move v6, v1

    move v1, v8

    move v8, v13

    goto :goto_96a

    :cond_962
    add-int/lit8 v8, v13, 0x1

    sub-float v11, v41, v18

    sub-float v11, v11, v16

    move v1, v8

    move v6, v11

    :goto_96a
    and-int/lit8 v7, v10, 0x4

    if-nez v7, :cond_987

    sub-float v12, v42, v16

    and-int/lit8 v7, v10, 0x3

    const/4 v14, 0x3

    if-ne v7, v14, :cond_97d

    add-int/lit8 v7, v55, -0x1

    add-float v14, v12, v18

    move v15, v12

    move/from16 v12, v55

    goto :goto_990

    :cond_97d
    add-int/lit8 v7, v55, -0x1

    add-float v14, v12, v18

    move v15, v14

    move v14, v12

    move v12, v7

    move/from16 v7, v55

    goto :goto_990

    :cond_987
    add-int/lit8 v7, v55, 0x1

    sub-float v12, v42, v18

    sub-float v12, v12, v16

    move v14, v12

    move v15, v14

    move v12, v7

    :goto_990
    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_9a3

    add-int/lit8 v10, v53, -0x1

    sub-float v23, v39, v16

    add-float v24, v39, v18

    sub-float v24, v24, v16

    move/from16 v25, v24

    move/from16 v24, v23

    move/from16 v23, v53

    goto :goto_9af

    :cond_9a3
    add-int/lit8 v10, v53, 0x1

    sub-float v23, v39, v18

    sub-float v23, v23, v16

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v23, v10

    :goto_9af
    sub-float v26, v40, v21

    sub-float v27, v41, v21

    sub-float v28, v42, v21

    sub-float v29, v39, v21

    and-int/lit8 v30, v20, 0x1

    if-eqz v30, :cond_9ec

    add-int/lit8 v17, v5, 0x2

    sub-float v20, v26, v19

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v37, v6

    move v1, v7

    move/from16 v45, v10

    move/from16 v36, v11

    move/from16 v33, v12

    move/from16 v26, v13

    move/from16 v38, v14

    move/from16 v43, v15

    move/from16 v44, v23

    move/from16 v35, v24

    move/from16 v46, v25

    move/from16 v30, v28

    move/from16 v31, v53

    move/from16 v23, v55

    move v3, v2

    move/from16 v24, v4

    move v2, v8

    move/from16 v25, v9

    move/from16 v28, v27

    move/from16 v27, v20

    move/from16 v20, v17

    goto/16 :goto_a81

    :cond_9ec
    and-int/lit8 v30, v20, 0x2

    if-eqz v30, :cond_a1f

    add-int/lit8 v17, v13, 0x2

    sub-float v20, v27, v19

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v37, v6

    move v1, v7

    move/from16 v45, v10

    move/from16 v36, v11

    move/from16 v33, v12

    move/from16 v38, v14

    move/from16 v43, v15

    move/from16 v44, v23

    move/from16 v35, v24

    move/from16 v46, v25

    move/from16 v27, v26

    move/from16 v30, v28

    move/from16 v31, v53

    move/from16 v23, v55

    move v3, v2

    move/from16 v24, v4

    move v2, v8

    move/from16 v25, v9

    move/from16 v26, v17

    move/from16 v28, v20

    goto/16 :goto_927

    :cond_a1f
    and-int/lit8 v17, v20, 0x4

    if-eqz v17, :cond_a53

    add-int/lit8 v17, v55, 0x2

    sub-float v20, v28, v19

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v37, v6

    move v1, v7

    move/from16 v45, v10

    move/from16 v36, v11

    move/from16 v33, v12

    move/from16 v38, v14

    move/from16 v43, v15

    move/from16 v30, v20

    move/from16 v44, v23

    move/from16 v35, v24

    move/from16 v46, v25

    move/from16 v28, v27

    move/from16 v31, v53

    move v3, v2

    move/from16 v24, v4

    move/from16 v20, v5

    move v2, v8

    move/from16 v25, v9

    move/from16 v23, v17

    :goto_a4e
    move/from16 v27, v26

    move/from16 v26, v13

    goto :goto_a81

    :cond_a53
    add-int/lit8 v17, v53, 0x2

    sub-float v20, v29, v19

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v37, v6

    move v1, v7

    move/from16 v45, v10

    move/from16 v36, v11

    move/from16 v33, v12

    move/from16 v38, v14

    move/from16 v43, v15

    move/from16 v31, v17

    move/from16 v29, v20

    move/from16 v44, v23

    move/from16 v35, v24

    move/from16 v46, v25

    move/from16 v30, v28

    move/from16 v23, v55

    move v3, v2

    move/from16 v24, v4

    move/from16 v20, v5

    move v2, v8

    move/from16 v25, v9

    move/from16 v28, v27

    goto :goto_a4e

    :goto_a81
    sub-float v15, v40, v18

    sub-float v11, v15, v16

    sub-float v47, v41, v22

    sub-float v10, v47, v16

    sub-float v17, v42, v22

    move v8, v13

    sub-float v13, v17, v16

    sub-float v48, v39, v22

    sub-float v12, v48, v16

    mul-float v4, v11, v11

    sub-float v4, v19, v4

    mul-float v49, v10, v10

    sub-float v4, v4, v49

    mul-float v50, v13, v13

    sub-float v4, v4, v50

    mul-float v51, v12, v12

    sub-float v4, v4, v51

    cmpl-float v6, v4, v22

    if-lez v6, :cond_ac2

    mul-float/2addr v4, v4

    mul-float/2addr v4, v4

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v6, p0

    move v14, v12

    move/from16 v9, v55

    move v12, v10

    move/from16 v10, v53

    .line 1515
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move v11, v14

    move v14, v12

    move v12, v11

    move v11, v13

    move v13, v8

    move v8, v10

    mul-float/2addr v4, v7

    add-float v4, v22, v4

    move/from16 v52, v4

    goto :goto_acb

    :cond_ac2
    move v14, v10

    move v11, v13

    move/from16 v9, v55

    move v13, v8

    move/from16 v8, v53

    move/from16 v52, v22

    :goto_acb
    sub-float v40, v40, v22

    move v7, v9

    sub-float v9, v40, v16

    sub-float v41, v41, v18

    sub-float v10, v41, v16

    mul-float v4, v9, v9

    sub-float v53, v19, v4

    mul-float v4, v10, v10

    sub-float v4, v53, v4

    sub-float v4, v4, v50

    sub-float v4, v4, v51

    cmpl-float v6, v4, v22

    if-lez v6, :cond_af8

    mul-float/2addr v4, v4

    mul-float v54, v4, v4

    add-int/lit8 v6, v13, 0x1

    move-object/from16 v4, p0

    .line 1526
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    move/from16 v55, v7

    move/from16 v56, v11

    mul-float v54, v54, v6

    add-float v52, v52, v54

    goto :goto_afc

    :cond_af8
    move/from16 v55, v7

    move/from16 v56, v11

    :goto_afc
    sub-float v42, v42, v18

    sub-float v11, v42, v16

    sub-float v53, v53, v49

    mul-float v4, v11, v11

    sub-float v4, v53, v4

    sub-float v4, v4, v51

    cmpl-float v6, v4, v22

    if-lez v6, :cond_b20

    mul-float/2addr v4, v4

    mul-float v49, v4, v4

    add-int/lit8 v7, v55, 0x1

    move-object/from16 v4, p0

    move v6, v13

    move v10, v14

    .line 1537
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move v13, v8

    move v8, v6

    mul-float v49, v49, v7

    add-float v52, v52, v49

    goto :goto_b24

    :cond_b20
    move v10, v13

    move v13, v8

    move v8, v10

    move v10, v14

    :goto_b24
    sub-float v18, v39, v18

    sub-float v12, v18, v16

    sub-float v53, v53, v50

    mul-float v4, v12, v12

    sub-float v53, v53, v4

    cmpl-float v4, v53, v22

    if-lez v4, :cond_b48

    mul-float v53, v53, v53

    mul-float v53, v53, v53

    move v6, v8

    add-int/lit8 v8, v13, 0x1

    move-object/from16 v4, p0

    move/from16 v7, v55

    move/from16 v11, v56

    .line 1548
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v8

    mul-float v53, v53, v8

    add-float v52, v52, v53

    goto :goto_b4b

    :cond_b48
    move v6, v8

    move/from16 v7, v55

    :goto_b4b
    sub-float v11, v15, v21

    sub-float v10, v41, v21

    sub-float v16, v17, v21

    sub-float v12, v48, v21

    mul-float v4, v11, v11

    sub-float v4, v19, v4

    mul-float v39, v10, v10

    sub-float v8, v4, v39

    mul-float v41, v16, v16

    sub-float v8, v8, v41

    mul-float v48, v12, v12

    sub-float v8, v8, v48

    cmpl-float v9, v8, v22

    if-lez v9, :cond_b81

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    move v15, v10

    add-int/lit8 v10, v5, 0x1

    move v14, v11

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v9, p0

    move/from16 v17, v12

    move v12, v7

    .line 1559
    invoke-virtual/range {v9 .. v17}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v55, v12

    move v11, v14

    move/from16 v12, v17

    mul-float/2addr v8, v7

    add-float v52, v52, v8

    goto :goto_b84

    :cond_b81
    move/from16 v55, v7

    move v15, v10

    :goto_b84
    sub-float v10, v47, v21

    sub-float v42, v42, v21

    mul-float v17, v10, v10

    sub-float v4, v4, v17

    mul-float v47, v42, v42

    sub-float v7, v4, v47

    sub-float v7, v7, v48

    cmpl-float v8, v7, v22

    if-lez v8, :cond_bb4

    mul-float/2addr v7, v7

    mul-float v49, v7, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v55, 0x1

    move v8, v6

    move v14, v12

    move-object/from16 v6, p0

    move v12, v10

    move v10, v13

    move/from16 v13, v42

    .line 1570
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v53, v10

    move/from16 v50, v13

    move/from16 v42, v14

    mul-float v49, v49, v7

    add-float v52, v52, v49

    goto :goto_bbc

    :cond_bb4
    move v8, v6

    move/from16 v53, v13

    move/from16 v50, v42

    move/from16 v42, v12

    move v12, v10

    :goto_bbc
    sub-float v14, v18, v21

    sub-float v4, v4, v41

    mul-float v18, v14, v14

    sub-float v4, v4, v18

    cmpl-float v6, v4, v22

    if-lez v6, :cond_be0

    mul-float/2addr v4, v4

    mul-float/2addr v4, v4

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v10, v53, 0x1

    move-object/from16 v6, p0

    move/from16 v13, v16

    move/from16 v9, v55

    .line 1581
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v49, v14

    move v13, v8

    move v14, v12

    mul-float/2addr v4, v7

    add-float v52, v52, v4

    goto :goto_be4

    :cond_be0
    move v13, v8

    move/from16 v49, v14

    move v14, v12

    :goto_be4
    sub-float v9, v40, v21

    mul-float v4, v9, v9

    sub-float v21, v19, v4

    sub-float v39, v21, v39

    sub-float v4, v39, v47

    sub-float v4, v4, v48

    cmpl-float v6, v4, v22

    if-lez v6, :cond_c0c

    mul-float/2addr v4, v4

    mul-float v40, v4, v4

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v7, v55, 0x1

    move-object/from16 v4, p0

    move v10, v15

    move/from16 v12, v42

    move/from16 v11, v50

    move/from16 v8, v53

    .line 1592
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    mul-float v40, v40, v6

    add-float v52, v52, v40

    :cond_c0c
    sub-float v39, v39, v41

    sub-float v39, v39, v18

    cmpl-float v4, v39, v22

    if-lez v4, :cond_c2e

    mul-float v39, v39, v39

    mul-float v39, v39, v39

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v49

    move/from16 v7, v55

    .line 1603
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    mul-float v39, v39, v6

    add-float v52, v52, v39

    goto :goto_c32

    :cond_c2e
    move/from16 v12, v49

    move/from16 v7, v55

    :goto_c32
    sub-float v21, v21, v17

    sub-float v21, v21, v47

    sub-float v21, v21, v18

    cmpl-float v4, v21, v22

    if-lez v4, :cond_c51

    mul-float v21, v21, v21

    mul-float v21, v21, v21

    add-int/2addr v7, v0

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    move v6, v13

    move v10, v14

    move/from16 v11, v50

    .line 1614
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v0

    mul-float v21, v21, v0

    add-float v52, v52, v21

    :cond_c51
    move/from16 v5, v30

    move/from16 v30, v23

    move/from16 v23, v33

    move/from16 v33, v5

    move v7, v1

    move v6, v2

    move v5, v3

    move/from16 v3, v20

    move/from16 v15, v24

    move/from16 v9, v25

    move/from16 v25, v26

    move/from16 v21, v27

    move/from16 v20, v32

    move/from16 v24, v34

    move/from16 v12, v35

    move/from16 v10, v36

    move/from16 v11, v38

    move/from16 v32, v43

    move/from16 v8, v44

    move/from16 v35, v45

    move/from16 v38, v29

    move/from16 v36, v31

    move/from16 v29, v28

    move/from16 v28, v37

    move/from16 v37, v46

    goto/16 :goto_6b1

    :cond_c82
    move/from16 v20, v8

    move v8, v13

    move/from16 v7, v55

    const/4 v13, 0x3

    add-float v28, v3, v4

    cmpg-float v29, v6, v28

    if-gez v29, :cond_c91

    move/from16 v13, v20

    goto :goto_c93

    :cond_c91
    move/from16 v6, v28

    :goto_c93
    add-float v20, v1, v3

    add-float v28, v2, v4

    cmpg-float v29, v20, v28

    if-gez v29, :cond_c9e

    const/16 v28, 0xa

    goto :goto_ca6

    :cond_c9e
    const/16 v20, 0x5

    move/from16 v57, v28

    move/from16 v28, v20

    move/from16 v20, v57

    :goto_ca6
    add-float v29, v1, v4

    add-float v30, v2, v3

    cmpg-float v31, v29, v30

    if-gez v31, :cond_ccc

    cmpg-float v26, v6, v20

    if-gtz v26, :cond_cb9

    cmpg-float v26, v29, v20

    if-gez v26, :cond_cb9

    move/from16 v20, v29

    goto :goto_cc9

    :cond_cb9
    cmpl-float v26, v6, v20

    if-lez v26, :cond_cc7

    cmpg-float v26, v29, v6

    if-gez v26, :cond_cc7

    move v13, v11

    move/from16 v11, v28

    move/from16 v6, v29

    goto :goto_cc9

    :cond_cc7
    move/from16 v11, v28

    :goto_cc9
    move/from16 v26, v11

    goto :goto_ce8

    :cond_ccc
    cmpg-float v11, v6, v20

    if-gtz v11, :cond_cd7

    cmpg-float v11, v30, v20

    if-gez v11, :cond_cd7

    move/from16 v20, v30

    goto :goto_ce8

    :cond_cd7
    cmpl-float v11, v6, v20

    if-lez v11, :cond_ce6

    cmpg-float v11, v30, v6

    if-gez v11, :cond_ce6

    move/from16 v13, v26

    move/from16 v26, v28

    move/from16 v6, v30

    goto :goto_ce8

    :cond_ce6
    move/from16 v26, v28

    :goto_ce8
    sub-float/2addr v9, v10

    add-float/2addr v1, v9

    cmpg-float v10, v6, v20

    if-gtz v10, :cond_cf8

    cmpg-float v10, v1, v20

    if-gez v10, :cond_cf8

    move/from16 v20, v1

    move/from16 v10, v27

    move v1, v0

    goto :goto_d0c

    :cond_cf8
    cmpl-float v10, v6, v20

    if-lez v10, :cond_d08

    cmpg-float v10, v1, v6

    if-gez v10, :cond_d08

    move v10, v0

    move v6, v1

    move v13, v14

    move/from16 v14, v26

    move/from16 v1, v27

    goto :goto_d0c

    :cond_d08
    move v1, v0

    move v10, v1

    move/from16 v14, v26

    :goto_d0c
    add-float/2addr v2, v9

    cmpg-float v11, v6, v20

    if-gtz v11, :cond_d1a

    cmpg-float v11, v2, v20

    if-gez v11, :cond_d1a

    move/from16 v20, v2

    move/from16 v10, v27

    goto :goto_d29

    :cond_d1a
    cmpl-float v11, v6, v20

    if-lez v11, :cond_d28

    cmpg-float v11, v2, v6

    if-gez v11, :cond_d28

    move v6, v2

    move v13, v12

    move v12, v14

    move/from16 v1, v27

    goto :goto_d29

    :cond_d28
    move v12, v14

    :goto_d29
    add-float/2addr v3, v9

    cmpg-float v2, v6, v20

    if-gtz v2, :cond_d37

    cmpg-float v2, v3, v20

    if-gez v2, :cond_d37

    move/from16 v20, v3

    move/from16 v10, v27

    goto :goto_d46

    :cond_d37
    cmpl-float v2, v6, v20

    if-lez v2, :cond_d44

    cmpg-float v2, v3, v6

    if-gez v2, :cond_d44

    move v6, v3

    move/from16 v13, v23

    move/from16 v1, v27

    :cond_d44
    move/from16 v23, v12

    :goto_d46
    add-float/2addr v9, v4

    cmpg-float v2, v6, v20

    if-gtz v2, :cond_d52

    cmpg-float v2, v9, v20

    if-gez v2, :cond_d52

    move/from16 v10, v27

    goto :goto_d62

    :cond_d52
    cmpl-float v2, v6, v20

    if-lez v2, :cond_d60

    cmpg-float v2, v9, v6

    if-gez v2, :cond_d60

    move v13, v15

    move/from16 v15, v23

    move/from16 v1, v27

    goto :goto_d62

    :cond_d60
    move/from16 v15, v23

    :goto_d62
    if-ne v1, v10, :cond_f18

    if-eqz v1, :cond_e51

    and-int v1, v13, v15

    int-to-byte v1, v1

    or-int v2, v13, v15

    int-to-byte v2, v2

    sub-float v9, v40, v16

    sub-float v11, v41, v16

    sub-float v12, v42, v16

    sub-float v4, v39, v16

    sub-float v3, v40, v21

    sub-float v6, v41, v21

    sub-float v10, v42, v21

    sub-float v13, v39, v21

    and-int/lit8 v14, v1, 0x1

    if-eqz v14, :cond_d9a

    add-int/lit8 v1, v5, 0x1

    sub-float v9, v9, v18

    add-int/lit8 v14, v5, 0x2

    sub-float v3, v3, v19

    move v15, v10

    move/from16 v16, v11

    move/from16 v20, v12

    move/from16 v23, v13

    move/from16 v24, v53

    move/from16 v26, v24

    :goto_d93
    move v10, v7

    move v11, v8

    move v12, v11

    :goto_d96
    move v13, v9

    move v9, v10

    goto/16 :goto_dec

    :cond_d9a
    and-int/lit8 v14, v1, 0x2

    if-eqz v14, :cond_db7

    add-int/lit8 v1, v8, 0x1

    sub-float v11, v11, v18

    add-int/lit8 v14, v8, 0x2

    sub-float v6, v6, v19

    move v15, v10

    move/from16 v16, v11

    move/from16 v20, v12

    move/from16 v23, v13

    move v12, v14

    move/from16 v24, v53

    move/from16 v26, v24

    move v11, v1

    move v1, v5

    move v14, v1

    move v10, v7

    goto :goto_d96

    :cond_db7
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_dd6

    add-int/lit8 v1, v7, 0x1

    sub-float v12, v12, v18

    add-int/lit8 v14, v7, 0x2

    sub-float v10, v10, v19

    move v15, v10

    move/from16 v16, v11

    move/from16 v20, v12

    move/from16 v23, v13

    move v10, v14

    move/from16 v24, v53

    move/from16 v26, v24

    move v14, v5

    move v11, v8

    move v12, v11

    move v13, v9

    move v9, v1

    move v1, v14

    goto :goto_dec

    :cond_dd6
    add-int/lit8 v1, v53, 0x1

    sub-float v4, v4, v18

    add-int/lit8 v14, v53, 0x2

    sub-float v13, v13, v19

    move/from16 v24, v1

    move v1, v5

    move v15, v10

    move/from16 v16, v11

    move/from16 v20, v12

    move/from16 v23, v13

    move/from16 v26, v14

    move v14, v1

    goto :goto_d93

    :goto_dec
    add-int/lit8 v27, v5, 0x1

    add-int/lit8 v28, v8, 0x1

    add-int/lit8 v29, v7, 0x1

    add-int/lit8 v30, v53, 0x1

    sub-float v31, v40, v18

    sub-float v31, v31, v21

    sub-float v32, v41, v18

    sub-float v32, v32, v21

    sub-float v33, v42, v18

    sub-float v33, v33, v21

    sub-float v34, v39, v18

    sub-float v34, v34, v21

    and-int/lit8 v35, v2, 0x1

    if-nez v35, :cond_e0d

    add-int/lit8 v27, v5, -0x1

    add-float v31, v31, v19

    goto :goto_e23

    :cond_e0d
    and-int/lit8 v35, v2, 0x2

    if-nez v35, :cond_e16

    add-int/lit8 v28, v8, -0x1

    add-float v32, v32, v19

    goto :goto_e23

    :cond_e16
    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_e1f

    add-int/lit8 v29, v7, -0x1

    add-float v33, v33, v19

    goto :goto_e23

    :cond_e1f
    add-int/lit8 v30, v53, -0x1

    add-float v34, v34, v19

    :goto_e23
    move v2, v1

    move v1, v11

    move/from16 v37, v15

    move/from16 v36, v20

    move/from16 v46, v23

    move/from16 v43, v24

    move/from16 v44, v26

    move/from16 v35, v29

    move/from16 v45, v30

    move/from16 v38, v33

    move/from16 v47, v34

    move/from16 v23, v3

    move/from16 v30, v4

    move/from16 v33, v6

    move/from16 v26, v10

    move/from16 v24, v13

    move/from16 v20, v14

    move/from16 v3, v27

    move/from16 v29, v28

    move/from16 v34, v32

    move/from16 v28, v9

    move/from16 v27, v12

    move/from16 v32, v16

    goto/16 :goto_106d

    :cond_e51
    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v2, v8, 0x1

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v4, v53, 0x1

    sub-float v9, v40, v18

    sub-float v6, v9, v24

    sub-float v11, v41, v18

    sub-float v10, v11, v24

    sub-float v12, v42, v18

    sub-float v14, v12, v24

    sub-float v16, v39, v18

    sub-float v17, v16, v24

    and-int/2addr v13, v15

    int-to-byte v13, v13

    and-int/lit8 v15, v13, 0x1

    if-eqz v15, :cond_e7d

    add-int/lit8 v20, v5, 0x2

    sub-float v23, v40, v19

    sub-float v23, v23, v25

    sub-float v9, v9, v25

    move/from16 v24, v23

    move/from16 v23, v9

    move v9, v1

    goto :goto_e84

    :cond_e7d
    sub-float v23, v40, v25

    move v9, v5

    move/from16 v20, v9

    move/from16 v24, v23

    :goto_e84
    and-int/lit8 v26, v13, 0x2

    if-eqz v26, :cond_e9f

    sub-float v11, v11, v25

    if-nez v15, :cond_e94

    add-int/lit8 v15, v8, 0x2

    sub-float v26, v11, v18

    move/from16 v27, v11

    move v11, v2

    goto :goto_ea7

    :cond_e94
    add-int/lit8 v15, v8, 0x2

    sub-float v26, v11, v18

    move/from16 v27, v26

    move/from16 v26, v11

    move v11, v15

    move v15, v2

    goto :goto_ea7

    :cond_e9f
    sub-float v11, v41, v25

    move v15, v8

    move/from16 v26, v11

    move/from16 v27, v26

    move v11, v15

    :goto_ea7
    and-int/lit8 v28, v13, 0x4

    if-eqz v28, :cond_ec6

    sub-float v12, v12, v25

    and-int/lit8 v28, v13, 0x3

    if-nez v28, :cond_eb9

    add-int/lit8 v28, v7, 0x2

    sub-float v29, v12, v18

    move/from16 v30, v12

    move v12, v3

    goto :goto_ed0

    :cond_eb9
    add-int/lit8 v28, v7, 0x2

    sub-float v29, v12, v18

    move/from16 v30, v29

    move/from16 v29, v12

    move/from16 v12, v28

    move/from16 v28, v3

    goto :goto_ed0

    :cond_ec6
    sub-float v12, v42, v25

    move/from16 v28, v7

    move/from16 v29, v12

    move/from16 v30, v29

    move/from16 v12, v28

    :goto_ed0
    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_ee4

    add-int/lit8 v13, v53, 0x2

    sub-float v16, v16, v25

    sub-float v31, v39, v19

    sub-float v31, v31, v25

    move/from16 v32, v31

    move/from16 v31, v16

    move/from16 v16, v13

    move v13, v4

    goto :goto_eee

    :cond_ee4
    sub-float v16, v39, v25

    move/from16 v31, v16

    move/from16 v32, v31

    move/from16 v13, v53

    move/from16 v16, v13

    :goto_eee
    move/from16 v35, v3

    move/from16 v45, v4

    move/from16 v34, v10

    move/from16 v43, v13

    move/from16 v38, v14

    move/from16 v44, v16

    move/from16 v47, v17

    move/from16 v33, v27

    move/from16 v36, v29

    move/from16 v37, v30

    move/from16 v30, v31

    move/from16 v46, v32

    move v3, v1

    move/from16 v29, v2

    move/from16 v31, v6

    move/from16 v27, v11

    move v1, v15

    move/from16 v2, v20

    move/from16 v32, v26

    move/from16 v20, v9

    move/from16 v26, v12

    goto/16 :goto_106d

    :cond_f18
    if-eqz v1, :cond_f1f

    move/from16 v57, v15

    move v15, v13

    move/from16 v13, v57

    :cond_f1f
    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_f30

    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v3, v5, 0x1

    sub-float v9, v40, v19

    sub-float v9, v9, v25

    sub-float v4, v40, v18

    sub-float v4, v4, v25

    goto :goto_f35

    :cond_f30
    sub-float v9, v40, v25

    move v2, v5

    move v3, v2

    move v4, v9

    :goto_f35
    and-int/lit8 v6, v15, 0x2

    if-eqz v6, :cond_f55

    add-int/lit8 v6, v8, 0x1

    sub-float v11, v41, v18

    sub-float v11, v11, v25

    if-nez v1, :cond_f4b

    add-int/lit8 v1, v8, 0x2

    sub-float v10, v11, v18

    move/from16 v57, v11

    move v11, v10

    move/from16 v10, v57

    goto :goto_f5a

    :cond_f4b
    add-int/lit8 v1, v8, 0x2

    sub-float v10, v11, v18

    move/from16 v57, v6

    move v6, v1

    move/from16 v1, v57

    goto :goto_f5a

    :cond_f55
    sub-float v11, v41, v25

    move v1, v8

    move v6, v1

    move v10, v11

    :goto_f5a
    and-int/lit8 v12, v15, 0x4

    if-eqz v12, :cond_f7e

    add-int/lit8 v12, v7, 0x1

    sub-float v14, v42, v18

    sub-float v14, v14, v25

    and-int/lit8 v16, v15, 0x3

    if-nez v16, :cond_f79

    add-int/lit8 v16, v7, 0x2

    sub-float v20, v14, v18

    move/from16 v57, v16

    move/from16 v16, v12

    move/from16 v12, v57

    move/from16 v57, v20

    move/from16 v20, v14

    move/from16 v14, v57

    goto :goto_f85

    :cond_f79
    add-int/lit8 v16, v7, 0x2

    sub-float v20, v14, v18

    goto :goto_f85

    :cond_f7e
    sub-float v14, v42, v25

    move v12, v7

    move/from16 v16, v12

    move/from16 v20, v14

    :goto_f85
    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_f96

    add-int/lit8 v15, v53, 0x1

    add-int/lit8 v23, v53, 0x2

    sub-float v24, v39, v18

    sub-float v24, v24, v25

    sub-float v26, v39, v19

    sub-float v26, v26, v25

    goto :goto_f9e

    :cond_f96
    sub-float v24, v39, v25

    move/from16 v26, v24

    move/from16 v15, v53

    move/from16 v23, v15

    :goto_f9e
    add-int/lit8 v27, v5, 0x1

    add-int/lit8 v28, v8, 0x1

    add-int/lit8 v29, v7, 0x1

    add-int/lit8 v30, v53, 0x1

    sub-float v31, v40, v18

    sub-float v31, v31, v21

    sub-float v32, v41, v18

    sub-float v32, v32, v21

    sub-float v33, v42, v18

    sub-float v33, v33, v21

    sub-float v34, v39, v18

    sub-float v34, v34, v21

    and-int/lit8 v35, v13, 0x1

    if-nez v35, :cond_fe9

    add-int/lit8 v13, v5, -0x1

    add-float v31, v31, v19

    move/from16 v27, v6

    move/from16 v36, v14

    move/from16 v43, v15

    move/from16 v37, v20

    move/from16 v44, v23

    move/from16 v46, v26

    move/from16 v35, v29

    move/from16 v45, v30

    move/from16 v38, v33

    move/from16 v47, v34

    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v33, v10

    move v3, v13

    move/from16 v26, v16

    move/from16 v30, v24

    move/from16 v29, v28

    move/from16 v34, v32

    move/from16 v24, v9

    :goto_fe3
    move/from16 v32, v11

    move/from16 v28, v12

    goto/16 :goto_106d

    :cond_fe9
    and-int/lit8 v35, v13, 0x2

    if-nez v35, :cond_101c

    add-int/lit8 v13, v8, -0x1

    add-float v32, v32, v19

    move/from16 v28, v12

    move/from16 v36, v14

    move/from16 v43, v15

    move/from16 v37, v20

    move/from16 v44, v23

    move/from16 v46, v26

    move/from16 v35, v29

    move/from16 v45, v30

    move/from16 v38, v33

    move/from16 v47, v34

    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v33, v10

    move/from16 v29, v13

    :goto_100d
    move/from16 v26, v16

    move/from16 v30, v24

    move/from16 v3, v27

    move/from16 v34, v32

    move/from16 v27, v6

    move/from16 v24, v9

    move/from16 v32, v11

    goto :goto_106d

    :cond_101c
    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_1041

    add-int/lit8 v13, v7, -0x1

    add-float v33, v33, v19

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v43, v15

    move/from16 v37, v20

    move/from16 v44, v23

    move/from16 v46, v26

    move/from16 v29, v28

    move/from16 v45, v30

    move/from16 v38, v33

    move/from16 v47, v34

    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v33, v10

    move/from16 v28, v12

    goto :goto_100d

    :cond_1041
    add-int/lit8 v13, v53, -0x1

    add-float v34, v34, v19

    move/from16 v45, v13

    move/from16 v36, v14

    move/from16 v43, v15

    move/from16 v37, v20

    move/from16 v44, v23

    move/from16 v30, v24

    move/from16 v46, v26

    move/from16 v35, v29

    move/from16 v38, v33

    move/from16 v47, v34

    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v24, v9

    move/from16 v33, v10

    move/from16 v26, v16

    move/from16 v3, v27

    move/from16 v29, v28

    move/from16 v34, v32

    move/from16 v27, v6

    goto/16 :goto_fe3

    :goto_106d
    sub-float v48, v40, v18

    sub-float v14, v48, v25

    sub-float v49, v41, v18

    sub-float v15, v49, v25

    sub-float v50, v42, v18

    sub-float v11, v50, v25

    sub-float v17, v39, v25

    mul-float v4, v14, v14

    sub-float v4, v19, v4

    mul-float v51, v15, v15

    sub-float v6, v4, v51

    mul-float v52, v11, v11

    sub-float v9, v6, v52

    mul-float v10, v17, v17

    sub-float/2addr v9, v10

    cmpl-float v10, v9, v22

    if-lez v10, :cond_10a9

    mul-float/2addr v9, v9

    mul-float v54, v9, v9

    add-int/lit8 v10, v5, 0x1

    move v13, v11

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v12, v7, 0x1

    move-object/from16 v9, p0

    move/from16 v16, v13

    move/from16 v13, v53

    .line 1934
    invoke-virtual/range {v9 .. v17}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v10

    move/from16 v55, v16

    mul-float v54, v54, v10

    add-float v54, v22, v54

    goto :goto_10ad

    :cond_10a9
    move/from16 v55, v11

    move/from16 v54, v22

    :goto_10ad
    sub-float v16, v42, v25

    sub-float v18, v39, v18

    sub-float v12, v18, v25

    mul-float v9, v16, v16

    sub-float/2addr v6, v9

    mul-float v56, v12, v12

    sub-float v6, v6, v56

    cmpl-float v9, v6, v22

    if-lez v9, :cond_10d8

    mul-float/2addr v6, v6

    mul-float/2addr v6, v6

    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v13, v53, 0x1

    move-object/from16 v9, p0

    move/from16 v17, v12

    move v12, v7

    .line 1945
    invoke-virtual/range {v9 .. v17}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v16, v15

    move v15, v12

    move/from16 v12, v17

    mul-float/2addr v6, v7

    add-float v54, v54, v6

    goto :goto_10db

    :cond_10d8
    move/from16 v16, v15

    move v15, v7

    :goto_10db
    sub-float v11, v41, v25

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    sub-float v4, v4, v52

    sub-float v4, v4, v56

    cmpl-float v6, v4, v22

    if-lez v6, :cond_1103

    mul-float/2addr v4, v4

    mul-float/2addr v4, v4

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v15, 0x1

    add-int/lit8 v10, v53, 0x1

    move v6, v12

    move v12, v11

    move v11, v14

    move v14, v6

    move-object/from16 v6, p0

    move/from16 v13, v55

    .line 1956
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v55, v8

    move v12, v14

    mul-float/2addr v4, v7

    add-float v54, v54, v4

    goto :goto_1107

    :cond_1103
    move/from16 v13, v55

    move/from16 v55, v8

    :goto_1107
    sub-float v9, v40, v25

    mul-float v4, v9, v9

    sub-float v4, v19, v4

    sub-float v4, v4, v51

    sub-float v4, v4, v52

    sub-float v4, v4, v56

    cmpl-float v6, v4, v22

    if-lez v6, :cond_112c

    mul-float/2addr v4, v4

    mul-float v14, v4, v4

    add-int/lit8 v6, v55, 0x1

    add-int/lit8 v7, v15, 0x1

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    move v11, v13

    move/from16 v10, v16

    .line 1967
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    mul-float/2addr v14, v6

    add-float v54, v54, v14

    :cond_112c
    sub-float v11, v48, v21

    sub-float v10, v49, v21

    sub-float v12, v42, v22

    sub-float v13, v12, v21

    sub-float v4, v39, v22

    sub-float v12, v4, v21

    mul-float v4, v11, v11

    sub-float v4, v19, v4

    mul-float v25, v10, v10

    sub-float v6, v4, v25

    mul-float v39, v13, v13

    sub-float v6, v6, v39

    mul-float v42, v12, v12

    sub-float v6, v6, v42

    cmpl-float v7, v6, v22

    if-lez v7, :cond_116e

    mul-float/2addr v6, v6

    mul-float/2addr v6, v6

    move/from16 v49, v10

    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v8, v55, 0x1

    move-object/from16 v9, p0

    move v14, v11

    move/from16 v17, v12

    move/from16 v16, v13

    move v12, v15

    move/from16 v15, v49

    move/from16 v13, v53

    move v11, v8

    .line 1978
    invoke-virtual/range {v9 .. v17}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move v8, v13

    move v11, v14

    move v15, v12

    move/from16 v12, v17

    mul-float/2addr v6, v7

    add-float v54, v54, v6

    goto :goto_1174

    :cond_116e
    move/from16 v49, v10

    move/from16 v16, v13

    move/from16 v8, v53

    :goto_1174
    sub-float v6, v41, v22

    sub-float v10, v6, v21

    sub-float v13, v50, v21

    mul-float v17, v10, v10

    sub-float v4, v4, v17

    mul-float v41, v13, v13

    sub-float v6, v4, v41

    sub-float v6, v6, v42

    cmpl-float v7, v6, v22

    if-lez v7, :cond_11a5

    mul-float/2addr v6, v6

    mul-float v48, v6, v6

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v6, p0

    move v14, v12

    move v12, v10

    move v10, v8

    move/from16 v8, v55

    .line 1989
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v53, v10

    move/from16 v51, v13

    move/from16 v50, v14

    mul-float v48, v48, v7

    add-float v54, v54, v48

    goto :goto_11ae

    :cond_11a5
    move/from16 v53, v8

    move/from16 v50, v12

    move/from16 v51, v13

    move/from16 v8, v55

    move v12, v10

    :goto_11ae
    sub-float v14, v18, v21

    sub-float v4, v4, v39

    mul-float v18, v14, v14

    sub-float v4, v4, v18

    cmpl-float v6, v4, v22

    if-lez v6, :cond_11d2

    mul-float/2addr v4, v4

    mul-float/2addr v4, v4

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v10, v53, 0x1

    move-object/from16 v6, p0

    move v9, v15

    move/from16 v13, v16

    .line 2000
    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v7

    move/from16 v55, v9

    move v15, v14

    move v13, v8

    move v14, v12

    mul-float/2addr v4, v7

    add-float v54, v54, v4

    goto :goto_11d7

    :cond_11d2
    move v13, v8

    move/from16 v55, v15

    move v15, v14

    move v14, v12

    :goto_11d7
    sub-float v9, v40, v22

    sub-float v9, v9, v21

    mul-float v4, v9, v9

    sub-float v21, v19, v4

    sub-float v25, v21, v25

    sub-float v4, v25, v41

    sub-float v4, v4, v42

    cmpl-float v6, v4, v22

    if-lez v6, :cond_1202

    mul-float/2addr v4, v4

    mul-float v40, v4, v4

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v7, v55, 0x1

    move-object/from16 v4, p0

    move/from16 v10, v49

    move/from16 v12, v50

    move/from16 v11, v51

    move/from16 v8, v53

    .line 2011
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    mul-float v40, v40, v6

    add-float v54, v54, v40

    :cond_1202
    sub-float v25, v25, v39

    sub-float v25, v25, v18

    cmpl-float v4, v25, v22

    if-lez v4, :cond_1224

    mul-float v25, v25, v25

    mul-float v25, v25, v25

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    move v12, v15

    move/from16 v11, v16

    move/from16 v10, v49

    move/from16 v7, v55

    .line 2022
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v6

    mul-float v25, v25, v6

    add-float v54, v54, v25

    goto :goto_1227

    :cond_1224
    move v12, v15

    move/from16 v7, v55

    :goto_1227
    sub-float v21, v21, v17

    sub-float v21, v21, v41

    sub-float v21, v21, v18

    cmpl-float v4, v21, v22

    if-lez v4, :cond_1275

    mul-float v21, v21, v21

    mul-float v21, v21, v21

    add-int/2addr v7, v0

    add-int/lit8 v8, v53, 0x1

    move-object/from16 v4, p0

    move v6, v13

    move v10, v14

    move/from16 v11, v51

    .line 2033
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v0

    mul-float v21, v21, v0

    add-float v0, v54, v21

    move v6, v1

    move v5, v2

    move/from16 v15, v20

    move/from16 v20, v23

    move/from16 v9, v24

    move/from16 v23, v26

    move/from16 v24, v27

    move/from16 v7, v28

    move/from16 v25, v29

    move/from16 v12, v30

    move/from16 v21, v31

    move/from16 v10, v32

    move/from16 v28, v33

    move/from16 v29, v34

    move/from16 v30, v35

    move/from16 v11, v36

    move/from16 v32, v37

    move/from16 v33, v38

    move/from16 v8, v43

    move/from16 v35, v44

    move/from16 v36, v45

    move/from16 v37, v46

    move/from16 v38, v47

    move/from16 v46, v0

    goto :goto_12a3

    :cond_1275
    move v6, v1

    move v5, v2

    move/from16 v15, v20

    move/from16 v20, v23

    move/from16 v9, v24

    move/from16 v23, v26

    move/from16 v24, v27

    move/from16 v7, v28

    move/from16 v25, v29

    move/from16 v12, v30

    move/from16 v21, v31

    move/from16 v10, v32

    move/from16 v28, v33

    move/from16 v29, v34

    move/from16 v30, v35

    move/from16 v11, v36

    move/from16 v32, v37

    move/from16 v33, v38

    move/from16 v8, v43

    move/from16 v35, v44

    move/from16 v36, v45

    move/from16 v37, v46

    move/from16 v38, v47

    move/from16 v46, v54

    :goto_12a3
    mul-float v0, v9, v9

    sub-float v0, v19, v0

    mul-float v1, v10, v10

    sub-float/2addr v0, v1

    mul-float v1, v11, v11

    sub-float/2addr v0, v1

    mul-float v1, v12, v12

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v22

    if-lez v1, :cond_12bf

    mul-float/2addr v0, v0

    mul-float/2addr v0, v0

    move-object/from16 v4, p0

    .line 2042
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v46, v46, v0

    :cond_12bf
    mul-float v0, v20, v20

    sub-float v0, v19, v0

    mul-float v1, v28, v28

    sub-float/2addr v0, v1

    mul-float v1, v32, v32

    sub-float/2addr v0, v1

    mul-float v1, v37, v37

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v22

    if-lez v1, :cond_12ea

    mul-float/2addr v0, v0

    mul-float/2addr v0, v0

    move-object/from16 v4, p0

    move v5, v15

    move/from16 v9, v20

    move/from16 v7, v23

    move/from16 v6, v24

    move/from16 v10, v28

    move/from16 v11, v32

    move/from16 v8, v35

    move/from16 v12, v37

    .line 2050
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v46, v46, v0

    :cond_12ea
    mul-float v0, v21, v21

    sub-float v19, v19, v0

    mul-float v0, v29, v29

    sub-float v19, v19, v0

    mul-float v0, v33, v33

    sub-float v19, v19, v0

    mul-float v0, v38, v38

    sub-float v19, v19, v0

    cmpl-float v0, v19, v22

    if-lez v0, :cond_131b

    mul-float v19, v19, v19

    mul-float v19, v19, v19

    move-object/from16 v4, p0

    move v5, v3

    move/from16 v9, v21

    move/from16 v6, v25

    move/from16 v10, v29

    move/from16 v7, v30

    move/from16 v11, v33

    move/from16 v8, v36

    move/from16 v12, v38

    .line 2058
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->extrapolate(IIIIFFFF)F

    move-result v0

    mul-float v19, v19, v0

    add-float v46, v46, v19

    :cond_131b
    const/high16 v0, 0x41f00000    # 30.0f

    div-float v46, v46, v0

    return v46
.end method

.method public final extrapolate(IIFF)F
    .registers 6

    .line 2066
    iget-object v0, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->perm:[S

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    add-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    and-int/lit8 p1, p1, 0xe

    .line 2067
    sget-object p2, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients2D:[B

    aget-byte v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, p2, p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    add-float/2addr v0, p1

    return v0
.end method

.method public final extrapolate(IIIFFF)F
    .registers 9

    .line 2073
    iget-object v0, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->permGradIndex3D:[S

    iget-object v1, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->perm:[S

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v1, p1

    add-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v1, p1

    add-int/2addr p1, p3

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    .line 2074
    sget-object p2, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients3D:[B

    aget-byte p3, p2, p1

    int-to-float p3, p3

    mul-float/2addr p3, p4

    add-int/lit8 p4, p1, 0x1

    aget-byte p4, p2, p4

    int-to-float p4, p4

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, p2, p1

    int-to-float p1, p1

    mul-float/2addr p1, p6

    add-float/2addr p3, p1

    return p3
.end method

.method public final extrapolate(IIIIFFFF)F
    .registers 10

    .line 2081
    iget-object v0, p0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->perm:[S

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    add-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    add-int/2addr p1, p3

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    add-int/2addr p1, p4

    and-int/lit16 p1, p1, 0xff

    aget-short p1, v0, p1

    and-int/lit16 p1, p1, 0xfc

    .line 2082
    sget-object p2, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->gradients4D:[B

    aget-byte p3, p2, p1

    int-to-float p3, p3

    mul-float/2addr p3, p5

    add-int/lit8 p4, p1, 0x1

    aget-byte p4, p2, p4

    int-to-float p4, p4

    mul-float/2addr p4, p6

    add-float/2addr p3, p4

    add-int/lit8 p4, p1, 0x2

    aget-byte p4, p2, p4

    int-to-float p4, p4

    mul-float/2addr p4, p7

    add-float/2addr p3, p4

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, p2, p1

    int-to-float p1, p1

    mul-float/2addr p1, p8

    add-float/2addr p3, p1

    return p3
.end method
