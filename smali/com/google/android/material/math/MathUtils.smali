###### Class com.google.android.material.math.MathUtils (com.google.android.material.math.MathUtils)
.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static areAllElementsEqual([F)Z
    .registers 6

    .line 111
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    .line 114
    aget v2, p0, v0

    move v3, v1

    .line 115
    :goto_9
    array-length v4, p0

    if-ge v3, v4, :cond_16

    .line 116
    aget v4, p0, v3

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_13

    return v0

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    return v1
.end method

.method public static dist(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    .line 32
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .registers 7

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v0

    .line 69
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p3

    .line 70
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p4

    .line 71
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p0

    .line 67
    invoke-static {v0, p3, p4, p0}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    move-result p0

    return p0
.end method

.method public static lerp(FFF)F
    .registers 4

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FFFF)F
    .registers 5

    .line 0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_d

    cmpl-float v0, p0, p2

    if-lez v0, :cond_d

    cmpl-float v0, p0, p3

    if-lez v0, :cond_d

    return p0

    :cond_d
    cmpl-float p0, p1, p2

    if-lez p0, :cond_16

    cmpl-float p0, p1, p3

    if-lez p0, :cond_16

    return p1

    :cond_16
    cmpl-float p0, p2, p3

    if-lez p0, :cond_1b

    return p2

    :cond_1b
    return p3
.end method
