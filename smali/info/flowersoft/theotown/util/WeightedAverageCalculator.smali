###### Class info.flowersoft.theotown.util.WeightedAverageCalculator (info.flowersoft.theotown.util.WeightedAverageCalculator)
.class public Linfo/flowersoft/theotown/util/WeightedAverageCalculator;
.super Ljava/lang/Object;
.source "WeightedAverageCalculator.java"


# instance fields
.field public valueProduct:F

.field public weightSum:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->clear()V

    return-void
.end method


# virtual methods
.method public addValue(F)V
    .registers 4

    const/high16 v0, -0x3fc00000    # -3.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->addValue(FF)V

    return-void
.end method

.method public addValue(FF)V
    .registers 8

    .line 26
    iget v0, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->valueProduct:F

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->valueProduct:F

    .line 27
    iget p1, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->weightSum:F

    add-float/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->weightSum:F

    return-void
.end method

.method public clear()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->valueProduct:F

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->weightSum:F

    return-void
.end method

.method public getResult()F
    .registers 5

    .line 31
    iget v0, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->valueProduct:F

    float-to-double v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->weightSum:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
