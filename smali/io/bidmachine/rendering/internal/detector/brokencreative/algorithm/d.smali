###### Class io.bidmachine.rendering.internal.detector.brokencreative.algorithm.d (io.bidmachine.rendering.internal.detector.brokencreative.algorithm.d)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/d;
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

.method private final c(Landroid/graphics/Bitmap;)F
    .registers 15

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v4

    mul-int/2addr v3, v4

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    new-array v6, v4, [I

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    if-gt v5, v2, :cond_75

    move v10, v5

    .line 7
    :goto_30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 8
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    if-gt p1, v7, :cond_6f

    .line 9
    :goto_49
    aget v8, v6, p1

    .line 10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_60

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_61

    :cond_60
    move v8, v1

    :goto_61
    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, v7, :cond_6f

    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    :cond_6f
    if-eq v10, v2, :cond_75

    add-int/lit8 v10, v10, 0x1

    move-object p1, v5

    goto :goto_30

    .line 13
    :cond_75
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_85

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_85
    int-to-float p1, v1

    int-to-float v0, v3

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;F)F
    .registers 19

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v4

    mul-int/2addr v3, v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    new-array v6, v4, [I

    .line 16
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v4

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v13

    const/4 v14, 0x1

    if-gt v4, v13, :cond_60

    move v15, v1

    move v10, v4

    move v4, v15

    .line 17
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 18
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    if-gt v5, v7, :cond_5b

    .line 19
    :goto_48
    aget v8, v6, v5

    if-nez v4, :cond_4f

    move v15, v8

    move v4, v14

    goto :goto_56

    :cond_4f
    if-ne v8, v15, :cond_54

    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    :cond_54
    add-int/lit8 v4, v4, -0x1

    :goto_56
    if-eq v5, v7, :cond_5b

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_5b
    if-eq v10, v13, :cond_62

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_60
    move v4, v1

    move v15, v4

    :cond_62
    int-to-float v4, v4

    int-to-float v3, v3

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float v5, v5, p2

    int-to-float v7, v14

    sub-float/2addr v5, v7

    mul-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_71

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_71
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v4

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    if-gt v4, v2, :cond_a6

    move v10, v4

    .line 35
    :goto_7c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 36
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v4

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v5

    if-gt v4, v5, :cond_a1

    .line 37
    :goto_96
    aget v7, v6, v4

    if-ne v7, v15, :cond_9c

    add-int/lit8 v1, v1, 0x1

    :cond_9c
    if-eq v4, v5, :cond_a1

    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    :cond_a1
    if-eq v10, v2, :cond_a6

    add-int/lit8 v10, v10, 0x1

    goto :goto_7c

    :cond_a6
    int-to-float v0, v1

    div-float/2addr v0, v3

    return v0
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

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_18

    .line 3
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/d;->a(Landroid/graphics/Bitmap;F)F

    move-result p1

    goto :goto_1c

    .line 5
    :cond_18
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/d;->c(Landroid/graphics/Bitmap;)F

    move-result p1

    :goto_1c
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 8
    :goto_23
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
