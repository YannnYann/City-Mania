###### Class androidx.core.content.res.ViewingConditions (androidx.core.content.res.ViewingConditions)
.class public final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field public final mAw:F

.field public final mC:F

.field public final mFl:F

.field public final mFlRoot:F

.field public final mN:F

.field public final mNbb:F

.field public final mNc:F

.field public final mNcb:F

.field public final mRgbD:[F

.field public final mZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 53
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    const/high16 v1, 0x42480000    # 50.0f

    .line 56
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 54
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    move-result-object v0

    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .registers 11

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 113
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 114
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 115
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 116
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 117
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 118
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 119
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 120
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 121
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    return-void
.end method

.method public static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .registers 28

    move/from16 v0, p1

    const/4 v1, 0x3

    .line 128
    sget-object v2, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    const/4 v3, 0x0

    .line 130
    aget v4, p0, v3

    aget-object v5, v2, v3

    aget v6, v5, v3

    mul-float/2addr v6, v4

    const/4 v7, 0x1

    aget v8, p0, v7

    aget v9, v5, v7

    mul-float/2addr v9, v8

    add-float/2addr v6, v9

    const/4 v9, 0x2

    aget v10, p0, v9

    aget v5, v5, v9

    mul-float/2addr v5, v10

    add-float/2addr v6, v5

    .line 131
    aget-object v5, v2, v7

    aget v11, v5, v3

    mul-float/2addr v11, v4

    aget v12, v5, v7

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    aget v5, v5, v9

    mul-float/2addr v5, v10

    add-float/2addr v11, v5

    .line 132
    aget-object v2, v2, v9

    aget v5, v2, v3

    mul-float/2addr v4, v5

    aget v5, v2, v7

    mul-float/2addr v8, v5

    add-float/2addr v4, v8

    aget v2, v2, v9

    mul-float/2addr v10, v2

    add-float/2addr v4, v10

    const/high16 v2, 0x41200000    # 10.0f

    div-float v5, p3, v2

    const v8, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v8

    float-to-double v12, v5

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpl-double v10, v12, v14

    const v12, 0x3f170a3d    # 0.59f

    if-ltz v10, :cond_5a

    const v8, 0x3f666666    # 0.9f

    sub-float v8, v5, v8

    mul-float/2addr v8, v2

    const v2, 0x3f30a3d7    # 0.69f

    .line 137
    invoke-static {v12, v2, v8}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    move-result v2

    :goto_57
    move/from16 v17, v2

    goto :goto_65

    :cond_5a
    sub-float v8, v5, v8

    mul-float/2addr v8, v2

    const v2, 0x3f066666    # 0.525f

    invoke-static {v2, v12, v8}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    move-result v2

    goto :goto_57

    :goto_65
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_6b

    move v8, v2

    goto :goto_7f

    :cond_6b
    neg-float v8, v0

    const/high16 v10, 0x42280000    # 42.0f

    sub-float/2addr v8, v10

    const/high16 v10, 0x42b80000    # 92.0f

    div-float/2addr v8, v10

    float-to-double v12, v8

    .line 140
    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v8, v12

    const v10, 0x3e8e38e4

    mul-float/2addr v8, v10

    sub-float v8, v2, v8

    mul-float/2addr v8, v5

    :goto_7f
    float-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v12, v14

    if-lez v10, :cond_88

    move v8, v2

    goto :goto_8f

    :cond_88
    const-wide/16 v14, 0x0

    cmpg-double v10, v12, v14

    if-gez v10, :cond_8f

    const/4 v8, 0x0

    :cond_8f
    :goto_8f
    const/high16 v10, 0x42c80000    # 100.0f

    div-float v12, v10, v6

    mul-float/2addr v12, v8

    add-float/2addr v12, v2

    sub-float/2addr v12, v8

    div-float v13, v10, v11

    mul-float/2addr v13, v8

    add-float/2addr v13, v2

    sub-float/2addr v13, v8

    div-float/2addr v10, v4

    mul-float/2addr v10, v8

    add-float/2addr v10, v2

    sub-float/2addr v10, v8

    .line 157
    new-array v8, v1, [F

    aput v12, v8, v3

    aput v13, v8, v7

    aput v10, v8, v9

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v10, v0

    add-float/2addr v10, v2

    div-float v10, v2, v10

    mul-float v12, v10, v10

    mul-float/2addr v12, v10

    mul-float/2addr v12, v10

    sub-float/2addr v2, v12

    mul-float/2addr v12, v0

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v2

    mul-float/2addr v10, v2

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    move v2, v3

    move v15, v4

    float-to-double v3, v0

    mul-double/2addr v3, v13

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v10, v0

    add-float/2addr v12, v10

    .line 167
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    move-result v0

    aget v3, p0, v7

    div-float v13, v0, v3

    float-to-double v3, v13

    move v0, v7

    move-object/from16 v19, v8

    .line 171
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3fbd70a4    # 1.48f

    add-float v22, v7, v8

    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 174
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3f39999a    # 0.725f

    div-float/2addr v4, v3

    .line 179
    aget v3, v19, v2

    mul-float/2addr v3, v12

    mul-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v6, v6, v20

    move/from16 p3, v2

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aget v7, v19, v0

    mul-float/2addr v7, v12

    mul-float/2addr v7, v11

    float-to-double v7, v7

    div-double v7, v7, v20

    .line 180
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    aget v8, v19, v9

    mul-float/2addr v8, v12

    mul-float/2addr v8, v15

    float-to-double v10, v8

    div-double v10, v10, v20

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    new-array v3, v1, [F

    aput v6, v3, p3

    aput v7, v3, v0

    aput v2, v3, v9

    .line 183
    aget v2, v3, p3

    const/high16 v6, 0x43c80000    # 400.0f

    mul-float v7, v2, v6

    const v8, 0x41d90a3d    # 27.13f

    add-float/2addr v2, v8

    div-float/2addr v7, v2

    aget v2, v3, v0

    mul-float v10, v2, v6

    add-float/2addr v2, v8

    div-float/2addr v10, v2

    aget v2, v3, v9

    mul-float/2addr v6, v2

    add-float/2addr v2, v8

    div-float/2addr v6, v2

    new-array v1, v1, [F

    aput v7, v1, p3

    aput v10, v1, v0

    aput v6, v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    .line 187
    aget v3, v1, p3

    mul-float/2addr v3, v2

    aget v0, v1, v0

    add-float/2addr v3, v0

    const v0, 0x3d4ccccd    # 0.05f

    aget v1, v1, v9

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    mul-float v14, v3, v4

    .line 189
    new-instance v0, Landroidx/core/content/res/ViewingConditions;

    float-to-double v1, v12

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v16, v4

    move/from16 v21, v1

    move v15, v4

    move/from16 v18, v5

    move/from16 v20, v12

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    return-object v12
.end method


# virtual methods
.method public getAw()F
    .registers 2

    .line 71
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    return v0
.end method

.method public getC()F
    .registers 2

    .line 87
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    return v0
.end method

.method public getFl()F
    .registers 2

    .line 99
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    return v0
.end method

.method public getFlRoot()F
    .registers 2

    .line 103
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    return v0
.end method

.method public getN()F
    .registers 2

    .line 75
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    return v0
.end method

.method public getNbb()F
    .registers 2

    .line 79
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    return v0
.end method

.method public getNc()F
    .registers 2

    .line 91
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    return v0
.end method

.method public getNcb()F
    .registers 2

    .line 83
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    return v0
.end method

.method public getRgbD()[F
    .registers 2

    .line 95
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    return-object v0
.end method

.method public getZ()F
    .registers 2

    .line 107
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    return v0
.end method
