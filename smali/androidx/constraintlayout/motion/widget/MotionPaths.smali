###### Class androidx.constraintlayout.motion.widget.MotionPaths (androidx.constraintlayout.motion.widget.MotionPaths)
.class public Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static sNames:[Ljava/lang/String;


# instance fields
.field public mAnimateRelativeTo:I

.field public mAttributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public mDrawPath:I

.field public mHeight:F

.field public mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field public mMode:I

.field public mPathMotionArc:I

.field public mPathRotate:F

.field public mPosition:F

.field public mProgress:F

.field public mRelativeAngle:F

.field public mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mTempDelta:[D

.field public mTempValue:[D

.field public mTime:F

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 54
    const-string v4, "height"

    const-string v5, "pathRotate"

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 65
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 66
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 67
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 70
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    .line 559
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 560
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .registers 3

    .line 997
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method public getCenter(D[I[D[F[D[F)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 430
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 431
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 432
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 433
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 440
    :goto_11
    array-length v13, v1

    const/4 v15, 0x1

    if-ge v8, v13, :cond_3c

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 441
    aget-wide v6, p4, v8

    double-to-float v6, v6

    move/from16 v17, v13

    .line 442
    aget-wide v13, p6, v8

    double-to-float v13, v13

    .line 444
    aget v14, v1, v8

    if-eq v14, v15, :cond_37

    const/4 v7, 0x2

    if-eq v14, v7, :cond_34

    const/4 v7, 0x3

    if-eq v14, v7, :cond_31

    const/4 v7, 0x4

    if-eq v14, v7, :cond_2e

    goto :goto_39

    :cond_2e
    move v5, v6

    move v12, v13

    goto :goto_39

    :cond_31
    move v4, v6

    move v10, v13

    goto :goto_39

    :cond_34
    move v3, v6

    move v11, v13

    goto :goto_39

    :cond_37
    move v2, v6

    move v9, v13

    :goto_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_3c
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v10, v1

    add-float/2addr v10, v9

    div-float/2addr v12, v1

    add-float/2addr v12, v11

    .line 466
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v6, :cond_9f

    const/4 v7, 0x2

    .line 467
    new-array v8, v7, [F

    .line 468
    new-array v7, v7, [F

    move-wide/from16 v12, p1

    .line 469
    invoke-virtual {v6, v12, v13, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 470
    aget v6, v8, v16

    .line 471
    aget v8, v8, v15

    .line 476
    aget v10, v7, v16

    .line 477
    aget v7, v7, v15

    float-to-double v12, v6

    move/from16 p3, v1

    float-to-double v1, v2

    move-wide/from16 p1, v1

    float-to-double v0, v3

    .line 479
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, p1

    add-double/2addr v12, v2

    div-float v2, v4, p3

    float-to-double v2, v2

    sub-double/2addr v12, v2

    double-to-float v2, v12

    float-to-double v12, v8

    .line 480
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, p1

    sub-double v12, v12, v18

    div-float v3, v5, p3

    move-wide/from16 v18, v0

    float-to-double v0, v3

    sub-double/2addr v12, v0

    double-to-float v3, v12

    float-to-double v0, v10

    float-to-double v8, v9

    .line 481
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    add-double/2addr v0, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    float-to-double v10, v11

    mul-double/2addr v12, v10

    add-double/2addr v0, v12

    double-to-float v0, v0

    float-to-double v6, v7

    .line 482
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v12, v6

    move v10, v0

    goto :goto_a1

    :cond_9f
    move/from16 p3, v1

    :goto_a1
    div-float v4, v4, p3

    add-float/2addr v2, v4

    add-float v2, v2, v17

    .line 485
    aput v2, p5, v16

    div-float v5, v5, p3

    add-float/2addr v3, v5

    add-float v3, v3, v17

    .line 486
    aput v3, p5, v15

    .line 487
    aput v10, p7, v16

    .line 488
    aput v12, p7, v15

    return-void
.end method

.method public setView(FLandroid/view/View;[I[D[D[DZ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 570
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 571
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 572
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 573
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 585
    array-length v8, v2

    const/4 v9, 0x1

    if-eqz v8, :cond_28

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v8, v8

    array-length v10, v2

    sub-int/2addr v10, v9

    aget v10, v2, v10

    if-gt v8, v10, :cond_28

    .line 586
    array-length v8, v2

    sub-int/2addr v8, v9

    aget v8, v2, v8

    add-int/2addr v8, v9

    .line 587
    new-array v10, v8, [D

    iput-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 588
    new-array v8, v8, [D

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 590
    :cond_28
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    const/4 v10, 0x0

    .line 591
    :goto_30
    array-length v11, v2

    if-ge v10, v11, :cond_44

    .line 592
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v12, v2, v10

    aget-wide v13, p4, v10

    aput-wide v13, v11, v12

    .line 593
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v13, p5, v10

    aput-wide v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_44
    const/high16 v10, 0x7fc00000    # Float.NaN

    const/16 p3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 596
    :goto_4d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    const/16 v16, 0x0

    array-length v8, v2

    if-ge v11, v8, :cond_b4

    .line 597
    aget-wide v18, v2, v11

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/16 v18, 0x0

    if-eqz v2, :cond_69

    if-eqz p6, :cond_66

    aget-wide v20, p6, v11

    cmpl-double v2, v20, v18

    if-nez v2, :cond_69

    :cond_66
    move/from16 p4, v10

    goto :goto_98

    :cond_69
    if-eqz p6, :cond_6d

    .line 600
    aget-wide v18, p6, v11

    .line 601
    :cond_6d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v20, v2, v11

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_7c

    :goto_77
    move/from16 p4, v10

    move-wide/from16 v9, v18

    goto :goto_83

    .line 602
    :cond_7c
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v20, v2, v11

    add-double v18, v20, v18

    goto :goto_77

    :goto_83
    double-to-float v8, v9

    .line 603
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v2, v9, v11

    double-to-float v2, v2

    const/4 v3, 0x1

    if-eq v11, v3, :cond_ac

    const/4 v10, 0x2

    if-eq v11, v10, :cond_a7

    const/4 v3, 0x3

    if-eq v11, v3, :cond_a2

    const/4 v3, 0x4

    if-eq v11, v3, :cond_9d

    const/4 v2, 0x5

    if-eq v11, v2, :cond_9b

    :goto_98
    move/from16 v10, p4

    goto :goto_b0

    :cond_9b
    move v10, v8

    goto :goto_b0

    :cond_9d
    move/from16 v10, p4

    move v15, v2

    move v7, v8

    goto :goto_b0

    :cond_a2
    move/from16 v10, p4

    move v14, v2

    move v6, v8

    goto :goto_b0

    :cond_a7
    move/from16 v10, p4

    move v13, v2

    move v5, v8

    goto :goto_b0

    :cond_ac
    move/from16 v10, p4

    move v12, v2

    move v4, v8

    :goto_b0
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    goto :goto_4d

    :cond_b4
    move/from16 p4, v10

    .line 634
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v3, :cond_13b

    const/4 v2, 0x2

    .line 635
    new-array v9, v2, [F

    .line 636
    new-array v10, v2, [F

    move/from16 v11, p1

    float-to-double v14, v11

    .line 638
    invoke-virtual {v3, v14, v15, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 639
    aget v3, v9, v16

    const/16 v17, 0x1

    .line 640
    aget v9, v9, v17

    .line 645
    aget v11, v10, v16

    .line 646
    aget v10, v10, v17

    float-to-double v14, v3

    float-to-double v3, v4

    move-wide/from16 v18, v3

    float-to-double v2, v5

    .line 649
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    add-double/2addr v14, v4

    div-float v4, v6, v8

    float-to-double v4, v4

    sub-double/2addr v14, v4

    double-to-float v4, v14

    float-to-double v14, v9

    .line 650
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v18

    sub-double v14, v14, v20

    div-float v5, v7, v8

    float-to-double v8, v5

    sub-double/2addr v14, v8

    double-to-float v5, v14

    float-to-double v8, v11

    float-to-double v11, v12

    .line 651
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    add-double/2addr v8, v14

    .line 652
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v18

    move-wide/from16 v20, v2

    float-to-double v2, v13

    mul-double/2addr v14, v2

    add-double/2addr v8, v14

    double-to-float v8, v8

    float-to-double v9, v10

    .line 653
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    .line 654
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v18

    mul-double/2addr v11, v2

    add-double/2addr v9, v11

    double-to-float v2, v9

    move-object/from16 v3, p5

    .line 659
    array-length v9, v3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_122

    float-to-double v9, v8

    .line 660
    aput-wide v9, v3, v16

    float-to-double v9, v2

    const/16 v17, 0x1

    .line 661
    aput-wide v9, v3, v17

    .line 663
    :cond_122
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_158

    move/from16 v10, p4

    float-to-double v9, v10

    float-to-double v2, v2

    float-to-double v11, v8

    .line 664
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    add-double/2addr v9, v2

    double-to-float v2, v9

    .line 665
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_158

    :cond_13b
    move/from16 v10, p4

    .line 670
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_158

    div-float/2addr v14, v8

    add-float/2addr v12, v14

    div-float/2addr v15, v8

    add-float/2addr v13, v15

    float-to-double v2, v13

    float-to-double v8, v12

    .line 680
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v10, v2

    add-float v10, v10, p3

    .line 681
    invoke-virtual {v1, v10}, Landroid/view/View;->setRotation(F)V

    .line 688
    :cond_158
    :goto_158
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    if-eqz v2, :cond_164

    add-float/2addr v6, v4

    add-float/2addr v7, v5

    .line 693
    check-cast v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    invoke-interface {v1, v4, v5, v6, v7}, Landroidx/constraintlayout/motion/widget/FloatLayout;->layout(FFFF)V

    return-void

    :cond_164
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v4, v2

    float-to-int v3, v4

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    add-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v6, v4, v3

    sub-int v7, v5, v2

    .line 711
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ne v6, v8, :cond_181

    .line 712
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v7, v8, :cond_17f

    goto :goto_181

    :cond_17f
    if-eqz p7, :cond_18e

    :cond_181
    :goto_181
    const/high16 v8, 0x40000000    # 2.0f

    .line 716
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 718
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 720
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    .line 723
    :cond_18e
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
