###### Class io.bidmachine.util.gradient.GradientDrawable (io.bidmachine.util.gradient.GradientDrawable)
.class public final Lio/bidmachine/util/gradient/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/gradient/GradientDrawable$Companion;,
        Lio/bidmachine/util/gradient/GradientDrawable$Orientation;,
        Lio/bidmachine/util/gradient/GradientDrawable$GradientState;,
        Lio/bidmachine/util/gradient/GradientDrawable$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/gradient/GradientDrawable$Companion;

.field public static final DEFAULT_ORIENTATION:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;


# instance fields
.field public alpha:I

.field public blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field public colorFilter:Landroid/graphics/ColorFilter;

.field public final fillPaint:Landroid/graphics/Paint;

.field public gradientIsDirty:Z

.field public gradientRadiusPx:F

.field public gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

.field public layerPaint:Landroid/graphics/Paint;

.field public padding:Landroid/graphics/Rect;

.field public final path:Landroid/graphics/Path;

.field public pathIsDirty:Z

.field public final rect:Landroid/graphics/RectF;

.field public ringPath:Landroid/graphics/Path;

.field public shaderHolder:Lio/bidmachine/util/gradient/ShaderHolder;

.field public strokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/gradient/GradientDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable;->Companion:Lio/bidmachine/util/gradient/GradientDrawable$Companion;

    .line 1229
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable;->DEFAULT_ORIENTATION:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 48
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable;->DEFAULT_ORIENTATION:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->path:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    .line 40
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    .line 44
    iput-boolean v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    .line 53
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 55
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable;->updateLocalState()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/gradient/GradientDrawable$Orientation;[I)V
    .registers 4

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)V

    return-void
.end method

