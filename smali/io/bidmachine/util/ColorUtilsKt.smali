###### Class io.bidmachine.util.ColorUtilsKt (io.bidmachine.util.ColorUtilsKt)
.class public final Lio/bidmachine/util/ColorUtilsKt;
.super Ljava/lang/Object;
.source "ColorUtils.kt"


# direct methods
.method public static final alphaToRatio(IF)F
    .registers 2

    .line 248
    invoke-static {p0, p1}, Lio/bidmachine/util/ColorUtils;->alphaToRatio(IF)F

    move-result p0

    return p0
.end method

.method public static synthetic alphaToRatio$default(IFILjava/lang/Object;)F
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 248
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/ColorUtilsKt;->alphaToRatio(IF)F

    move-result p0

    return p0
.end method

.method public static final blueToRatio(I)F
    .registers 1

    .line 296
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->blueToRatio(I)F

    move-result p0

    return p0
.end method

.method public static final brightness(I)F
    .registers 3

    .line 233
    invoke-static {p0}, Lio/bidmachine/util/ColorUtilsKt;->redToRatio(I)F

    move-result v0

    invoke-static {p0}, Lio/bidmachine/util/ColorUtilsKt;->greenToRatio(I)F

    move-result v1

    invoke-static {p0}, Lio/bidmachine/util/ColorUtilsKt;->blueToRatio(I)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static final greenToRatio(I)F
    .registers 1

    .line 280
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->greenToRatio(I)F

    move-result p0

    return p0
.end method

.method public static final redToRatio(I)F
    .registers 1

    .line 264
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->redToRatio(I)F

    move-result p0

    return p0
.end method

.method public static final toColorInt(F)I
    .registers 2

    .line 0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
