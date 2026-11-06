###### Class io.bidmachine.rendering.internal.detector.brokencreative.algorithm.e (io.bidmachine.rendering.internal.detector.brokencreative.algorithm.e)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;
.super Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)V
    .registers 3

    const-string v0, "algorithmParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;-><init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)V

    return-void
.end method


# virtual methods
.method public final a(II)F
    .registers 6

    .line 58
    invoke-static {p1}, Lio/bidmachine/util/ColorUtils;->redToRatio(I)F

    move-result v0

    invoke-static {p2}, Lio/bidmachine/util/ColorUtils;->redToRatio(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 59
    invoke-static {p1}, Lio/bidmachine/util/ColorUtils;->greenToRatio(I)F

    move-result v1

    invoke-static {p2}, Lio/bidmachine/util/ColorUtils;->greenToRatio(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 60
    invoke-static {p1}, Lio/bidmachine/util/ColorUtils;->blueToRatio(I)F

    move-result p1

    invoke-static {p2}, Lio/bidmachine/util/ColorUtils;->blueToRatio(I)F

    move-result p2

    sub-float/2addr p1, p2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p1, v0

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getThreshold()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;->a(Landroid/graphics/Bitmap;F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getThreshold()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 7
    :goto_2c
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;F)Ljava/lang/Float;
    .registers 23

    move-object/from16 v0, p0

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-static {v9, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-static {v9, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 10
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v11, 0x0

    if-gtz v2, :cond_22

    return-object v11

    .line 14
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    new-array v3, v3, [I

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    new-array v12, v4, [F

    int-to-float v13, v2

    mul-float v14, p2, v13

    .line 19
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v15

    const/4 v1, 0x0

    if-gt v2, v15, :cond_e0

    move/from16 v16, v1

    move v6, v2

    .line 21
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v2, v3

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    invoke-virtual {v10}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v10}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    if-gt v3, v4, :cond_d1

    move-object v5, v11

    .line 23
    :goto_5b
    aget v7, v2, v3

    invoke-virtual {v0, v7}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->b(I)I

    move-result v7

    add-int/lit8 v8, v6, -0x1

    .line 25
    invoke-virtual {v0, v1, v3, v8}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Landroid/graphics/Bitmap;II)I

    move-result v8

    add-int/lit8 v11, v6, 0x1

    .line 26
    invoke-virtual {v0, v1, v3, v11}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Landroid/graphics/Bitmap;II)I

    move-result v11

    if-ne v6, v9, :cond_74

    .line 29
    invoke-virtual {v0, v7, v8}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;->a(II)F

    move-result v8

    goto :goto_76

    .line 31
    :cond_74
    aget v8, v12, v3

    .line 33
    :goto_76
    invoke-virtual {v0, v7, v11}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;->a(II)F

    move-result v11

    .line 34
    aput v11, v12, v3

    add-float/2addr v8, v11

    move-object/from16 v17, v10

    float-to-double v9, v8

    const-wide v18, 0x3fc999999999999aL    # 0.2

    cmpl-double v8, v9, v18

    if-lez v8, :cond_8a

    goto :goto_b0

    :cond_8a
    add-int/lit8 v8, v3, -0x1

    .line 39
    invoke-virtual {v0, v1, v8, v6}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Landroid/graphics/Bitmap;II)I

    move-result v8

    add-int/lit8 v9, v3, 0x1

    .line 40
    invoke-virtual {v0, v1, v9, v6}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Landroid/graphics/Bitmap;II)I

    move-result v9

    if-eqz v5, :cond_9d

    .line 42
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_a1

    .line 43
    :cond_9d
    invoke-virtual {v0, v7, v8}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;->a(II)F

    move-result v5

    .line 44
    :goto_a1
    invoke-virtual {v0, v7, v9}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;->a(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    add-float/2addr v5, v7

    float-to-double v9, v5

    cmpl-double v5, v9, v18

    if-lez v5, :cond_b5

    move-object v5, v8

    :goto_b0
    add-int/lit8 v16, v16, 0x1

    :goto_b2
    move/from16 v7, v16

    goto :goto_b7

    :cond_b5
    move-object v5, v8

    goto :goto_b2

    :goto_b7
    int-to-float v8, v7

    cmpl-float v8, v8, v14

    if-lez v8, :cond_c3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_c3
    if-eq v3, v4, :cond_ce

    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v7

    move-object/from16 v10, v17

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto :goto_5b

    :cond_ce
    move/from16 v16, v7

    goto :goto_d3

    :cond_d1
    move-object/from16 v17, v10

    :goto_d3
    if-eq v6, v15, :cond_de

    add-int/lit8 v6, v6, 0x1

    move-object v3, v2

    move-object/from16 v10, v17

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3f

    :cond_de
    move/from16 v1, v16

    :cond_e0
    int-to-float v1, v1

    div-float/2addr v1, v13

    .line 57
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method
