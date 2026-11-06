###### Class io.blueflower.stapel2d.util.MathUtil (io.blueflower.stapel2d.util.MathUtil)
.class public final Lio/blueflower/stapel2d/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public static clamp01(F)F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static dist(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    .line 25
    invoke-static {p2, p3}, Lio/blueflower/stapel2d/util/MathUtil;->len(FF)F

    move-result p0

    return p0
.end method

.method public static floorDiv(II)I
    .registers 4

    .line 47
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_b

    mul-int/2addr p1, v0

    if-eq p1, p0, :cond_b

    add-int/lit8 v0, v0, -0x1

    :cond_b
    return v0
.end method

.method public static inRect(IIIIII)Z
    .registers 6

    .line 0
    if-lt p0, p2, :cond_c

    if-lt p1, p3, :cond_c

    add-int/2addr p2, p4

    if-ge p0, p2, :cond_c

    add-int/2addr p3, p5

    if-ge p1, p3, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static len(FF)F
    .registers 2

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 29
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

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

.method public static nextPowerOfTwo(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p0, :cond_6

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_6
    return v0
.end method

.method public static signum(I)I
    .registers 2

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