.method public static synthetic setGradientRadius$default(Lio/bidmachine/util/gradient/GradientDrawable;FIILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const/high16 p1, 0x3f000000    # 0.5f

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    const/4 p2, 0x0

    .line 312
    :cond_b
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/gradient/GradientDrawable;->setGradientRadius(FI)V

    return-void
.end method

.method public static synthetic setStroke$default(Lio/bidmachine/util/gradient/GradientDrawable;IIFFILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move p4, v0

    .line 143
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/util/gradient/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method


# virtual methods
.method public final buildPathIfDirty()V
    .registers 5

    .line 561
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 562
    iget-boolean v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    if-eqz v1, :cond_20

    .line 563
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable;->ensureValidRect()Z

    .line 564
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 565
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPxArray()[F

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 566
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_1d
    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    :cond_20
    return-void
.end method

.method public final buildRing(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .registers 11

    .line 652
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->ringPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    .line 653
    iget-boolean v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    .line 658
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v1, v3

    .line 659
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 661
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 662
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    .line 664
    invoke-virtual {p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getThicknessPx()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_38

    .line 665
    invoke-virtual {p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getThicknessPx()I

    move-result v5

    int-to-float v5, v5

    goto :goto_41

    .line 667
    :cond_38
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getThicknessRatio()F

    move-result v8

    div-float/2addr v5, v8

    .line 670
    :goto_41
    invoke-virtual {p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getInnerRadiusPx()I

    move-result v8

    if-eq v8, v7, :cond_4d

    .line 671
    invoke-virtual {p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getInnerRadiusPx()I

    move-result p1

    int-to-float p1, p1

    goto :goto_57

    .line 673
    :cond_4d
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getInnerRadiusRatio()F

    move-result p1

    div-float p1, v7, p1

    .line 676
    :goto_57
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sub-float v3, v4, p1

    sub-float v8, v6, p1

    .line 677
    invoke-virtual {v7, v3, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 679
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    neg-float v8, v5

    .line 680
    invoke-virtual {v3, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 683
    iget-object v8, p0, Lio/bidmachine/util/gradient/GradientDrawable;->ringPath:Landroid/graphics/Path;

    if-eqz v8, :cond_74

    .line 684
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto :goto_7b

    .line 685
    :cond_74
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 686
    iput-object v8, p0, Lio/bidmachine/util/gradient/GradientDrawable;->ringPath:Landroid/graphics/Path;

    :goto_7b
    cmpg-float v2, v1, v2

    if-gez v2, :cond_9e

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_9e

    .line 691
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v8, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    add-float/2addr v4, p1

    .line 693
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v4, v5

    .line 695
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p1, 0x0

    .line 697
    invoke-virtual {v8, v3, p1, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    neg-float p1, v1

    .line 699
    invoke-virtual {v8, v7, v1, p1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 700
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    goto :goto_a8

    .line 703
    :cond_9e
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 704
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 707
    :goto_a8
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 708
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v8
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable;->ensureValidRect()Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_1d4

    .line 399
    :cond_11
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->shaderHolder:Lio/bidmachine/util/gradient/ShaderHolder;

    const/4 v7, 0x0

    if-eqz v3, :cond_21

    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/bidmachine/util/gradient/ShaderHolder;->getShader(Z)Landroid/graphics/Shader;

    move-result-object v3

    goto :goto_22

    :cond_21
    move-object v3, v7

    :goto_22
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 403
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 404
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    move v9, v2

    goto :goto_36

    :cond_35
    const/4 v9, 0x0

    .line 406
    :goto_36
    invoke-virtual {v0, v8}, Lio/bidmachine/util/gradient/GradientDrawable;->modulateAlpha(I)I

    move-result v2

    .line 407
    invoke-virtual {v0, v9}, Lio/bidmachine/util/gradient/GradientDrawable;->modulateAlpha(I)I

    move-result v4

    .line 409
    iget-object v5, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    if-eqz v5, :cond_48

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    goto :goto_49

    :cond_48
    move v5, v10

    :goto_49
    const/4 v11, 0x1

    if-lez v4, :cond_52

    cmpl-float v6, v5, v10

    if-lez v6, :cond_52

    move v12, v11

    goto :goto_53

    :cond_52
    const/4 v12, 0x0

    :goto_53
    if-lez v2, :cond_57

    move v6, v11

    goto :goto_58

    :cond_57
    const/4 v6, 0x0

    .line 412
    :goto_58
    iget-object v13, v0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 413
    iget-object v14, v0, Lio/bidmachine/util/gradient/GradientDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-nez v14, :cond_60

    iget-object v14, v0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    :cond_60
    const/4 v15, 0x2

    if-eqz v12, :cond_78

    if-eqz v6, :cond_78

    .line 423
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getShape()I

    move-result v6

    if-eq v6, v15, :cond_78

    const/16 v6, 0xff

    if-ge v4, v6, :cond_78

    .line 425
    iget v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    if-lt v3, v6, :cond_75

    if-eqz v14, :cond_78

    :cond_75
    move/from16 v16, v11

    goto :goto_7a

    :cond_78
    const/16 v16, 0x0

    :goto_7a
    if-eqz v16, :cond_ba

    .line 435
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->layerPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_87

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 436
    iput-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->layerPaint:Landroid/graphics/Paint;

    :cond_87
    move-object v6, v2

    .line 438
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getDither()Z

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 439
    iget v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 440
    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 443
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    .line 444
    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    move/from16 v17, v10

    .line 445
    iget v10, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v5

    .line 446
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    move v2, v3

    move v3, v4

    move v4, v10

    .line 442
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 452
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 453
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_f3

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_f3

    :cond_ba
    move/from16 v17, v10

    .line 457
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 458
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getDither()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 459
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz v14, :cond_e0

    .line 460
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getSolidColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_e0

    .line 461
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e0
    if-eqz v12, :cond_f3

    .line 464
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_f3

    .line 465
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 466
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getDither()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 467
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 472
    :cond_f3
    :goto_f3
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getShape()I

    move-result v2

    if-eqz v2, :cond_145

    if-eq v2, v11, :cond_131

    if-eq v2, v15, :cond_116

    const/4 v3, 0x3

    if-eq v2, v3, :cond_102

    goto/16 :goto_1c0

    .line 533
    :cond_102
    invoke-virtual {v0, v13}, Lio/bidmachine/util/gradient/GradientDrawable;->buildRing(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v2

    .line 534
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_1c0

    .line 536
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1c0

    .line 537
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1c0

    .line 523
    :cond_116
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    .line 524
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    if-eqz v12, :cond_1c0

    .line 526
    iget-object v6, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_1c0

    .line 527
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move v5, v3

    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1c0

    .line 514
    :cond_131
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_1c0

    .line 516
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1c0

    .line 517
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1c0

    .line 474
    :cond_145
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPxArray()[F

    move-result-object v2

    if-eqz v2, :cond_161

    .line 475
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable;->buildPathIfDirty()V

    .line 476
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_1c0

    .line 478
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1c0

    .line 479
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1c0

    .line 482
    :cond_161
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPx()F

    move-result v2

    cmpl-float v2, v2, v17

    if-lez v2, :cond_19c

    .line 489
    invoke-virtual {v13}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPx()F

    move-result v2

    float-to-double v2, v2

    .line 491
    iget-object v4, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    .line 492
    iget-object v6, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const/high16 v6, 0x3f000000    # 0.5f

    float-to-double v6, v6

    mul-double/2addr v4, v6

    .line 490
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 495
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v12, :cond_1c0

    .line 497
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1c0

    .line 498
    iget-object v4, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1c0

    .line 502
    :cond_19c
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_1ae

    if-nez v14, :cond_1ae

    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_1b5

    .line 503
    :cond_1ae
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1b5
    if-eqz v12, :cond_1c0

    .line 506
    iget-object v2, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1c0

    .line 507
    iget-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1c0
    :goto_1c0
    if-eqz v16, :cond_1c6

    .line 544
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 546
    :cond_1c6
    iget-object v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v12, :cond_1d4

    .line 548
    iget-object v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1d4

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1d4
    :goto_1d4
    return-void
.end method

.method public final ensureValidRect()Z
    .registers 19

    move-object/from16 v0, p0

    .line 894
    iget-boolean v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_194

    const/4 v1, 0x0

    .line 895
    iput-boolean v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    .line 897
    iget-object v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 898
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "getBounds()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    .line 900
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    goto :goto_21

    :cond_20
    move v1, v4

    .line 904
    :goto_21
    iget-object v5, v0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 906
    iget-object v6, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    .line 907
    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    .line 908
    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 909
    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v1

    .line 910
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 906
    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 913
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getColors()[I

    move-result-object v15

    if-eqz v15, :cond_194

    .line 914
    array-length v1, v15

    if-le v1, v2, :cond_194

    .line 915
    iget-object v11, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    .line 921
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientType()I

    move-result v1

    if-nez v1, :cond_c1

    .line 923
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getOrientation()Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    move-result-object v1

    sget-object v3, Lio/bidmachine/util/gradient/GradientDrawable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_19c

    .line 974
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 975
    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 976
    iget v6, v11, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v3

    .line 977
    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    :goto_63
    mul-float/2addr v7, v3

    move v11, v1

    move v12, v4

    move v13, v6

    :goto_67
    move v14, v7

    goto :goto_ad

    .line 967
    :pswitch_69
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 968
    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 969
    iget v6, v11, Landroid/graphics/RectF;->right:F

    :goto_6f
    mul-float/2addr v6, v3

    move v11, v1

    move v12, v4

    move v14, v12

    move v13, v6

    goto :goto_ad

    .line 960
    :pswitch_75
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 961
    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    .line 962
    iget v6, v11, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v3

    .line 963
    iget v7, v11, Landroid/graphics/RectF;->top:F

    goto :goto_63

    .line 953
    :pswitch_7f
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 954
    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    .line 956
    iget v6, v11, Landroid/graphics/RectF;->top:F

    :goto_85
    mul-float v7, v6, v3

    move v11, v1

    move v13, v11

    move v12, v4

    goto :goto_67

    .line 946
    :pswitch_8b
    iget v1, v11, Landroid/graphics/RectF;->right:F

    .line 947
    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    .line 948
    iget v6, v11, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v3

    .line 949
    iget v7, v11, Landroid/graphics/RectF;->top:F

    goto :goto_63

    .line 939
    :pswitch_95
    iget v1, v11, Landroid/graphics/RectF;->right:F

    .line 940
    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 941
    iget v6, v11, Landroid/graphics/RectF;->left:F

    goto :goto_6f

    .line 932
    :pswitch_9c
    iget v1, v11, Landroid/graphics/RectF;->right:F

    .line 933
    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 934
    iget v6, v11, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v3

    .line 935
    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    goto :goto_63

    .line 925
    :pswitch_a6
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 926
    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 928
    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    goto :goto_85

    .line 981
    :goto_ad
    new-instance v1, Lio/bidmachine/util/gradient/DefaultShaderHolder;

    .line 982
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 988
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getPositions()[F

    move-result-object v16

    .line 989
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 982
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 981
    invoke-direct {v1, v10}, Lio/bidmachine/util/gradient/DefaultShaderHolder;-><init>(Landroid/graphics/Shader;)V

    iput-object v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->shaderHolder:Lio/bidmachine/util/gradient/ShaderHolder;

    goto/16 :goto_187

    .line 992
    :cond_c1
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_143

    .line 993
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v6, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v1

    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getCenterX()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 994
    iget v6, v11, Landroid/graphics/RectF;->top:F

    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v6

    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getCenterY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float v12, v6, v7

    .line 996
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientRadius()F

    move-result v6

    .line 997
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientRadiusType()I

    move-result v7

    if-ne v7, v2, :cond_112

    .line 1000
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getWidthPx()I

    move-result v3

    if-ltz v3, :cond_f5

    .line 1001
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getWidthPx()I

    move-result v3

    int-to-float v3, v3

    goto :goto_f9

    .line 1003
    :cond_f5
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 1005
    :goto_f9
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getHeightPx()I

    move-result v7

    if-ltz v7, :cond_105

    .line 1006
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getHeightPx()I

    move-result v7

    int-to-float v7, v7

    goto :goto_109

    .line 1008
    :cond_105
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_109
    float-to-double v8, v3

    float-to-double v10, v7

    .line 1010
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_10f
    double-to-float v3, v7

    mul-float/2addr v6, v3

    goto :goto_127

    .line 1011
    :cond_112
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientRadiusType()I

    move-result v7

    if-ne v7, v3, :cond_127

    .line 1012
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    goto :goto_10f

    .line 1015
    :cond_127
    :goto_127
    iput v6, v0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientRadiusPx:F

    cmpg-float v3, v6, v4

    if-gtz v3, :cond_130

    const v6, 0x3a83126f    # 0.001f

    :cond_130
    move v13, v6

    .line 1023
    new-instance v3, Lio/bidmachine/util/gradient/DefaultShaderHolder;

    .line 1024
    new-instance v10, Landroid/graphics/RadialGradient;

    move-object v14, v15

    const/4 v15, 0x0

    .line 1030
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v11, v1

    .line 1024
    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1023
    invoke-direct {v3, v10}, Lio/bidmachine/util/gradient/DefaultShaderHolder;-><init>(Landroid/graphics/Shader;)V

    iput-object v3, v0, Lio/bidmachine/util/gradient/GradientDrawable;->shaderHolder:Lio/bidmachine/util/gradient/ShaderHolder;

    goto :goto_187

    .line 1033
    :cond_143
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientType()I

    move-result v1

    if-ne v1, v3, :cond_16d

    .line 1034
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getCenterX()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 1035
    iget v3, v11, Landroid/graphics/RectF;->top:F

    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v3

    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getCenterY()F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 1037
    new-instance v4, Lio/bidmachine/util/gradient/DefaultShaderHolder;

    new-instance v6, Landroid/graphics/SweepGradient;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v3, v15, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-direct {v4, v6}, Lio/bidmachine/util/gradient/DefaultShaderHolder;-><init>(Landroid/graphics/Shader;)V

    iput-object v4, v0, Lio/bidmachine/util/gradient/GradientDrawable;->shaderHolder:Lio/bidmachine/util/gradient/ShaderHolder;

    goto :goto_187

    .line 1038
    :cond_16d
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_187

    array-length v1, v15

    const/4 v3, 0x4

    if-lt v1, v3, :cond_187

    .line 1039
    new-instance v10, Lio/bidmachine/util/gradient/BilinearGradientHolder;

    move-object v14, v15

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object v12, v14

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lio/bidmachine/util/gradient/BilinearGradientHolder;-><init>(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v0, Lio/bidmachine/util/gradient/GradientDrawable;->shaderHolder:Lio/bidmachine/util/gradient/ShaderHolder;

    .line 1044
    :cond_187
    :goto_187
    invoke-virtual {v5}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getSolidColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_194

    .line 1045
    iget-object v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1049
    :cond_194
    iget-object v1, v0, Lio/bidmachine/util/gradient/GradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_9c
        :pswitch_95
        :pswitch_8b
        :pswitch_7f
        :pswitch_75
        :pswitch_69
    .end packed-switch
.end method

.method public getAlpha()I
    .registers 2

    .line 821
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 811
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getChangingConfigurationsParam()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 823
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1057
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 1058
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setChangingConfigurationsParam(I)V

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1054
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getHeightPx()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1052
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getWidthPx()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 3

    .line 879
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getOpaqueOverBounds()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    return v0

    :cond_16
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 10

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 1079
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1080
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "getBounds()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getOpaqueOverShape()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    .line 1084
    iget-object v3, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v3}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeWidthPx()I

    move-result v3

    if-lez v3, :cond_2f

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget-object v5, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    if-ne v3, v5, :cond_3e

    .line 1086
    :cond_2f
    iget-object v3, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/bidmachine/util/gradient/GradientDrawable;->modulateAlpha(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    goto :goto_3f

    :cond_3e
    move v3, v4

    .line 1085
    :goto_3f
    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1091
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getShape()I

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v3, :cond_7c

    const/4 v0, 0x1

    if-eq v3, v0, :cond_78

    const/4 v0, 0x2

    if-eq v3, v0, :cond_51

    return-void

    :cond_51
    if-eqz v1, :cond_59

    .line 1129
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    mul-float/2addr v0, v5

    goto :goto_5c

    :cond_59
    const v0, 0x38d1b717    # 1.0E-4f

    .line 1133
    :goto_5c
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v1, v0

    float-to-double v3, v3

    .line 1134
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 1135
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1136
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    .line 1121
    :cond_78
    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void

    .line 1093
    :cond_7c
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPxArray()[F

    move-result-object v1

    if-eqz v1, :cond_99

    .line 1095
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable;->buildPathIfDirty()V

    .line 1096
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_91

    .line 1097
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->path:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/google/android/material/drawable/DrawableUtils$OutlineCompatR$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void

    .line 1099
    :cond_91
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->sum([F)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1104
    :cond_99
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPx()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_bb

    .line 1107
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getRadiusPx()F

    move-result v0

    float-to-double v0, v0

    .line 1109
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    .line 1110
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    float-to-double v5, v5

    mul-double/2addr v3, v5

    .line 1108
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v4, v0

    .line 1116
    :cond_bb
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    const-string v0, "padding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->padding:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_e
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final isOpaqueForState()Z
    .registers 4

    .line 1063
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1064
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeWidthPx()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_18

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/util/gradient/GradientDrawableKt;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_18

    return v2

    .line 1070
    :cond_18
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientColors()[Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/util/gradient/GradientDrawableKt;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_2d

    return v2

    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .registers 4

    .line 803
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 804
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_32

    .line 805
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getSolidColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-ne v1, v2, :cond_16

    goto :goto_32

    .line 806
    :cond_16
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-ne v1, v2, :cond_23

    goto :goto_32

    .line 807
    :cond_23
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-ne v0, v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    return v0

    :cond_32
    :goto_32
    return v2
.end method

.method public final modulateAlpha(I)I
    .registers 4

    .line 337
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1147
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 1148
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-direct {v0, v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)V

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 1149
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable;->updateLocalState()V

    :cond_12
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 855
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->ringPath:Landroid/graphics/Path;

    const/4 p1, 0x1

    .line 856
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    .line 857
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    return-void
.end method

.method public onLevelChange(I)Z
    .registers 2

    .line 861
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    const/4 p1, 0x1

    .line 863
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    .line 864
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    .line 865
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public onStateChange([I)Z
    .registers 8

    const-string v0, "stateSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 762
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getSolidColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 764
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 765
    iget-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-eq v4, v1, :cond_22

    .line 767
    iget-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    .line 772
    :goto_23
    iget-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_3b

    .line 774
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 776
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 777
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-eq v5, p1, :cond_3b

    .line 779
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v2

    .line 785
    :cond_3b
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getTint()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_58

    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 787
    iget-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 788
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 789
    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 786
    invoke-virtual {p0, p1, v1, v0}, Lio/bidmachine/util/gradient/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    move v1, v2

    :cond_58
    if-eqz v1, :cond_5e

    .line 795
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v2

    :cond_5e
    return v3
.end method

.method public setAlpha(I)V
    .registers 3

    .line 815
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    if-eq v0, p1, :cond_9

    .line 816
    iput p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->alpha:I

    .line 817
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public final setColor(I)V
    .registers 4

    .line 723
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setSolidColorsInternal(Landroid/content/res/ColorStateList;)V

    .line 724
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 725
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 826
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_9

    .line 827
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 828
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public final setCornerRadius(F)V
    .registers 3

    .line 110
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setCornerRadiusInternal(F)V

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->pathIsDirty:Z

    .line 112
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 871
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getDither()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 872
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setDither(Z)V

    .line 873
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public final setGradientRadius(FI)V
    .registers 4

    .line 316
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setGradientRadiusInternal(FI)V

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    .line 318
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setGradientType(I)V
    .registers 3

    .line 254
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setGradientTypeInternal(I)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    .line 256
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setStroke(IIFF)V
    .registers 7

    .line 144
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 146
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 144
    invoke-virtual {v0, p1, v1, p3, p4}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setStrokeInternal(ILandroid/content/res/ColorStateList;FF)V

    .line 150
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/util/gradient/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public final setStrokeInternal(IIFF)V
    .registers 9

    .line 188
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 189
    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 190
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_11
    int-to-float p1, p1

    .line 192
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-lez p2, :cond_2b

    .line 195
    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    aput p4, v2, v1

    invoke-direct {p2, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    .line 199
    :goto_2c
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 200
    iput-boolean v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    .line 201
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4

    .line 843
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 845
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 846
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 844
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/util/gradient/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 849
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 833
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setTint(Landroid/content/res/ColorStateList;)V

    .line 835
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 837
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    .line 834
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/util/gradient/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 839
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;
    .registers 6

    if-eqz p2, :cond_27

    if-nez p3, :cond_5

    goto :goto_27

    .line 1213
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_26

    .line 1214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    if-eqz p1, :cond_22

    .line 1215
    invoke-static {p1}, Lio/bidmachine/util/gradient/GradientDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/BlendModeColorFilter;)I

    move-result v0

    if-ne v0, p2, :cond_22

    invoke-static {p1}, Lio/bidmachine/util/gradient/GradientDrawable$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/BlendModeColorFilter;)Landroid/graphics/BlendMode;

    move-result-object v0

    if-eq v0, p3, :cond_26

    .line 1216
    :cond_22
    invoke-static {p2, p3}, Lio/bidmachine/util/gradient/GradientDrawable$$ExternalSyntheticApiModelOutline2;->m(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    :cond_26
    return-object p1

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public final updateLocalState()V
    .registers 10

    const/4 v0, 0x1

    .line 1155
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientState:Lio/bidmachine/util/gradient/GradientDrawable$GradientState;

    .line 1156
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getSolidColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 1158
    iget-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2b

    .line 1159
    :cond_18
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getGradientColors()[Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_24

    .line 1163
    iget-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2b

    .line 1166
    :cond_24
    iget-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable;->fillPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1169
    :goto_2b
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getPadding()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable;->padding:Landroid/graphics/Rect;

    .line 1171
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeWidthPx()I

    move-result v2

    if-ltz v2, :cond_79

    .line 1173
    iget-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_4b

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1174
    iput-object v4, p0, Lio/bidmachine/util/gradient/GradientDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1175
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v2, v2

    .line 1176
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1179
    :cond_4b
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 1181
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1184
    :cond_5c
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeDashWidthPx()F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-nez v6, :cond_66

    goto :goto_79

    .line 1187
    :cond_66
    new-instance v6, Landroid/graphics/DashPathEffect;

    .line 1188
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getStrokeDashGapPx()F

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v2, v8, v3

    aput v7, v8, v0

    .line 1187
    invoke-direct {v6, v8, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1186
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1196
    :cond_79
    :goto_79
    iget-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1197
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1198
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v4

    .line 1195
    invoke-virtual {p0, v2, v3, v4}, Lio/bidmachine/util/gradient/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable;->blendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1200
    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable;->gradientIsDirty:Z

    .line 1202
    invoke-virtual {v1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

###### Class io.bidmachine.util.gradient.GradientDrawable.Companion (io.bidmachine.util.gradient.GradientDrawable$Companion)
.class public final Lio/bidmachine/util/gradient/GradientDrawable$Companion;
.super Ljava/lang/Object;
.source "GradientDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/gradient/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/gradient/GradientDrawable$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.gradient.GradientDrawable.GradientState (io.bidmachine.util.gradient.GradientDrawable$GradientState)
.class public final Lio/bidmachine/util/gradient/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/gradient/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GradientState"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGradientDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GradientDrawable.kt\nio/bidmachine/util/gradient/GradientDrawable$GradientState\n+ 2 GradientDrawable.kt\nio/bidmachine/util/gradient/GradientDrawableKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1588:1\n1577#2,11:1589\n12708#3,2:1600\n*S KotlinDebug\n*F\n+ 1 GradientDrawable.kt\nio/bidmachine/util/gradient/GradientDrawable$GradientState\n*L\n1490#1:1589,11\n1546#1:1600,2\n*E\n"
.end annotation


# instance fields
.field public angle:I

.field public blendMode:Landroid/graphics/BlendMode;

.field public centerX:F

.field public centerY:F

.field public changingConfigurationsParam:I

.field public dither:Z

.field public gradientColors:[Landroid/content/res/ColorStateList;

.field public gradientRadius:F

.field public gradientRadiusType:I

.field public gradientType:I

.field public heightPx:I

.field public innerRadiusPx:I

.field public innerRadiusRatio:F

.field public opaqueOverBounds:Z

.field public opaqueOverShape:Z

.field public orientation:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public padding:Landroid/graphics/Rect;

.field public positions:[F

.field public radiusPx:F

.field public radiusPxArray:[F

.field public shape:I

.field public solidColors:Landroid/content/res/ColorStateList;

.field public strokeColors:Landroid/content/res/ColorStateList;

.field public strokeDashGapPx:F

.field public strokeDashWidthPx:F

.field public strokeWidthPx:I

.field public thicknessPx:I

.field public thicknessRatio:F

.field public tint:Landroid/content/res/ColorStateList;

.field public widthPx:I


# direct methods
.method public constructor <init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;)V
    .registers 4

    const-string v0, "originalGradientState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1415
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, -0x1

    .line 1383
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeWidthPx:I

    .line 1389
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->widthPx:I

    .line 1390
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->heightPx:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 1391
    iput v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusRatio:F

    const/high16 v1, 0x41100000    # 9.0f

    .line 1392
    iput v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessRatio:F

    .line 1393
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusPx:I

    .line 1394
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessPx:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1396
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerX:F

    .line 1397
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerY:F

    .line 1398
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadius:F

    .line 1404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2e

    .line 1405
    invoke-static {}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1404
    :goto_2f
    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->blendMode:Landroid/graphics/BlendMode;

    .line 1416
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->changingConfigurationsParam:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->changingConfigurationsParam:I

    .line 1417
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->shape:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->shape:I

    .line 1418
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientType:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientType:I

    .line 1419
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->angle:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->angle:I

    .line 1420
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->orientation:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->orientation:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1421
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    .line 1422
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeColors:Landroid/content/res/ColorStateList;

    .line 1423
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_59

    .line 1424
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    .line 1426
    :cond_59
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->positions:[F

    if-eqz v0, :cond_65

    .line 1427
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->positions:[F

    .line 1429
    :cond_65
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeWidthPx:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeWidthPx:I

    .line 1430
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashWidthPx:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashWidthPx:F

    .line 1431
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashGapPx:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashGapPx:F

    .line 1432
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPx:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPx:F

    .line 1433
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPxArray:[F

    if-eqz v0, :cond_81

    .line 1434
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPxArray:[F

    .line 1436
    :cond_81
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->padding:Landroid/graphics/Rect;

    if-eqz v0, :cond_8c

    .line 1437
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->padding:Landroid/graphics/Rect;

    .line 1439
    :cond_8c
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->widthPx:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->widthPx:I

    .line 1440
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->heightPx:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->heightPx:I

    .line 1441
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusRatio:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusRatio:F

    .line 1442
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessRatio:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessRatio:F

    .line 1443
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusPx:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusPx:I

    .line 1444
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessPx:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessPx:I

    .line 1445
    iget-boolean v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->dither:Z

    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->dither:Z

    .line 1446
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerX:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerX:F

    .line 1447
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerY:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerY:F

    .line 1448
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadius:F

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadius:F

    .line 1449
    iget v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadiusType:I

    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadiusType:I

    .line 1450
    iget-boolean v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverBounds:Z

    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverBounds:Z

    .line 1451
    iget-boolean v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverShape:Z

    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverShape:Z

    .line 1452
    iget-object v0, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->tint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->tint:Landroid/content/res/ColorStateList;

    .line 1453
    iget-object p1, p1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->blendMode:Landroid/graphics/BlendMode;

    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->blendMode:Landroid/graphics/BlendMode;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/gradient/GradientDrawable$Orientation;[I)V
    .registers 5

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, -0x1

    .line 1383
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeWidthPx:I

    .line 1389
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->widthPx:I

    .line 1390
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->heightPx:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 1391
    iput v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusRatio:F

    const/high16 v1, 0x41100000    # 9.0f

    .line 1392
    iput v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessRatio:F

    .line 1393
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusPx:I

    .line 1394
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessPx:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1396
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerX:F

    .line 1397
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerY:F

    .line 1398
    iput v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadius:F

    .line 1404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2e

    .line 1405
    invoke-static {}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1404
    :goto_2f
    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->blendMode:Landroid/graphics/BlendMode;

    .line 1411
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->orientation:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1412
    invoke-virtual {p0, p2}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->setGradientColorsInternal([I)V

    return-void
.end method


# virtual methods
.method public final computeOpacity()V
    .registers 7

    const/4 v0, 0x0

    .line 1540
    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverBounds:Z

    .line 1541
    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverShape:Z

    .line 1543
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    if-nez v1, :cond_e

    iget-object v2, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_e

    goto :goto_37

    :cond_e
    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    .line 12708
    array-length v3, v1

    move v4, v0

    :goto_13
    if-ge v4, v3, :cond_28

    aget-object v5, v1, v4

    if-eqz v5, :cond_25

    .line 1547
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-static {v5}, Lio/bidmachine/util/gradient/GradientDrawableKt;->isOpaque(I)Z

    move-result v5

    if-nez v5, :cond_25

    move v1, v2

    goto :goto_29

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_28
    move v1, v0

    .line 12709
    :goto_29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 1549
    :goto_2f
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    :goto_37
    return-void

    .line 1554
    :cond_38
    iput-boolean v2, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverShape:Z

    .line 1556
    iget v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->shape:I

    if-nez v1, :cond_4a

    iget v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPx:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4a

    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPxArray:[F

    if-nez v1, :cond_4a

    move v0, v2

    :cond_4a
    iput-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverBounds:Z

    return-void
.end method

.method public final getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1404
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->blendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public final getCenterX()F
    .registers 2

    .line 1396
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerX:F

    return v0
.end method

.method public final getCenterY()F
    .registers 2

    .line 1397
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->centerY:F

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 4

    .line 1459
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->changingConfigurationsParam:I

    .line 1462
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    or-int/2addr v0, v1

    .line 1463
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    or-int/2addr v0, v1

    .line 1464
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->tint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v2

    :cond_21
    or-int/2addr v0, v2

    return v0
.end method

.method public final getChangingConfigurationsParam()I
    .registers 2

    .line 1372
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->changingConfigurationsParam:I

    return v0
.end method

.method public final getColors()[I
    .registers 3

    .line 1470
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_b

    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;->INSTANCE:Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;

    invoke-static {v0, v1}, Lio/bidmachine/util/gradient/GradientDrawableKt;->mapToIntArray([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)[I

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDither()Z
    .registers 2

    .line 1395
    iget-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->dither:Z

    return v0
.end method

.method public final getGradientColors()[Landroid/content/res/ColorStateList;
    .registers 2

    .line 1381
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getGradientRadius()F
    .registers 2

    .line 1398
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadius:F

    return v0
.end method

.method public final getGradientRadiusType()I
    .registers 2

    .line 1400
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadiusType:I

    return v0
.end method

.method public final getGradientType()I
    .registers 2

    .line 1376
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientType:I

    return v0
.end method

.method public final getHeightPx()I
    .registers 2

    .line 1390
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->heightPx:I

    return v0
.end method

.method public final getInnerRadiusPx()I
    .registers 2

    .line 1393
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusPx:I

    return v0
.end method

.method public final getInnerRadiusRatio()F
    .registers 2

    .line 1391
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->innerRadiusRatio:F

    return v0
.end method

.method public final getOpaqueOverBounds()Z
    .registers 2

    .line 1401
    iget-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverBounds:Z

    return v0
.end method

.method public final getOpaqueOverShape()Z
    .registers 2

    .line 1402
    iget-boolean v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->opaqueOverShape:Z

    return v0
.end method

.method public final getOrientation()Lio/bidmachine/util/gradient/GradientDrawable$Orientation;
    .registers 2

    .line 1378
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->orientation:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object v0
.end method

.method public final getPadding()Landroid/graphics/Rect;
    .registers 2

    .line 1388
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->padding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getPositions()[F
    .registers 2

    .line 1382
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->positions:[F

    return-object v0
.end method

.method public final getRadiusPx()F
    .registers 2

    .line 1386
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPx:F

    return v0
.end method

.method public final getRadiusPxArray()[F
    .registers 2

    .line 1387
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPxArray:[F

    return-object v0
.end method

.method public final getShape()I
    .registers 2

    .line 1374
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->shape:I

    return v0
.end method

.method public final getSolidColors()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1379
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getStrokeColors()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1380
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getStrokeDashGapPx()F
    .registers 2

    .line 1385
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashGapPx:F

    return v0
.end method

.method public final getStrokeDashWidthPx()F
    .registers 2

    .line 1384
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashWidthPx:F

    return v0
.end method

.method public final getStrokeWidthPx()I
    .registers 2

    .line 1383
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeWidthPx:I

    return v0
.end method

.method public final getThicknessPx()I
    .registers 2

    .line 1394
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessPx:I

    return v0
.end method

.method public final getThicknessRatio()F
    .registers 2

    .line 1392
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->thicknessRatio:F

    return v0
.end method

.method public final getTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1403
    iget-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->tint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getWidthPx()I
    .registers 2

    .line 1389
    iget v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->widthPx:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1456
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$GradientState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 2

    .line 1404
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->blendMode:Landroid/graphics/BlendMode;

    return-void
.end method

.method public final setChangingConfigurationsParam(I)V
    .registers 2

    .line 1372
    iput p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->changingConfigurationsParam:I

    return-void
.end method

.method public final setCornerRadiusInternal(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    move p1, v0

    .line 1516
    :cond_6
    iput p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPx:F

    const/4 p1, 0x0

    .line 1517
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->radiusPxArray:[F

    .line 1518
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public final setDither(Z)V
    .registers 2

    .line 1395
    iput-boolean p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->dither:Z

    return-void
.end method

.method public final setGradientColorsInternal([I)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 1490
    iget-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    .line 1579
    array-length v2, v1

    array-length v3, p1

    if-eq v2, v3, :cond_e

    .line 1580
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Landroid/content/res/ColorStateList;

    .line 1584
    :cond_e
    array-length v2, p1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_23

    .line 1585
    aget v4, p1, v3

    .line 1491
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const-string v5, "valueOf(it)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1585
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    move-object v1, v0

    .line 1490
    :cond_23
    iput-object v1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    .line 1493
    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    .line 1494
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public final setGradientRadiusInternal(FI)V
    .registers 3

    .line 1535
    iput p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadius:F

    .line 1536
    iput p2, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientRadiusType:I

    return-void
.end method

.method public final setGradientTypeInternal(I)V
    .registers 2

    .line 1481
    iput p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientType:I

    return-void
.end method

.method public final setSolidColorsInternal(Landroid/content/res/ColorStateList;)V
    .registers 3

    const/4 v0, 0x0

    .line 1498
    iput-object v0, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->gradientColors:[Landroid/content/res/ColorStateList;

    .line 1499
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->solidColors:Landroid/content/res/ColorStateList;

    .line 1500
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public final setStrokeInternal(ILandroid/content/res/ColorStateList;FF)V
    .registers 5

    .line 1504
    iput p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeWidthPx:I

    .line 1505
    iput-object p2, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeColors:Landroid/content/res/ColorStateList;

    .line 1506
    iput p3, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashWidthPx:F

    .line 1507
    iput p4, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->strokeDashGapPx:F

    .line 1508
    invoke-virtual {p0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public final setTint(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1403
    iput-object p1, p0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->tint:Landroid/content/res/ColorStateList;

    return-void
.end method

###### Class io.bidmachine.util.gradient.GradientDrawable$GradientState$getColors$1 (io.bidmachine.util.gradient.GradientDrawable$GradientState$getColors$1)
.class public final Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GradientDrawable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/gradient/GradientDrawable$GradientState;->getColors()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/res/ColorStateList;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;

    invoke-direct {v0}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;->INSTANCE:Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/res/ColorStateList;)Ljava/lang/Integer;
    .registers 2

    if-eqz p1, :cond_b

    .line 1471
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1470
    check-cast p1, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lio/bidmachine/util/gradient/GradientDrawable$GradientState$getColors$1;->invoke(Landroid/content/res/ColorStateList;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.gradient.GradientDrawable.Orientation (io.bidmachine.util.gradient.GradientDrawable$Orientation)
.class public final enum Lio/bidmachine/util/gradient/GradientDrawable$Orientation;
.super Ljava/lang/Enum;
.source "GradientDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/gradient/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/gradient/GradientDrawable$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum BL_TR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum BOTTOM_TOP:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum BR_TL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum LEFT_RIGHT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum RIGHT_LEFT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum TL_BR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

.field public static final enum TR_BL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;
    .registers 8

    .line 0
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TR_BL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v2, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->RIGHT_LEFT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v3, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BR_TL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v4, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BOTTOM_TOP:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v5, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BL_TR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v6, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->LEFT_RIGHT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    sget-object v7, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TL_BR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    filled-new-array/range {v0 .. v7}, [Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1241
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1246
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "TR_BL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TR_BL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1251
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "RIGHT_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->RIGHT_LEFT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1256
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "BR_TL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BR_TL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1261
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "BOTTOM_TOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BOTTOM_TOP:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1266
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "BL_TR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BL_TR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1271
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "LEFT_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->LEFT_RIGHT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    .line 1276
    new-instance v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const-string v1, "TL_BR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TL_BR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-static {}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->$values()[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->$VALUES:[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/gradient/GradientDrawable$Orientation;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->$VALUES:[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object v0
.end method

###### Class io.bidmachine.util.gradient.GradientDrawable.WhenMappings (io.bidmachine.util.gradient.GradientDrawable$WhenMappings)
.class public final synthetic Lio/bidmachine/util/gradient/GradientDrawable$WhenMappings;
.super Ljava/lang/Object;
.source "GradientDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/gradient/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->values()[Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TR_BL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->RIGHT_LEFT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BR_TL:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BOTTOM_TOP:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BL_TR:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->LEFT_RIGHT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    sput-object v0, Lio/bidmachine/util/gradient/GradientDrawable$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
