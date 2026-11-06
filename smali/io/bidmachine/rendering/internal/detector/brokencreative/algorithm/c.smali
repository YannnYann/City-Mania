###### Class io.bidmachine.rendering.internal.detector.brokencreative.algorithm.c (io.bidmachine.rendering.internal.detector.brokencreative.algorithm.c)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/c;
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
.method public a(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/c;->c(Landroid/graphics/Bitmap;)F

    move-result p1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getThreshold()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3
    :goto_18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;)F
    .registers 16

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

    move-result-object v1

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result v3

    mul-int/2addr v2, v3

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    new-array v5, v3, [I

    .line 7
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    const/4 v12, 0x0

    if-gt v3, v1, :cond_5b

    move v9, v3

    move v3, v12

    move v13, v3

    .line 8
    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 9
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    if-gt p1, v6, :cond_55

    .line 10
    :goto_47
    aget v7, v5, p1

    invoke-virtual {p0, v7}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(I)F

    move-result v7

    add-float/2addr v3, v7

    mul-float/2addr v7, v7

    add-float/2addr v13, v7

    if-eq p1, v6, :cond_55

    add-int/lit8 p1, p1, 0x1

    goto :goto_47

    :cond_55
    if-eq v9, v1, :cond_5d

    add-int/lit8 v9, v9, 0x1

    move-object p1, v4

    goto :goto_2e

    :cond_5b
    move v3, v12

    move v13, v3

    :cond_5d
    int-to-float p1, v2

    div-float/2addr v3, p1

    div-float/2addr v13, p1

    mul-float/2addr v3, v3

    sub-float/2addr v13, v3

    cmpg-float p1, v13, v12

    if-gez p1, :cond_67

    return v12

    :cond_67
    float-to-double v0, v13

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
