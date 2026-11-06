###### Class com.google.android.material.carousel.KeylineStateList (com.google.android.material.carousel.KeylineStateList)
.class public Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# instance fields
.field public final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field public final endShiftRange:F

.field public final endStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field public final endStateStepsInterpolationPoints:[F

.field public final startShiftRange:F

.field public final startStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field public final startStateStepsInterpolationPoints:[F


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    .line 69
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 70
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 75
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    .line 78
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 79
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    .line 84
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    const/4 p2, 0x0

    .line 87
    invoke-static {p1, p3, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    return-void
.end method

.method public static findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .registers 4

    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    .line 762
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 768
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .registers 3

    const/4 v0, 0x0

    .line 783
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 784
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public static findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .registers 4

    .line 772
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1c

    .line 774
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .registers 3

    .line 793
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1e

    .line 794
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public static from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineStateList;
    .registers 7

    .line 98
    new-instance v0, Lcom/google/android/material/carousel/KeylineStateList;

    .line 100
    invoke-static {p0, p1, p2, p3, p5}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;

    move-result-object p3

    .line 101
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p3, p0}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static getStateStepInterpolationPoints(FLjava/util/List;Z)[F
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;Z)[F"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 324
    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_7
    if-ge v2, v0, :cond_45

    add-int/lit8 v3, v2, -0x1

    .line 329
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    .line 330
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_27

    .line 334
    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v4

    goto :goto_35

    .line 335
    :cond_27
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float v5, v4, v5

    :goto_35
    div-float/2addr v5, p0

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_3d

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_40

    .line 339
    :cond_3d
    aget v3, v1, v3

    add-float/2addr v3, v5

    :goto_40
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_45
    return-object v1
.end method

.method public static getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            "FF",
            "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 610
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-static {v0}, Lcom/google/android/material/carousel/KeylineStateList;->findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    .line 614
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    :goto_18
    move v11, v1

    goto :goto_1f

    :cond_1a
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    goto :goto_18

    .line 619
    :goto_1f
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    const/4 v1, -0x1

    if-ne v8, v1, :cond_2c

    :cond_29
    move v13, v11

    goto/16 :goto_d8

    .line 635
    :cond_2c
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    sub-int v1, v8, v1

    .line 639
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 640
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    if-gtz v1, :cond_5f

    .line 642
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_5f

    .line 646
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    sub-float/2addr v3, v1

    sub-float v3, v3, p3

    .line 647
    invoke-static {v0, v3, v11}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_5f
    const/4 v4, 0x0

    move v7, v2

    move v5, v4

    :goto_62
    if-ge v5, v1, :cond_eb

    .line 654
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/carousel/KeylineState;

    sub-int v10, v8, v5

    .line 656
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v12, v12, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float v15, v7, v12

    add-int/lit8 v10, v10, 0x1

    .line 661
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v10, v7, :cond_9f

    .line 662
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v7, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 664
    invoke-static {v9, v7}, Lcom/google/android/material/carousel/KeylineStateList;->findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    :cond_9f
    move v7, v4

    .line 669
    :goto_a0
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v10

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    .line 670
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    move v13, v11

    move v11, v10

    sub-float v10, v3, v15

    move-object/from16 v16, v9

    move v9, v7

    move-object/from16 v7, v16

    .line 672
    invoke-static/range {v7 .. v13}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_d0

    cmpl-float v7, p3, v2

    if-lez v7, :cond_d0

    const/4 v12, 0x0

    move/from16 v10, p3

    move-object/from16 v14, p4

    move v11, v13

    move/from16 v13, p2

    .line 682
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    move v13, v11

    .line 690
    :cond_d0
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v11, v13

    move v7, v15

    goto :goto_62

    :goto_d8
    cmpl-float v1, p3, v2

    if-lez v1, :cond_eb

    const/4 v3, 0x0

    move/from16 v4, p2

    move/from16 v1, p3

    move-object/from16 v5, p4

    move v2, v13

    .line 624
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 623
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_eb
    return-object v6
.end method

.method public static getStateStepsRange(Ljava/util/List;F[F)[F
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)[F"
        }
    .end annotation

    const/4 v0, 0x3

    .line 257
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    .line 260
    aget v2, p2, v1

    const/4 v3, 0x1

    move v4, v3

    :goto_a
    const/4 v5, 0x0

    if-ge v4, p0, :cond_2a

    .line 262
    aget v6, p2, v4

    cmpg-float v7, p1, v6

    if-gtz v7, :cond_27

    add-int/lit8 p0, v4, -0x1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 267
    invoke-static {v5, p2, v2, v6, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    int-to-float p0, p0

    int-to-float p2, v4

    .line 268
    new-array v0, v0, [F

    aput p1, v0, v1

    aput p0, v0, v3

    const/4 p0, 0x2

    aput p2, v0, p0

    return-object v0

    :cond_27
    add-int/2addr v4, v3

    move v2, v6

    goto :goto_a

    .line 275
    :cond_2a
    new-array p0, v0, [F

    fill-array-data p0, :array_30

    return-object p0

    :array_30
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            "FF",
            "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 503
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 504
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static {v0}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    .line 507
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p0

    :goto_18
    move v11, p0

    goto :goto_1f

    :cond_1a
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result p0

    goto :goto_18

    .line 512
    :goto_1f
    invoke-static {v0}, Lcom/google/android/material/carousel/KeylineStateList;->isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_cd

    const/4 p0, -0x1

    if-ne v8, p0, :cond_2b

    goto/16 :goto_cd

    .line 528
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result p0

    sub-int/2addr p0, v8

    .line 531
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 532
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    if-gtz p0, :cond_5d

    .line 534
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5d

    .line 538
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float/2addr v2, p0

    add-float v2, v2, p3

    .line 540
    invoke-static {v0, v2, v11}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    .line 539
    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_5d
    const/4 v3, 0x0

    move v4, v1

    :goto_5f
    if-ge v3, p0, :cond_e0

    .line 549
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    add-int v5, v8, v3

    .line 554
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 555
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float/2addr v4, v10

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_9d

    .line 557
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 559
    invoke-static {v7, v5}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v5

    add-int/lit8 v9, v5, -0x1

    .line 563
    :cond_9d
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    .line 564
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/lit8 v12, v10, -0x1

    add-float v10, v2, v4

    move v13, v11

    move v11, v5

    .line 567
    invoke-static/range {v7 .. v13}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    move v11, v13

    add-int/lit8 v5, p0, -0x1

    if-ne v3, v5, :cond_c7

    cmpl-float v5, p3, v1

    if-lez v5, :cond_c7

    const/4 v12, 0x1

    move/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v14, p4

    .line 578
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    .line 586
    :cond_c7
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_cd
    :goto_cd
    cmpl-float p0, p3, v1

    if-lez p0, :cond_e0

    const/4 v3, 0x1

    move/from16 v4, p2

    move/from16 v1, p3

    move-object/from16 v5, p4

    move v2, v11

    .line 516
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    .line 515
    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e0
    return-object v6
.end method

.method public static isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z
    .registers 4

    .line 355
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_21

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    if-ne v0, p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z
    .registers 5

    .line 371
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 372
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 373
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 376
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p0, v1

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2f

    .line 378
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    if-ne p0, p1, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 236
    invoke-static {p0, p1, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object p1

    const/4 p2, 0x1

    .line 237
    aget p2, p1, p2

    float-to-int p2, p2

    .line 238
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-int v0, v0

    .line 239
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 237
    invoke-static {p2, p0, p1}, Lcom/google/android/material/carousel/KeylineState;->lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method public static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;
    .registers 15

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 741
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 742
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 744
    new-instance v1, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p0

    invoke-direct {v1, p0, p6}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    const/4 p0, 0x0

    move p1, p0

    .line 746
    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_48

    .line 747
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 748
    iget v4, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 p6, 0x40000000    # 2.0f

    div-float p6, v4, p6

    add-float v2, p3, p6

    if-lt p1, p4, :cond_38

    if-gt p1, p5, :cond_38

    const/4 p6, 0x1

    move v5, p6

    goto :goto_39

    :cond_38
    move v5, p0

    .line 753
    :goto_39
    iget v3, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget-boolean v6, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    iget v7, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 754
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p3, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 757
    :cond_48
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method public static shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;
    .registers 7

    .line 385
    sget-object v0, Lcom/google/android/material/carousel/KeylineStateList$1;->$SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_10

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPaddingUncontained(Lcom/google/android/material/carousel/KeylineState;FIZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0

    .line 387
    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPaddingContained(Lcom/google/android/material/carousel/KeylineState;FIZF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method public static shiftKeylineStateForPaddingContained(Lcom/google/android/material/carousel/KeylineState;FIZF)Lcom/google/android/material/carousel/KeylineState;
    .registers 21

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    move/from16 v3, p2

    invoke-direct {v2, v1, v3}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getNumberOfNonAnchorKeylines()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    const/4 v11, 0x0

    if-eqz p3, :cond_21

    move/from16 v3, p1

    goto :goto_22

    :cond_21
    move v3, v11

    :goto_22
    const/4 v12, 0x0

    move v13, v3

    move v14, v12

    .line 445
    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_8a

    .line 446
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 447
    iget-boolean v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v4, :cond_48

    .line 448
    iget v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    move v5, v4

    iget v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    move v6, v5

    iget v5, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/4 v7, 0x1

    iget v8, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move/from16 v15, p4

    goto :goto_87

    .line 459
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    if-lt v14, v4, :cond_57

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v4

    if-gt v14, v4, :cond_57

    const/4 v4, 0x1

    move v6, v4

    goto :goto_58

    :cond_57
    move v6, v12

    .line 462
    :goto_58
    iget v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    sub-float v5, v4, v1

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v4

    move/from16 v15, p4

    .line 464
    invoke-static {v5, v4, v15}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    add-float/2addr v7, v13

    .line 468
    iget v8, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 470
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    if-eqz p3, :cond_79

    move v9, v8

    goto :goto_7a

    :cond_79
    move v9, v11

    :goto_7a
    if-eqz p3, :cond_80

    move v10, v11

    :goto_7d
    move v8, v3

    move v3, v7

    goto :goto_82

    :cond_80
    move v10, v8

    goto :goto_7d

    :goto_82
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    add-float/2addr v13, v5

    :goto_87
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 481
    :cond_8a
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method public static shiftKeylineStateForPaddingUncontained(Lcom/google/android/material/carousel/KeylineState;FIZ)Lcom/google/android/material/carousel/KeylineState;
    .registers 20

    move/from16 v0, p2

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    new-instance v3, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    invoke-direct {v3, v2, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-eqz p3, :cond_1a

    move v13, v12

    goto :goto_20

    .line 401
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    move v13, v4

    :goto_20
    move v14, v12

    .line 402
    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_97

    .line 403
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 404
    iget-boolean v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v5, :cond_44

    if-ne v14, v13, :cond_44

    .line 405
    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    move v6, v5

    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    move v7, v6

    iget v6, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/4 v8, 0x1

    iget v9, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    goto :goto_93

    .line 408
    :cond_44
    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    if-eqz p3, :cond_4b

    add-float v5, v5, p1

    goto :goto_4d

    :cond_4b
    sub-float v5, v5, p1

    :goto_4d
    const/4 v6, 0x0

    if-eqz p3, :cond_53

    move/from16 v10, p1

    goto :goto_54

    :cond_53
    move v10, v6

    :goto_54
    if-eqz p3, :cond_58

    move v11, v6

    goto :goto_5a

    :cond_58
    move/from16 v11, p1

    .line 412
    :goto_5a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v7

    if-lt v14, v7, :cond_69

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v7

    if-gt v14, v7, :cond_69

    move v7, v2

    :goto_67
    move v8, v5

    goto :goto_6b

    :cond_69
    move v7, v12

    goto :goto_67

    .line 414
    :goto_6b
    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v9, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz p3, :cond_7f

    div-float v15, v9, v15

    add-float/2addr v15, v8

    int-to-float v2, v0

    sub-float/2addr v15, v2

    .line 422
    invoke-static {v6, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_87

    :cond_7f
    div-float v2, v9, v15

    sub-float v2, v8, v2

    .line 423
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 420
    :goto_87
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move v6, v8

    move v8, v4

    move v4, v6

    move v6, v9

    move v9, v2

    .line 414
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    :goto_93
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    goto :goto_21

    .line 427
    :cond_97
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method public static shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;
    .registers 10

    .line 713
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v6, p2

    .line 708
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 281
    invoke-static {p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 287
    aget p3, p2, p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_18

    const/4 p3, 0x2

    .line 288
    aget p2, p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    return-object p1

    :cond_18
    const/4 p3, 0x1

    .line 290
    aget p2, p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    return-object p1
.end method

.method public getDefaultState()Lcom/google/android/material/carousel/KeylineState;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method public getEndState()Lcom/google/android/material/carousel/KeylineState;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method public getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    .line 805
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_e
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, p1, :cond_50

    if-eqz p4, :cond_18

    sub-int v7, p1, v3

    sub-int/2addr v7, v6

    goto :goto_19

    :cond_18
    move v7, v3

    :goto_19
    int-to-float v8, v7

    mul-float/2addr v8, v0

    if-eqz p4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v5, v6

    :goto_1f
    int-to-float v5, v5

    mul-float/2addr v8, v5

    int-to-float v5, p3

    .line 813
    iget v9, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float/2addr v5, v9

    cmpl-float v5, v8, v5

    if-gtz v5, :cond_33

    iget-object v5, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 814
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, p1, v5

    if-lt v3, v5, :cond_4d

    .line 816
    :cond_33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 817
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v4, v2, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/carousel/KeylineState;

    .line 815
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_50
    add-int/lit8 p3, p1, -0x1

    move v3, v2

    :goto_53
    if-ltz p3, :cond_92

    if-eqz p4, :cond_5b

    sub-int v4, p1, p3

    sub-int/2addr v4, v6

    goto :goto_5c

    :cond_5b
    move v4, p3

    :goto_5c
    int-to-float v7, v4

    mul-float/2addr v7, v0

    if-eqz p4, :cond_62

    move v8, v5

    goto :goto_63

    :cond_62
    move v8, v6

    :goto_63
    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, p2

    .line 828
    iget v9, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_75

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p3, v7, :cond_8f

    .line 832
    :cond_75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 833
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v3, v2, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    .line 831
    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_8f
    add-int/lit8 p3, p3, -0x1

    goto :goto_53

    :cond_92
    return-object v1
.end method

.method public getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .registers 5

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1
.end method

.method public getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;
    .registers 10

    .line 168
    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v0, p2

    .line 169
    iget v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float v1, p3, v1

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->leftOrTopPaddingShift:F

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->rightOrBottomPaddingShift:F

    .line 182
    iget v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_22

    add-float/2addr v0, v2

    .line 186
    :cond_22
    iget v2, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_29

    sub-float/2addr v1, v3

    :cond_29
    cmpg-float v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_39

    .line 194
    invoke-static {v4, v3, p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 201
    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    goto :goto_45

    :cond_39
    cmpl-float p2, p1, v1

    if-lez p2, :cond_51

    .line 204
    invoke-static {v3, v4, v1, p3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    .line 210
    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 211
    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    :goto_45
    if-eqz p4, :cond_4c

    .line 217
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    .line 219
    :cond_4c
    invoke-static {p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    .line 213
    :cond_51
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object p1
.end method

.method public getStartState()Lcom/google/android/material/carousel/KeylineState;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

###### Class com.google.android.material.carousel.KeylineStateList.AnonymousClass1 (com.google.android.material.carousel.KeylineStateList$1)
.class public synthetic Lcom/google/android/material/carousel/KeylineStateList$1;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 385
    invoke-static {}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/material/carousel/KeylineStateList$1;->$SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I

    :try_start_9
    sget-object v1, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
